import 'package:get/get.dart';
import 'package:mvvm_test/src/model/model.dart';

class MVVMGetxController extends GetxController {
  late Model model;
  RxInt count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    model = Model();
  }

  void incrementCounter() {
    model.incrementCounter();
    count(model.counter);
  }

  void decreamentCounter() {
    model.decrementCounter();
    count(model.counter);
  }
}
