import 'package:flutter/material.dart';
import 'package:tech_cycle_capstone/features/about/pages/about_view.dart';
import 'package:tech_cycle_capstone/features/contact/pages/contact_view.dart';
import 'package:tech_cycle_capstone/features/donate/pages/donate_view.dart';
import 'package:tech_cycle_capstone/features/home/pages/home_view.dart';
import 'package:tech_cycle_capstone/features/login/pages/login_view.dart';
import 'package:tech_cycle_capstone/features/signup/pages/signup_view.dart';

class ReceiveMenu extends StatelessWidget {
  const ReceiveMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading:
          Image.asset("assets/images/menu_button.png"),
          actions: [
            Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Padding(padding: EdgeInsets.only(right: 10),
                    child: Image.asset("assets/images/mdi_cancel-bold.png"),
                  ),
                ),
              ],
            ),
          ],
        ),
        body:
        ListView(
          children: [
            ListTile(
              title: Text("Home",
                style: TextStyle(
                    fontSize: 20
                ),),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeView()),
                );
              },
            ),
            ListTile(
              title: Text("About",
                style: TextStyle(
                    fontSize: 20
                ),),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutView()),
                );
              },
            ),
            ListTile(
              title: Text("Donate",
                style: TextStyle(
                    fontSize: 20
                ),),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DonateView()),
                );
              },
            ),
            ListTile(
              title: Text("Contact Us",
                style: TextStyle(
                    fontSize: 20
                ),),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUsView()),
                );
              },
            ),
            ListTile(
              title: Text("Sign Up",
                style: TextStyle(
                    fontSize: 20
                ),),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpView()),
                );
              },
            ),
            ListTile(
              title: Text("Login",
                style: TextStyle(
                    fontSize: 20
                ),),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginView()),
                );
              },
            ),
            SizedBox(height: 275,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginView()),
                );
              },
              child: Image.asset("assets/images/out_log.png"),
            )

          ],
        )
    );
  }
}
