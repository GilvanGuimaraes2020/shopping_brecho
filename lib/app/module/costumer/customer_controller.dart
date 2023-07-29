import 'package:mobx/mobx.dart';
import 'package:shopping_brecho/app/helpers/validator_helper/validator_helper.dart';

part 'customer_controller.g.dart';

class CustomerController = _CustomerControllerBase with _$CustomerController;

abstract class _CustomerControllerBase with Store {
  _CustomerControllerBase();

  @observable
  String? name;

  @observable
  String? phone;

  @observable
  String? address;

  @observable
  String? neighborhood;

  @observable
  String? number;

  @action
  void setName(dynamic value) {
    name = value as String;
  }

  @action
  void setPhone(dynamic value) {
    phone = value as String;
  }

  @action
  void setAddress(dynamic value) {
    address = value as String;
  }

  @action
  void setNeighborhood(dynamic value) {
    neighborhood = value as String;
  }

  @action
  void setNumber(dynamic value) {
    number = value as String;
  }

  @action
  Map<String, dynamic> saveCustomer() {
    return {
      'name': name,
      'address': address,
      'phone': phone,
      'number': number,
      'neighborhood': neighborhood,
    };
  }

  @action
  String? nameValidated(dynamic value) =>
      nameIsValid ? null : ValidatorHelper.requiredText;

  @action
  String? addressValidated(dynamic value) =>
      nameIsValid ? null : ValidatorHelper.requiredText;

  @computed
  bool get nameIsValid => name != null;

  @computed
  bool get addressIsValid => address != null;

  @computed
  bool get formIsValid {
    return nameIsValid && addressIsValid;
  }
}
