import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice_set_1/utils/routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool changes = false;
  String name = "";

  final _formKey = GlobalKey<FormState>();

  void moveToHome(BuildContext context) async {
    // check wheather the condition is true or not if it's true then rediracting on the home screen
    if (_formKey.currentState?.validate() == true) {
      setState(() {
        changes = true;
      });
      await Future.delayed(Duration(milliseconds: 600));
      await Navigator.pushNamed(context, MyRoutes.HomeRoutes, arguments: name);
      setState(() {
        changes = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      // SingleChildScrollView is provide vertical scrolling of screen avoid override problems
      child: SingleChildScrollView(
        child: Form(
          key:
              _formKey, // Added _formKey here to properly initialize the form key
          child: Column(
            children: [
              // Adding Image which is displayed
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),

              // Give space between the image and text
              SizedBox(
                height: 20.0,
              ),

              // Adding Text
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                // apply the padding of the input field coulmns
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        hintText: "Enter your full name",
                        border: OutlineInputBorder(),
                      ),
                      // it will change the update the values with the help of setstate method it call the build method again and again when we chnage in that input field
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      // username validation
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "Username is required!";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter your password",
                        border: OutlineInputBorder(),
                      ),
                      //  password validation
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "Password is required!";
                        } else if (value != null &&
                            value.length <= 8 &&
                            value.length > 20) {
                          return "Password length should be required between 8 to 20";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Mobile number",
                        hintText: "123-456-7890",
                        border: OutlineInputBorder(),
                      ),
                      // Mobile Number validation
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "Mobile Number is required!";
                        } else if (value?.length != 10) {
                          return "Invalid Mobile Number!";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    // Add the ripple effect on the custom created button using animated conatiner
                    Material(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(changes ? 50 : 5),

                      // InkWell is provide the click event on the that container
                      child: InkWell(
                        // when we click on the button it will more to the next page
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          // required property of the animated container
                          duration: Duration(milliseconds: 500),
                          height: 50,
                          width: changes ? 50 : 150,
                          alignment: Alignment.center,
                          child: changes
                              // In Flutter there also have the Icon library
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
                                    letterSpacing: 2,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
