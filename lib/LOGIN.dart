import 'package:flutter/material.dart';

import 'utils/routes.dart';
//import 'package:know_your_calorie/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  String name ="";

  @override
  Widget build(BuildContext context) {
    return Material(
        color:Colors.white,
        child: Column(
          children: [
            Image.asset("assets/image/login.png",fit: BoxFit.cover
            ),//image asset
            SizedBox(
              height: 20.0,
            ),
            Text("Welcome $name",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical:16.0,horizontal: 32.0),
              child: Column(
                  children:[
                    TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                        onChanged: (value){
                          name = value;
                          setState(() {});
                        }
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                        child: Text("LOGIN"),
                        style: TextButton.styleFrom(minimumSize: Size(150,40)),
                        onPressed: (){
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        }
                    )

                  ]

              ),
            )
          ],
        )
    );
  }
}


