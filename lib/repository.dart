
import 'package:state_notifier_test/model.dart';

abstract class Repository {
  Future<List<Model>> fetch();
}