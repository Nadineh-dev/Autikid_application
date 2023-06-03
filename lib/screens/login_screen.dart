import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/constants/colors.dart';
import 'package:project2/screens/home_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project2/screens/register_screen.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import '../cubit/login_cubit.dart';
import '../cubit/login_states.dart';

class LoginScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {
          if (state is LoginSuccessState) {
            if (state.loginModel.status!) {
              print(state.loginModel.message);
              print(state.loginModel.jwt);
              Fluttertoast.showToast(
                  msg: state.loginModel.message!,
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  fontSize: 16.0);

              Navigator.pushNamed(context, HomeScreen.id);
            } else {
              print(state.loginModel.message);
              Fluttertoast.showToast(
                  msg: state.loginModel.message!,
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0);
            }
          }
        },
        builder: (context, state) {
          return Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Image.asset(
                              "assets/images/Mobile login-rafiki.png",
                              height: 300,
                              width: 330,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                "Welcome back!",
                                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: MyColors.myblue),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "please enter your email";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  suffixIcon: const Icon(
                                    Icons.email,
                                    color: MyColors.myblue,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(23),
                                      borderSide: const BorderSide(color: MyColors.myblue, width: 2)),
                                  hintText: "Email",
                                  hintStyle: const TextStyle(color: MyColors.myblue),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(23),
                                      borderSide: const BorderSide(color: MyColors.myblue, width: 2)))),
                          const SizedBox(height: 15),
                          TextFormField(
                            controller: passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "password is too short";
                              }
                              return null;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                                suffixIcon: const Icon(
                                  Icons.lock,
                                  color: MyColors.myblue,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(color: MyColors.myblue, width: 2)),
                                hintText: "Password",
                                hintStyle: const TextStyle(color: MyColors.myblue),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(color: MyColors.myblue, width: 2))),
                          ),
                          const SizedBox(height: 30),
                          ConditionalBuilder(
                            builder: ((context) => Container(
                                  decoration: BoxDecoration(
                                      color:  MyColors.myblue, borderRadius: BorderRadius.circular(23)),
                                  width: double.infinity,
                                  child: MaterialButton(
                                    onPressed: () {
                                      if (formKey.currentState!.validate()) {
                                        LoginCubit.get(context)
                                            .userLogin(email: emailController.text, password: passwordController.text);
                                      }
                                    },
                                    child: const Text(
                                      "Login",
                                      style: TextStyle(color: Colors.white, fontSize: 22),
                                    ),
                                  ),
                                )),
                            fallback: (context) => const Center(child: CircularProgressIndicator()),
                            condition: state is! LoginLoadingState,
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Dont have an account?",style: TextStyle(fontSize: 18),),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return RegisterScreen();
                                    }));
                                  },
                                  child: const Text(
                                    "Register now !",
                                    style: TextStyle(color: MyColors.myblue,fontSize: 18),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ));
        },
      ),
    );
  }
}
