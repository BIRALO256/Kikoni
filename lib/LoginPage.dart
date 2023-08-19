import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //greetings
              SizedBox(
                height: 25,
              ),
              Icon(
                Icons.construction,
                size: 90,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Hello Again!",
                style: GoogleFonts.bebasNeue(fontSize: 52),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome back to Kikoni, been missed!",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              //email textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Email'),
                  ),
                ),
              ),
              //password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  margin: EdgeInsets.only(top: 12),
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Password'),
                  ),
                ),
              ),
              //sign in button
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                        child: Text(
                      "sign in",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ))),
              ),
              SizedBox(
                height: 25,
              ),
              //not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a memeber?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Register Now",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
