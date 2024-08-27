import 'package:get/get.dart';
import 'package:getapp/data/repositories/auth_repository.dart';
import 'package:getapp/data/repositories/article_repository.dart';

class DependencyCreator {
  static init() {
    Get.lazyPut(() => AuthenticationRepositoryIml());
    Get.lazyPut(() => ArticleRepositoryIml());
  }

}
