import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/cubit/states.dart';
import 'package:project2/screens/chat_screen.dart';

import '../constants/endpoints.dart';
import '../model/model.dart';
import '../network/remote/dio_helper.dart';
import '../screens/categories_scree.dart';
import '../screens/home2_screen.dart';
import '../screens/home_screen.dart';

class ShopLoginCubit extends Cubit<ShopLoginStates> {
  ShopLoginCubit() : super(ShopLoginInitialState());

  static ShopLoginCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens = [Home2Screen(), CategoriesScreen(), ChatScreen()];

  List<String> titles = ["Home", "Categories", "Chat with us"];

  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeBottomNavbarState());
  }

  ShopLoginModel? loginModel;

  void userLogin({required String email, required String password}) {
    emit(ShopLoginLoadingState());

    DioHelper.postData(url: LOGIN, data: {"email": email, "password": password})
        .then((value) {
      print(value.data);
      loginModel = ShopLoginModel.fromJson(value.data);
      print(loginModel!.message);
      print(loginModel!.status);
      emit(ShopLoginSuccessState(loginModel!));
    }).catchError((error) {
      emit(ShopLoginErrorState(error));
    });
  }
}
