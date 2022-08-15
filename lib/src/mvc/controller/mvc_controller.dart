import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:mvvm_test/src/model/model.dart';

class MVCController extends ControllerMVC {
  factory MVCController([StateMVC? state]) => _this ??= MVCController._(state);

  MVCController._(StateMVC? state)
      : model = Model(),
        super(state);

  static MVCController? _this;
  final Model model;

  void update() => setState(() {});

  void incrementCounter() {
    model.incrementCounter();
    update();
  }

  void decreamentCounter() {
    model.decrementCounter();
    update();
  }
}
