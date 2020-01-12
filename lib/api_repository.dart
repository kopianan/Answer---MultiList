import 'package:dual_scroll/api_provider.dart';
import 'package:dual_scroll/model/bottom_data.dart';
import 'package:dual_scroll/model/top_data.dart';

class ApiRepository {
  ApiProvider _apiProvider = ApiProvider();

  Future<List<TopData>> get getTopDataFromApi => _apiProvider.getTopData();
  Future<List<BottomData>> get getBottomDataFromApi => _apiProvider.getBottomData();
}
