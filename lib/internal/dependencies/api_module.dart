import '../../data/api/api_util.dart';
import '../../data/api/service/organic_service.dart';

class ApiModule{
  static ApiUtil? _apiUtil;
  static ApiUtil apiUtil(){
    // ignore: prefer_conditional_assignment
    if(_apiUtil == null){
      _apiUtil = ApiUtil(OrganicMarketService());
    }
    return _apiUtil!;
  }
}