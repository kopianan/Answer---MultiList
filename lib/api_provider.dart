import 'package:dio/dio.dart';
import 'package:dual_scroll/model/bottom_data.dart';
import 'package:dual_scroll/model/top_data.dart';

class ApiProvider {
  Future<List<TopData>> getTopData() async {
    Response response;
    List<TopData> dataModel;
    Dio dio = new Dio();
    response = await dio.get("http://fakerestapi.azurewebsites.net/api/Books");

    if (response.statusCode == 200) {
      final List responseData = response.data;

      dataModel = responseData.map((f) => TopData.fromJson(f)).toList();
    } else {
      dataModel = null;
    }
    return dataModel;
  }
  Future<List<BottomData>> getBottomData() async {
    Response response;
    List<BottomData> dataModel;
    Dio dio = new Dio();
    response = await dio.get("http://fakerestapi.azurewebsites.net/api/CoverPhotos");

    if (response.statusCode == 200) {
      final List responseData = response.data;

      dataModel = responseData.map((f) => BottomData.fromJson(f)).toList();
    } else {
      dataModel = null;
    }
    return dataModel;
  }
}
