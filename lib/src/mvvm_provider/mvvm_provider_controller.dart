import 'package:flutter/material.dart';
import 'package:mvvm_test/src/model/model.dart';

class MVVMProviderController extends ChangeNotifier {
  late Model _model;
  MVVMProviderController() {
    _model = Model();
  }

  int get count => _model.counter;

  void update() {
    notifyListeners();
  }

  void incrementCounter() {
    _model.incrementCounter();
    update();
  }

  void decreamentCounter() {
    _model.decrementCounter();
    update();
  }
}
