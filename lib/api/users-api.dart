import 'dart:io';

import 'package:dio/dio.dart';
import 'package:getx_demo/models/users.dart';

class UsersAPI {

  UsersAPI._internal();

  static UsersAPI _instance = UsersAPI._internal();
  static UsersAPI get instance => _instance;

  final _dio = Dio();

  Future<List<User>> getUsers( int page ) async {
    try {
      final Response response = await this._dio.get(
        'https://reqres.in/api/users',
        queryParameters: {
          'page': page,
          'delay': 2
        },
      );
      return (response.data['data'] as List).map( (usuario) => User.fromJson( usuario ) ).toList();
    } catch (e) {
      print('[ERROR]: $e');
      return null;
    }
  }

}
