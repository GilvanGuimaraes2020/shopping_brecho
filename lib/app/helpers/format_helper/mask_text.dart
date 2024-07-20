import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/services.dart';

MaskedTextController maskedDate() => MaskedTextController(mask: '00/00/0000');
MaskedTextController maskedMoney() =>
    MaskedTextController(mask: '####.##', translator: {'#': RegExp('[0-9]?')});

const maskGeneric = '************************';

const maskCelPhone = '(00) 00000-0000';

class MaskedPhoneNumber extends MaskedTextController {
  MaskedPhoneNumber() : super(mask: maskGeneric) {
    addListener(_listen);
  }

  String _maskedNewText = '';

  void _listen() {
    super.updateMask(maskCelPhone, shouldUpdateValue: true);
    _maskedNewText = super.text.replaceAll('+55', '');

    super.selection =
        TextSelection.fromPosition(TextPosition(offset: super.text.length));
  }

  @override
  set text(String newText) {
    _maskedNewText = newText;
    if (newText != super.text) {
      if (super.text.length > newText.length) {
        _listen();
      }
      super.text = _maskedNewText;
    }
  }
}
