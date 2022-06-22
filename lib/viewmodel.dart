
import 'package:state_notifier/state_notifier.dart';
import 'package:state_notifier_test/repository.dart';

class MyState {
  MyState(this.count);
  final int count;
}

class MyStateNotifier extends StateNotifier<MyState> with LocatorMixin {
  MyStateNotifier() : super(MyState(0));
  Repository get _repo => read();

  void increment() async {
    state = MyState(state.count + 1000);
    final x = await _repo.fetch();
    print(x);
  }
}