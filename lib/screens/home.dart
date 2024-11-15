import 'package:flutter/material.dart';
import 'package:todo_app/constants/appcolors.dart';
import 'package:todo_app/main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBg,
      appBar: apppBar(),
      body: Column(
       
        children: [
          searchBox(),
          Expanded(
            child: ListView(
              children: [
                Container(
                 
                  margin: const EdgeInsets.only(top: 50, bottom: 20,left: 15,right: 15),
                  child: const Text('All ToDos',style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget searchBox() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    margin: const EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(20)),
    child: const TextField(
      decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(color: KGrey),
          prefixIcon: Icon(
            Icons.search,
            color: KBlack,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          border: InputBorder.none),
    ),
  );
}

AppBar apppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: KBg,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.menu,
          color: KBlack,
          size: 30,
        ),
        Image.asset(
          'images/avatarman.png',
          height: 40,
          width: 40,
        ),
      ],
    ),
  );
}
