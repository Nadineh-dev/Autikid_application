import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/constants/colors.dart';

import '../cubit/login_cubit.dart';
import '../cubit/login_states.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String id = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => LoginCubit(),
        child: BlocConsumer<LoginCubit, LoginStates>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                shadowColor: Colors.white,
                centerTitle: true,
                title: Image.asset(
                  "assets/images/Screenshot 2023-03-20 025605.png",
                  width: 200,
                ),
              ),
              bottomNavigationBar: BottomNavigationBar(
                  selectedItemColor: MyColors.myblue,
                  currentIndex: LoginCubit.get(context).currentIndex,
                  onTap: (index) {
                    LoginCubit.get(context).changeIndex(index);
                  },
                  elevation: 150.0,
                  type: BottomNavigationBarType.fixed,
                  //backgroundColor: Color(0xff71C6DB),
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.home,
                          //color:Color(0xff71C6DB) ,
                        ),
                        label: "Home"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.category
                            //color:Color(0xff71C6DB) ,
                            ),
                        label: "Categories"),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.chat,
                          //color:Color(0xff71C6DB) ,
                        ),
                        label: "Chat with us")
                  ]),
              body: ConditionalBuilder(
                  condition: true,
                  builder: (context) {
                    return LoginCubit.get(context).screens[LoginCubit.get(context).currentIndex];
                  },
                  fallback: (context) {
                    return const Center(child: CircularProgressIndicator());
                  }),
            );
          },
          listener: (context, state) {},
        ));
  }
}
