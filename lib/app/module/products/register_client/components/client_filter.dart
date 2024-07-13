import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:shopping_brecho/app/core/models/client_model/client_model.dart';

class ClientFilter extends StatefulWidget {
  final List<ClientModel> clients;
  const ClientFilter({super.key, required this.clients});

  @override
  State<ClientFilter> createState() => _ClientFilterState();
}

class _ClientFilterState extends State<ClientFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clientes')),
      body: CustomScrollView(
        slivers: List.generate(
            widget.clients.length,
            (index) => SliverToBoxAdapter(
                  child: _ClientCard(client: widget.clients[index]),
                )),
      ),
    );
  }
}

class _ClientCard extends StatelessWidget {
  final ClientModel client;
  const _ClientCard({required this.client});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border:
                const Border(bottom: BorderSide(color: BrechoColors.neutral5)),
            color: BrechoColors.neutral6),
        child: Padding(
          padding: const EdgeInsets.all(BrechoSpacing.xvi),
          child: Row(
            children: [
              Column(
                children: [
                  Text(client.name ?? ''),
                  const SizedBox(
                    height: BrechoSpacing.iv,
                  ),
                  Text(client.address ?? '')
                ],
              ),
              InkWell(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: BrechoSpacing.viii, right: BrechoSpacing.iv),
                      child: Text(client.phone ?? ''),
                    ),
                    const Icon(Icons.whatshot)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
