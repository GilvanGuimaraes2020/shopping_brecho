import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/core/interfaces/account_repository_interface.dart';
import 'package:shopping_brecho/app/core/interfaces/remote_config_interface.dart';
import 'package:shopping_brecho/app/core/models/account_alert_model/account_alert_model.dart';
import 'package:shopping_brecho/app/core/models/account_register_model/account_register_model.dart';
import 'package:shopping_brecho/app/core/models/label_value_model/label_value_model.dart';
import 'package:shopping_brecho/app/helpers/format_helper/format_helper.dart';
import 'package:shopping_brecho/app/helpers/validator_helper/validator_helper.dart';
import 'package:shopping_brecho/app/utils/snackbar/snackbar.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final IAccountRepositoy _repository;
  final IRemoteConfig _rcService;

  _HomeControllerBase(this._repository, this._rcService);

  final TextEditingController startDateCtl =
      MaskedTextController(mask: '00/0000');
  final TextEditingController endDateCtl =
      MaskedTextController(mask: '00/0000');
  final TextEditingController keywordCtl = TextEditingController();

  @observable
  bool validateAlways = false;

  @observable
  bool? connect;

  @observable
  AccountAlert accountAlert = AccountAlert.none();

  @observable
  AccountRegister accountRegister = const AccountRegister.none();

  @observable
  AccountRegister accountRegisterFiltered = const AccountRegister.none();

  @observable
  List<double?> totalCategoryAccount = [];

  @observable
  List<LabelValueModel>? categories = [];

  @observable
  String? startDate;

  @observable
  String? endDate;

  @observable
  String? keyword;

  @action
  void init() {
    getAccountAlert();
    getMovementAccountControl();
    getMovementAccountRegister();
    getCategory();
  }

  @action
  void setAutoValidateAlways(dynamic value) {
    validateAlways = value as bool;
  }

  @action
  void setStartDate(dynamic value) {
    startDate = value as String;
  }

  @action
  void setEndDate(String value) {
    endDate = value.trim();
  }

  @action
  void setKeyword(String value) {
    keyword = value.trim();
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
    accountRegister = const AccountRegister.loading();
    final String catalogDate = DateFormat('yyyy_MM').format(DateTime.now());
    accountRegister = await _repository.getMovementAccountRegister(catalogDate);
  }

  @action
  void getCategory() {
    categories = [...?_rcService.getCategory()];
  }

  @action
  Future<void> onFilter() async {
    accountRegister = const AccountRegister.loading();
    final Map<String, dynamic> query = {
      'collection_ref': [
        FormatHelper.parseStringDateToCollectionRef(startDate ?? ''),
        FormatHelper.parseStringDateToCollectionRef(endDate ?? '')
      ],
      'keyword': keyword
    };
    accountRegister = await _repository.getAccountRegisterFilter(query);
  }

  @action
  bool onAccordeonAction() {
    setAutoValidateAlways(true);
    if (!formIsValid) {
      BrechoSnackbar.show(
          text: 'Informe datas válidas!',
          brechoSnackbarStatus: BrechoSnackbarStatus.warning);
      return false;
    }
    onFilter();

    return true;
  }

  @action
  String? validateEndDate(String? value) {
    return endDateIsValid ? null : ValidatorHelper.endDateText;
  }

  @action
  String? validateStartDate(String? value) {
    return startDateIsValid ? null : ValidatorHelper.startDateText;
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

  @computed
  bool get endDateIsValid =>
      ValidatorHelper.dateMonthYearIsValid(endDate) || endDate.isNullOrEmpty();

  @computed
  bool get startDateIsValid => ValidatorHelper.dateMonthYearIsValid(startDate);

  @computed
  bool get formIsValid => endDateIsValid && startDateIsValid;
}
