import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/cubit/login_states.dart';
import 'package:project2/screens/chat/chat_screen.dart';

import '../constants/endpoints.dart';
import '../model/model.dart';
import '../network/remote/dio_helper.dart';
import '../screens/categories_scree.dart';
import '../screens/home2_screen.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens = [
    Home2Screen(),
    const CategoriesScreen(),
    const ChatScreen()
  ];

  List<String> titles = ["Home", "Categories", "Chat with us"];

  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeBottomNavbarState());
  }

  LoginModel? loginModel;

  void userLogin({required String email, required String password}) {
    emit(LoginLoadingState());

    DioHelper.postData(url: LOGIN, data: {"email": email, "password": password})
        .then((value) {
      print(value.data);
      loginModel = LoginModel.fromJson(value.data);
      print(loginModel!.message);
      print(loginModel!.status);
      emit(LoginSuccessState(loginModel!));
    }).catchError((error) {
      emit(LoginErrorState(error));
    });
  }
}
