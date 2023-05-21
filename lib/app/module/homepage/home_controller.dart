import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/interfaces/account_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/remote_config_interface.dart';
import 'package:shopping_brecho/app/core/models/account_alert_model/account_alert_model.dart';
import 'package:shopping_brecho/app/core/models/account_register_model/account_register_model.dart';
import 'package:shopping_brecho/app/core/models/label_value_model/label_value_model.dart';
import 'package:shopping_brecho/app/helpers/format_helper/format_helper.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final IAccountRepositoy _repository;
  final IRemoteConfig _rcService;

  _HomeControllerBase(this._repository, this._rcService);

  @observable
  bool? connect;

  @observable
  AccountAlert accountAlert = AccountAlert.none();

  @observable
  AccountRegister accountRegister = AccountRegister.none();

  @observable
  AccountRegister accountRegisterFiltered = AccountRegister.none();

  @observable
  List<double?> totalCategoryAccount = [];

  @observable
  List<LabelValueModel>? categories = [];

  @action
  void init() {
    getAccountAlert();
    getMovementAccountControl();
    getMovementAccountRegister();
    getCategory();
  }

  @action
  Future<void> getAccountAlert() async {
    accountAlert = await _repository.getAccountAlert();
  }

  @action
  Future<void> getMovementAccountControl() async {
    await _repository.getMovementAccountControl();
  }

  @action
  Future<void> getMovementAccountRegister() async {
    accountRegister = AccountRegister.loading();
    final String catalogDate = DateFormat('yyyy_MM').format(DateTime.now());
    accountRegister = await _repository.getMovementAccountRegister(catalogDate);
  }

  @action
  void getCategory() {
    categories = [...?_rcService.getCategory()];
  }

  @action
  Future<void> onFilter(
      String startDate, String endDate, String keyword) async {
    accountRegister = AccountRegister.loading();
    final Map<String, dynamic> query = {
      'collection_ref': [
        FormatHelper.parseStringDateToCollectionRef(startDate),
        FormatHelper.parseStringDateToCollectionRef(endDate)
      ],
      'keyword': keyword
    };
    accountRegister = await _repository.getAccountRegisterFilter(query);
  }

  @computed
  List<AccountAlertModel> get accountAlertList =>
      accountAlert.maybeWhen(data: (data) => data, orElse: () => []);

  @computed
  List<AccountRegisterModel> get accountRegisterModel =>
      accountRegister.maybeWhen(
          data: (data) {
            final List<AccountRegisterModel> listAccountRegisterModel = [];
            if (categories != null) {
              for (final e in categories!) {
                final joinRegisters = data
                    .where((element) => element.typeName == e.value)
                    .toList();

                if (joinRegisters.isNotEmpty) {
                  listAccountRegisterModel.add(AccountRegisterModel(
                      typeName: e.value,
                      registers: joinRegisters
                          .expand((e) => e.registers!.map((element) => element))
                          .toList()));
                }
              }

              return listAccountRegisterModel;
            }
            return [];
          },
          orElse: () => []);

  @computed
  String? get registersTotal => accountRegister.maybeWhen(
      data: (_) {
        final totalRegistersValue = accountRegisterModel
            .map((e) => e.registers!.map((e) => e.accountValue))
            .expand((element) => element)
            .toList();

        return totalRegistersValue
            .reduce((value, element) => value! + element!)
            ?.toStringAsFixed(2);
      },
      orElse: () => null);

  @computed
  List<String?> get totalCategory => accountRegisterModel
      .map((e) => e.registers!
          .map((e) => e.accountValue)
          .reduce((value, element) => value! + element!)
          ?.toStringAsFixed(2))
      .toList();
}
