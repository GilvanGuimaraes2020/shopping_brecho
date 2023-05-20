//ignore_for_file:avoid_classes_with_only_static_members

class ValidatorHelper{

  static const requiredText = 'Campo obrigatorio';
  static const dateText = 'Data invalida';
  static const moneyText = 'Valor invalido';

static bool moneyIsValid(String? value){
  final regex = RegExp('[0-9]*\\.[0-9]{2}');
  return regex.hasMatch(value ?? '') ;
} 
static bool dateIsValid(String? value){
  final regex = RegExp('[\\d]{2}/[\\d]{2}/[\\d]{4}');
  return regex.hasMatch(value ?? '') ;
} 
static bool textIsValid(String? value){
  return value?.isNotEmpty ?? false;
} 
}
