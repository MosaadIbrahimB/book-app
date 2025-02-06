import 'package:dio/dio.dart';
class ApiConstant{
  final String baseUrl='https://www.googleapis.com/books/v1/';
  final String endpointFeatureBooks='volumes?Filtering=free-ebooks&q=programming';
  final String endpointBookDetails='volumes?q=computer science';

}
class ApiService{
  final Dio _dio;
  ApiConstant apiConstant=ApiConstant();
  ApiService(this._dio);


 Future<Map<String,dynamic>> get({required String endPoint})async{

    var response=await _dio.get("${apiConstant.baseUrl}$endPoint");
    return response.data;
  }

}