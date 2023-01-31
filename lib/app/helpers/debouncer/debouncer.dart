import 'dart:async';

import 'package:flutter/material.dart';

class Debouncer {
  final int miliseconds;
  Timer? _timer;

  Debouncer({required this.miliseconds});

  void run(VoidCallback action) {
    if (_timer?.isActive ?? false) _timer?.cancel();
    _timer = Timer(Duration(milliseconds: miliseconds), action);
  }

  void cancel(){
    _timer?.cancel();
  }
}
