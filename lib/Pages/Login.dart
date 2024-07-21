import 'package:flutter/material.dart';
import 'package:practice_set_1/Pages/home.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          // Adding Image which is display
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
          ),

          // give the space between the image and text
          SizedBox(
            height: 20.0,
          ),

          // Adding Text
          Text(
            "Welcome",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Enter your full name",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter your password",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {
                    print("you hit the login button");
                  },
                  child: Text(
                    "Login now",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
