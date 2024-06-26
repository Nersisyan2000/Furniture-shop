import 'package:dio/dio.dart';
import 'package:furniture_shop/domain/models/discount/discount_model.dart';

class GetDiscountsService {
  final Dio _dio = Dio();
  final String apiUrl = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<DiscountModel>> fetchDiscountData() async {
    try {
      final response = await _dio.get(apiUrl);
      return response.data;
    } on DioException catch (e) {
      throw Exception('Failed to load data: ${e.message}');
    }
  }
}
