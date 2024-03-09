import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/brecho_empty_state.dart';

class UnavailablePage extends StatelessWidget {
  const UnavailablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página indisponivel').labelSmallRegular(),
      ),
      body: FutureBuilder(
          future: Modular.to.maybePop(),
          builder: (context, value) {
            final canPop = (value.data as bool?) ?? false;
            if (canPop) {
              return BrechoEmptyState(
                  title: 'Oops!',
                  description: 'Pagina indisponivel',
                  buttonTitle: 'Voltar',
                  onPressed: () => Modular.to.pop());
            }
            return const BrechoEmptyState.withoutActions();
          }),
    );
  }
}
