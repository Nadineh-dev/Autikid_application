import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/screens/home_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project2/screens/register_screen.dart';
import 'package:project2/widgets/button.dart';
import 'package:project2/widgets/textfield.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import '../cubit/cubit.dart';
import '../cubit/states.dart';

class LoginScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return BlocProvider(
      create: (BuildContext context) => ShopLoginCubit(),
      child: BlocConsumer<ShopLoginCubit, ShopLoginStates>(
        listener: (context, state) {
          if (state is ShopLoginSuccessState) {
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
          ;
        },
        builder: (context, state) {
          return Scaffold(backgroundColor: Colors.white,
              body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/undraw_Access_account_re_8spm.png",
                        height: 300,
                        width: 330,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "Welcome back!",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff71C6DB)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "please enter your email";
                            }
                          },
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.email,
                                color: Color(0xff71c6db),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(23),
                                  borderSide: BorderSide(
                                      color: Color(0xff71c6db), width: 2)),
                              hintText: "Email",
                              hintStyle: TextStyle(color: Color(0xff71c6db)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(23),
                                  borderSide: BorderSide(
                                      color: Color(0xff71c6db), width: 2)))),
                      SizedBox(height: 15),
                      TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "password is too short";
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.lock,
                              color: Color(0xff71c6db),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23),
                                borderSide: BorderSide(
                                    color: Color(0xff71c6db), width: 2)),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Color(0xff71c6db)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23),
                                borderSide: BorderSide(
                                    color: Color(0xff71c6db), width: 2))),
                      ),
                      SizedBox(height: 30),
                      ConditionalBuilder(
                        builder: ((context) => Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff71c6db),
                                  borderRadius: BorderRadius.circular(23)),
                              width: double.infinity,
                              child: MaterialButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    ShopLoginCubit.get(context).userLogin(
                                        email: emailController.text,
                                        password: passwordController.text);
                                  }
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 19),
                                ),
                              ),
                            )),
                        fallback: (context) =>
                            Center(child: CircularProgressIndicator()),
                        condition: state is! ShopLoginLoadingState,
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Dont have an account?"),
                          TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return RegisterScreen();
                                }));
                              },
                              child: Text(
                                "Register now !",
                                style: TextStyle(color: Color(0xff71C6DB)),
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
