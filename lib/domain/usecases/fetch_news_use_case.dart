import 'package:getapp/app/core/usecases/pram_usecase.dart';
import 'package:getapp/domain/entities/paging.dart';
import 'package:getapp/domain/repositories/article_repository.dart';
import 'package:tuple/tuple.dart';

class FetchNewsUseCase extends ParamUseCase<Paging, Tuple3<String, int, int>> {
  final ArticleRepository _repo;
  FetchNewsUseCase(this._repo);

  @override
  Future<Paging> execute(Tuple3 param) {
    return _repo.fetchNewsByCategory(param.item1, param.item2, param.item3);
  }
}
