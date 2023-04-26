import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/cubit/register_states.dart';

import '../constants/endpoints.dart';
import '../model/model.dart';
import '../network/remote/dio_helper.dart';

class ShopRegisterCubit extends Cubit<ShopRegisterStates> {
  ShopRegisterCubit() : super(ShopRegisterInitialState());

  static ShopRegisterCubit get(context) => BlocProvider.of(context);

  ShopLoginModel? loginModel;

  void userRegister(
      {required String firstName,
      required String lastName,
      required String email,
      required String password,
      required String phoneNumber,
      required int numofChildren}) {
    emit(ShopRegisterLoadingState());

    DioHelper.postData(url: REGISTER, data: {
      "first_name": firstName,
      "last_name": lastName,
      "email": email,
      "password": password,
      "phonenumber": phoneNumber,
      "numofchildren": numofChildren
    }).then((value) {
      print(value.data);
      loginModel = ShopLoginModel.fromJson(value.data);
      print(loginModel!.message);
      print(loginModel!.status);
      emit(ShopRegisterSuccessState(loginModel!));
    }).catchError((error) {
      emit(ShopRegisterErrorState(error));
    });
  }
}
