import 'package:extended_masked_text/extended_masked_text.dart';

MaskedTextController maskedDate() => MaskedTextController(mask: '00/00/0000');
MaskedTextController maskedMoney() =>
    MaskedTextController(mask: '####.##', translator: {'#': RegExp('[0-9]?')});
