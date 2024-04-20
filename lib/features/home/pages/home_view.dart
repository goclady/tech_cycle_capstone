import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_cycle_capstone/features/home/pages/menu_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/tech_logo.png",
              height: 100,
              width: 90,),
              Row(
                children: [
                  Text("Home",
                  style: TextStyle(
                    color: Colors.green.shade800,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                      MaterialPageRoute(builder: (context) => MenuList()),
                      );
                    },
                    child: Image.asset("assets/images/menu_button.png"),
                  )
                ],
              )
            ],
          ),

      ),

    );
  }
}
