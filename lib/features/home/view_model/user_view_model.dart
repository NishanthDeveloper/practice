import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/core/constants/api_constants.dart';
import 'package:practice/features/home/model/user_model.dart';


class UserViewModel extends AsyncNotifier<List<UserModel>> {
  final ApiService _apiService = ApiService();

  @override
  Future<List<UserModel>> build() async {
    return await fetchUsers();
  }

  Future<List<UserModel>> fetchUsers() async {
    try {
      final users = await _apiService.fetchUsers();
      state = AsyncData(users); // updates the state
      return users;
    } catch (e, st) {
      state = AsyncError(e, st);
      return [];
    }
  }
}
