
enum AccountBankEnum{
  capitalTurnover('CAPITAL_TURNOVER'),
  bankBradesco('BANK_BRADESCO'),
  invoiceSantander('INVOICE_SANTANDER'),
  undefined('');

  final String type;


  const AccountBankEnum(this.type);

}

extension AccountBankEnumExtension on AccountBankEnum{
  String? label(){
    switch (this) {
      case AccountBankEnum.capitalTurnover:
        return 'Capital de giro';
      case AccountBankEnum.bankBradesco:
        return 'Banco Bradesco';
      case AccountBankEnum.invoiceSantander:
        return 'Fatura Santander';
      case AccountBankEnum.undefined:
      default:
      return null;

    }
  }
}
