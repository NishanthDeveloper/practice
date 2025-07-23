import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/user_model.dart';
import '../view_model/user_view_model.dart';

final userViewModelProvider =
AsyncNotifierProvider<UserViewModel, List<UserModel>>(UserViewModel.new);
