import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_brecho/app/component/brecho_text_field.dart';
import 'package:shopping_brecho/app/module/costumer/customer_controller.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  final controller = Modular.get<CustomerController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro de clientes"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
              padding: const EdgeInsets.only(
                  top: BrechoSpacing.viii,
                  left: BrechoSpacing.xxiv,
                  right: BrechoSpacing.xxiv),
              sliver: SliverToBoxAdapter(
                child: BrechoTextField(
                  label: 'Nome',
                  onChanged: controller.setName,
                ),
              )),
          SliverPadding(
              padding: const EdgeInsets.only(
                  top: BrechoSpacing.viii,
                  left: BrechoSpacing.xxiv,
                  right: BrechoSpacing.xxiv),
              sliver: SliverToBoxAdapter(
                child: BrechoTextField(
                  label: 'Endereço',
                  onChanged: controller.setAddress,
                ),
              )),
          SliverPadding(
              padding: const EdgeInsets.only(
                  top: BrechoSpacing.viii,
                  left: BrechoSpacing.xxiv,
                  right: BrechoSpacing.xxiv),
              sliver: SliverToBoxAdapter(
                child: BrechoTextField(
                  label: 'Bairro',
                  onChanged: controller.setNeighborhood,
                ),
              )),
          SliverPadding(
              padding: const EdgeInsets.only(
                  top: BrechoSpacing.viii,
                  left: BrechoSpacing.xxiv,
                  right: BrechoSpacing.xxiv),
              sliver: SliverToBoxAdapter(
                child: BrechoTextField(
                  label: 'Numero',
                  onChanged: controller.setNumber,
                ),
              )),
          SliverPadding(
              padding: const EdgeInsets.only(
                  top: BrechoSpacing.viii,
                  left: BrechoSpacing.xxiv,
                  right: BrechoSpacing.xxiv),
              sliver: SliverToBoxAdapter(
                child: BrechoTextField(
                  label: 'Fone',
                  onChanged: controller.setPhone,
                ),
              )),
           SliverPadding(
            padding:const EdgeInsets.only(
              right: BrechoSpacing.xxiv,
              left: BrechoSpacing.xxiv,
            ),
            sliver: TextButton(
                onPressed:
                (){
                  if(controller.formIsValid){
                    Navigator.of(context).pop(controller.saveCustomer());
                  }
                },
                child:const  Center(
                  child: Text('data'),
                )),
          )
        ],
      ),
    );
  }
}
