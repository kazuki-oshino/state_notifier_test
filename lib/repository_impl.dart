
import 'package:state_notifier_test/model.dart';
import 'package:state_notifier_test/repository.dart';

class RepositoryImpl extends Repository {
  @override
  Future<List<Model>> fetch() {
    return Future<List<Model>>.value([Model(1)]);
  }

}