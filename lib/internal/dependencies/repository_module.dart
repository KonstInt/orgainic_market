import 'api_module.dart';

import '../../data/repository/data_organic_market_repository.dart';
import '../../domain/repository/organic_market_repository.dart';

class RepositoryModule{
  static OrganicMarketRepository? _repository;
  static OrganicMarketRepository getRepository(){
    // ignore: prefer_conditional_assignment
    if(_repository == null){
      _repository = DataOrganicMarketRepository(ApiModule.apiUtil());
    }
    return _repository!;
  }
}