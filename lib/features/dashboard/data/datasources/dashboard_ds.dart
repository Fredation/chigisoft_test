import 'dart:developer';

import 'package:chigisoft_test/core/network/api.dart';
import 'package:chigisoft_test/core/network/endpoints.dart';
import 'package:chigisoft_test/core/storage/storage.dart';
import 'package:chigisoft_test/features/dashboard/data/models/product_model.dart';
import 'package:dio/dio.dart';

abstract class DashboardDS {
  Future<ProductModel> getAllProducts();
}

class DashboardDSImpl implements DashboardDS {
  final Api api;
  final Storage storage;

  DashboardDSImpl({required this.api, required this.storage});

  @override
  Future<ProductModel> getAllProducts() async {
    try {
      final response = await api.dio.get(ChigiEndpoints.getAllProducts);
      log(response.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return ProductModel.fromJson(response.data);
      } else {
        throw Exception();
      }
    } on DioError {
      rethrow;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
