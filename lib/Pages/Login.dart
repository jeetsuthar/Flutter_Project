import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice_set_1/utils/routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool changes = false;
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
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
              "Welcome $name",
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
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
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
                    height: 40,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changes = true;
                      });
                      await Future.delayed(Duration(milliseconds: 600));
                      Navigator.pushNamed(context, MyRoutes.HomeRoutes,
                          arguments: name);
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      height: 50,
                      width: changes ? 50 : 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.circular(changes ? 50 : 5)),
                      child: changes
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2),
                            ),
                    ),
                  )
                  // ElevatedButton(
                  //   style: TextButton.styleFrom(
                  //       backgroundColor: Colors.green.shade300,
                  //       minimumSize: Size(300, 50)),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.HomeRoutes);
                  //   },
                  //   child: Text(
                  //     "Login now",
                  //     style: TextStyle(
                  //         fontWeight: FontWeight.bold,
                  //         fontSize: 20,
                  //         color: Colors.black87),
                  //   ),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
