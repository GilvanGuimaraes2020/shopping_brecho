// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_buy_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterBuyController on _RegisterBuyControllerBase, Store {
  Computed<List<String>?>? _$titlesComputed;

  @override
  List<String>? get titles =>
      (_$titlesComputed ??= Computed<List<String>?>(() => super.titles,
              name: '_RegisterBuyControllerBase.titles'))
          .value;
  Computed<List<String>?>? _$subtitlesComputed;

  @override
  List<String>? get subtitles =>
      (_$subtitlesComputed ??= Computed<List<String>?>(() => super.subtitles,
              name: '_RegisterBuyControllerBase.subtitles'))
          .value;
  Computed<List<ClientModel>>? _$listClientComputed;

  @override
  List<ClientModel> get listClient => (_$listClientComputed ??=
          Computed<List<ClientModel>>(() => super.listClient,
              name: '_RegisterBuyControllerBase.listClient'))
      .value;

  late final _$clientAtom =
      Atom(name: '_RegisterBuyControllerBase.client', context: context);

  @override
  Client get client {
    _$clientAtom.reportRead();
    return super.client;
  }

  @override
  set client(Client value) {
    _$clientAtom.reportWrite(value, super.client, () {
      super.client = value;
    });
  }

  late final _$getClientsAsyncAction =
      AsyncAction('_RegisterBuyControllerBase.getClients', context: context);

  @override
  Future<void> getClients() {
    return _$getClientsAsyncAction.run(() => super.getClients());
  }

  @override
  String toString() {
    return '''
client: ${client},
titles: ${titles},
subtitles: ${subtitles},
listClient: ${listClient}
    ''';
  }
}
