import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/component/brecho_buttons.dart';
import 'package:shopping_brecho/app/component/brecho_select_modal_field.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/component/brecho_text_top_down.dart';
import 'package:shopping_brecho/app/core/models/register_sale/sale_payment_type/sale_payment_type_model.dart';

class AddPaymentWidget extends StatefulWidget {
  final List<String> selectItems;
  final Function(List<SalePaymentTypeModel>) onSelect;
  final Function(bool) onValidation;

  const AddPaymentWidget({
    required this.selectItems,
    required this.onSelect,
    required this.onValidation,
  });

  @override
  State<AddPaymentWidget> createState() => _AddPaymentWidgetState();
}

class _AddPaymentWidgetState extends State<AddPaymentWidget> {
  List<double> qtyInstallments = [1];
  List<bool> isCreditCard = [false];
  int paymentTotal = 1;
  List<SalePaymentTypeModel> paymentTypeModel = [];
  ValueNotifier notify = ValueNotifier<int>(0);

  void addNotify() {
    notify.value = notify.value + 1;
  }

  dynamic changeSale(int index, String? value) {
    final paymentCurrent = paymentTypeModel[index]
        .copyWith(value: double.tryParse(value ?? '0') ?? 0);
    paymentTypeModel[index] = paymentCurrent;
    addNotify();
  }

  dynamic changeInstallment(int index, String? value) {
    setState(() {
      final paymentCurrent = paymentTypeModel[index]
          .copyWith(installment: int.tryParse(value ?? '1') ?? 1);
      paymentTypeModel[index] = paymentCurrent;
    });
    addNotify();
  }

  dynamic setSelectItem(int index, dynamic value) {
    setState(() {
      isCreditCard[index] = widget.selectItems[value as int] == 'Crédito';
      final paymentCurrent = paymentTypeModel[index].copyWith(
          paymentType: value.toString(), isCreditCard: isCreditCard[index]);
      paymentTypeModel[index] = paymentCurrent;
    });
    addNotify();
  }

  @override
  void initState() {
    super.initState();
    paymentTypeModel.add(SalePaymentTypeModel());
    notify.addListener(() {
      widget.onSelect.call(paymentTypeModel);
      widget.onValidation.call(paymentTypeModel.every((e) =>
          e.paymentType != null &&
          ((e.isCreditCard && e.installment > 0) || !e.isCreditCard) &&
          e.value > 1));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      ...List.generate(paymentTotal, (index) {
        return _AddPaymentComponents(
            index: index,
            isCreditCard: isCreditCard[index],
            changeSale: changeSale,
            changeInstallment: changeInstallment,
            selectItems: widget.selectItems,
            setSelectItem: setSelectItem);
      }),
      Row(
        children: [
          Expanded(
            child: BrechoPrimaryButton(
                label: '+ pagamento',
                onPressed: () => setState(() {
                      isCreditCard.add(false);
                      qtyInstallments.add(1);
                      paymentTypeModel.add(SalePaymentTypeModel());
                      paymentTotal++;
                    })),
          ),
          if (paymentTotal > 1) ...{
            const SizedBox(
              width: BrechoSpacing.xii,
            ),
            Expanded(
                child: BrechoDangerButton(
                    label: '- pagamento',
                    onPressed: () => setState(() {
                          qtyInstallments.removeLast();
                          isCreditCard.removeLast();
                          paymentTypeModel.removeLast();
                          paymentTotal--;
                          addNotify();
                        })))
          }
        ],
      )
    ]);
  }
}

class _AddPaymentComponents extends StatelessWidget {
  final bool isCreditCard;
  final int index;
  final Function(int, String?) changeSale;
  final Function(int, String?) changeInstallment;
  final Function(int, dynamic) setSelectItem;
  final List<String> selectItems;

  const _AddPaymentComponents({
    required this.index,
    this.isCreditCard = false,
    required this.changeSale,
    required this.changeInstallment,
    required this.selectItems,
    required this.setSelectItem,
  });

  @override
  Widget build(BuildContext context) {
    final String complementName = index > 0 ? ' ${index + 1}' : '';

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: BrechoTextField(
                label: 'valor$complementName',
                prefixText: 'R\$ ',
                textInputType: TextInputType.number,
                onChanged: (p0) => changeSale.call(index, p0),
              ),
            ),
            if (isCreditCard) ...{
              const SizedBox(width: BrechoSpacing.xvi),
              Expanded(
                child: BrechoTextTopDown(
                    label: 'Parcelas$complementName',
                    onTap: (p0) => changeInstallment.call(index, p0)),
              ),
            },
          ],
        ),
        const SizedBox(
          height: BrechoSpacing.xvi,
        ),
        BrechoSelectModalField(
          onSelectItem: (p0) => setSelectItem.call(index, p0),
          label: 'Tipo de pagamento$complementName',
          selectItems: selectItems,
          selectTitle: 'Tipo de pagamento$complementName',
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: BrechoSpacing.xii),
          child: Divider(),
        )
      ],
    );
  }
}
