import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit.dart';
import '../cubit/states.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

  static String id="HomeScreen";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ShopLoginCubit(),
      child: BlocConsumer<ShopLoginCubit, ShopLoginStates>(
        builder:(context, state) {
          return Scaffold(
      appBar: AppBar(
        shadowColor: Color(0xff71C6DB),
        backgroundColor: Color(0xff71C6DB),
        centerTitle: true,
        title: Container(
          child: Image.asset(
            "assets/images/Screenshot 2023-04-17 072137.png",
            width: 200,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:Color(0xff71C6DB) ,
        currentIndex: ShopLoginCubit.get(context).currentIndex,
        onTap: (index){
          ShopLoginCubit.get(context).changeIndex(index);
        },
        elevation: 150.0,
        type: BottomNavigationBarType.fixed,
        //backgroundColor: Color(0xff71C6DB),
        items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              //color:Color(0xff71C6DB) ,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.category
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
        builder: (context){
          return ShopLoginCubit.get(context).screens[ShopLoginCubit.get(context).currentIndex];
        },
        fallback: (context){ return Center(child: CircularProgressIndicator());}
        ),
    );
        } ,
        listener:(context, state) {} ,
        ));
  }
}
