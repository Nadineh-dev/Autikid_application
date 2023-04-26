import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/cubit/register_states.dart';

import '../constants/endpoints.dart';
import '../model/model.dart';
import '../network/remote/dio_helper.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);

  LoginModel? loginModel;

  void userRegister(
      {required String firstName,
      required String lastName,
      required String email,
      required String password,
      required String phoneNumber,
      required int numofChildren}) {
    emit(RegisterLoadingState());

    DioHelper.postData(url: REGISTER, data: {
      "first_name": firstName,
      "last_name": lastName,
      "email": email,
      "password": password,
      "phonenumber": phoneNumber,
      "numofchildren": numofChildren
    }).then((value) {
      print(value.data);
      loginModel = LoginModel.fromJson(value.data);
      print(loginModel!.message);
      print(loginModel!.status);
      emit(RegisterSuccessState(loginModel!));
    }).catchError((error) {
      emit(RegisterErrorState(error));
    });
  }
}
