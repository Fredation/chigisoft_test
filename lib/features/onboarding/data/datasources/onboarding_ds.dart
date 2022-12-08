import 'dart:developer';

import 'package:chigisoft_test/core/network/api.dart';
import 'package:chigisoft_test/core/network/endpoints.dart';
import 'package:chigisoft_test/core/storage/storage.dart';
import 'package:chigisoft_test/features/onboarding/data/models/user_model.dart';
import 'package:dio/dio.dart';

abstract class OnboardingDS {
  Future<UserModel> login(data);
}

class OnboardingDSImpl implements OnboardingDS {
  final Api api;
  final Storage storage;

  OnboardingDSImpl({required this.api, required this.storage});

  @override
  Future<UserModel> login(data) async {
    try {
      final response = await api.dio.post(ChigiEndpoints.login, data: data);
      log(response.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserModel.fromJson(response.data);
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
