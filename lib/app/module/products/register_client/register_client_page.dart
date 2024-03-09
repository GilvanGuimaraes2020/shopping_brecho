import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:postgres/postgres.dart';
import 'package:shopping_brecho/app/component/brecho_buttons.dart';
import 'package:shopping_brecho/app/component/brecho_floating_dock.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/module/products/register_client/register_client_controller.dart';
import 'package:shopping_brecho/app/utils/snackbar/snackbar.dart';

class RegisteClientPage extends StatefulWidget {
  @override
  State<RegisteClientPage> createState() => _RegisterClientPage();
}

class _RegisterClientPage extends State<RegisteClientPage> {
  final controller = Modular.get<RegisterClientController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar cliente'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(children: [
            BrechoTextField(
              label: 'Nome do cliente',
              controller: controller.customerNameCtl,
              onChanged: controller.setOnChangeCustomerName,
              validator: controller.validateName,
              autoValidateAlways: controller.autoValidateAlways,
              autovalidate: controller.nameIsValid,
              textInputType: TextInputType.name,
            ),
            const SizedBox(
              height: BrechoSpacing.xvi,
            ),
            BrechoTextField(
              label: 'Telefone do cliente',
              controller: controller.customerPhoneCtl,
              onChanged: controller.setOnChangeCustomerPhone,
              validator: controller.validatePhone,
              autoValidateAlways: controller.autoValidateAlways,
              autovalidate: controller.phoneIsValid,
            ),
            const SizedBox(
              height: BrechoSpacing.xvi,
            ),
            BrechoTextField(
              label: 'Endereço do cliente',
              controller: controller.customerAddressCtl,
              onChanged: controller.setOnChangeCustomerAddress,
              validator: controller.validateAddress,
              autoValidateAlways: controller.autoValidateAlways,
              autovalidate: controller.addressIsValid,
            ),
            const SizedBox(
              height: BrechoSpacing.xvi,
            ),
            BrechoTextField(
              label: 'Bairro',
              controller: controller.customerNeighborhoodCtl,
              onChanged: controller.setOnChangeCustomerNeighborhood,
              validator: controller.validateNeighborhood,
              autoValidateAlways: controller.autoValidateAlways,
              autovalidate: controller.neighborhoodIsValid,
            ),
            const SizedBox(
              height: BrechoSpacing.xvi,
            ),
            BrechoTextField(
              label: 'Numero',
              controller: controller.customerNumberCtl,
              onChanged: controller.setOnChangeCustomerNumber,
              textInputType: TextInputType.phone,
            ),
            const SizedBox(
              height: BrechoSpacing.xvi,
            ),
            BrechoTextField(
              label: 'Observação',
              maxLines: 5,
              controller: controller.customerObservationCtl,
              onChanged: controller.setOnChangeCustomerObservation,
            ),
            const SizedBox(
              height: BrechoSpacing.clx,
            )
          ]),
        ),
      ),
      floatingActionButton: BrechoFloatingDock(children: [
        Expanded(
            child: BrechoOutlineButton(
                label: 'Cancelar', onPressed: () => Modular.to.pop())),
        const SizedBox(
          width: BrechoSpacing.xvi,
        ),
        Expanded(
            child: BrechoPrimaryButton(
                label: 'Adicionar',
                onPressed: () async {
                  controller.autoValidateAlways = false;
                  if (controller.formIsValid) {
                    final result = await controller.addCustomer();
                    result.maybeWhen(
                        success: (data) {
                          Modular.to.pop();
                          BrechoSnackbar.show(
                              text: "Adicionado com sucesso!",
                              brechoSnackbarStatus:
                                  BrechoSnackbarStatus.success);
                        },
                        error: (error) {
                          String text = "Erro ao adicionar cliente!";
                          if (error is PostgreSQLException) {
                            text = error.message ?? '';
                          }
                          BrechoSnackbar.show(
                              text: text,
                              brechoSnackbarStatus: BrechoSnackbarStatus.error);
                        },
                        orElse: () => BrechoSnackbar.show(
                            text: "Erro ao adicionar cliente!",
                            brechoSnackbarStatus: BrechoSnackbarStatus.error));
                  } else {
                    BrechoSnackbar.show(
                        text: 'Há cammpos invalidos!',
                        brechoSnackbarStatus: BrechoSnackbarStatus.error);
                  }
                }))
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
