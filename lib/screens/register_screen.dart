import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project2/constants/colors.dart';
import 'package:project2/screens/home_screen.dart';

import '../cubit/register_cubit.dart';
import '../cubit/register_states.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  var formKey = GlobalKey<FormState>();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneNumberController = TextEditingController();
  var numofChildrenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: BlocProvider(
          create: (context) => RegisterCubit(),
          child: BlocConsumer<RegisterCubit, RegisterStates>(
            listener: (context, state) {
              if (state is RegisterSuccessState) {
                if (state.loginModel.status!) {
                  print(state.loginModel.message);
                  //print(state.loginModel.data!.token);
                  Fluttertoast.showToast(
                      msg: state.loginModel.message!,
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.green,
                      textColor: Colors.white,
                      fontSize: 16.0);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
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
              return Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/Screenshot 2023-03-20 025255.png", height: 190, width: 380),
                          const Padding(
                            padding: EdgeInsets.only(top: 16, bottom: 16, left: 10),
                            child: Text(
                              "Please register here :",
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: MyColors.myblue),
                            ),
                          ),
                          TextFormField(
                            controller: firstNameController,
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "please enter your first name";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                suffixIcon: const Icon(
                                  Icons.person,
                                  color: MyColors.myblue,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(color: MyColors.myblue, width: 2)),
                                hintText: "First name",
                                hintStyle: const TextStyle(color: MyColors.myblue),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(color: MyColors.myblue, width: 2))),
                          ),
                          const SizedBox(height: 15),
                          TextFormField(
                            controller: lastNameController,
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter your last name!";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                suffixIcon: const Icon(
                                  Icons.person,
                                  color: MyColors.myblue,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(color: MyColors.myblue, width: 2)),
                                hintText: "Last name",
                                hintStyle: const TextStyle(color: MyColors.myblue),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(color: MyColors.myblue, width: 2))),
                          ),
                          const SizedBox(height: 15),
                          TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "please enter your Email";
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
                                    borderSide: const BorderSide(color: MyColors.myblue, width: 2))),
                          ),
                          const SizedBox(height: 15),
                          TextFormField(
                            controller: passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "please enter your password";
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
                                hintText: "password",
                                hintStyle: const TextStyle(color: MyColors.myblue),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(color: MyColors.myblue, width: 2))),
                          ),
                          const SizedBox(height: 15),
                          TextFormField(
                            controller: phoneNumberController,
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "please enter your phone";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                suffixIcon: const Icon(
                                  Icons.phone,
                                  color: MyColors.myblue,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(color: MyColors.myblue, width: 2)),
                                hintText: "Phone number",
                                hintStyle: const TextStyle(color: MyColors.myblue),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(color: MyColors.myblue, width: 2))),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            controller: numofChildrenController,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "please enter your number of children";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                suffixIcon: const Icon(
                                  Icons.child_care,
                                  color: MyColors.myblue,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(color: MyColors.myblue, width: 2)),
                                hintText: "Number of children",
                                hintStyle: const TextStyle(color: MyColors.myblue),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(color: MyColors.myblue, width: 2))),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          ConditionalBuilder(
                            builder: ((context) => Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: MyColors.myblue, borderRadius: BorderRadius.circular(23)),
                                  child: MaterialButton(
                                    onPressed: () {
                                      if (formKey.currentState!.validate()) {
                                        RegisterCubit.get(context).userRegister(
                                            firstName: firstNameController.text,
                                            lastName: lastNameController.text,
                                            email: emailController.text,
                                            password: passwordController.text,
                                            phoneNumber: phoneNumberController.text,
                                            numofChildren: numofChildrenController.hashCode);
                                      }
                                    },
                                    child: const Text(
                                      "Register",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )),
                            fallback: (context) => const Center(child: CircularProgressIndicator()),
                            condition: state is! RegisterLoadingState,
                          ),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
