import 'package:get/get.dart';
import 'package:getapp/domain/usecases/fetch_headline_use_case.dart';
import 'package:getapp/data/repositories/article_repository.dart';
import 'package:getapp/presentation/controllers/headline/headline_controller.dart';

class HeadlineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FetchHeadlineUseCase(Get.find<ArticleRepositoryIml>()));
    Get.lazyPut(() => HeadlineController(Get.find()));
  }
}
