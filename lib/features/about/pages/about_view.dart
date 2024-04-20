import 'package:flutter/material.dart';
import 'package:tech_cycle_capstone/features/about/pages/menu_about.dart';
import 'package:tech_cycle_capstone/features/home/pages/home_view.dart';


class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/tech_logo.png",
              height: 100,
              width: 90,),
            Row(
              children: [
                Text("About",
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
                      MaterialPageRoute(builder: (context) => MenuAbout()),
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

