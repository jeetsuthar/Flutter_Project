import 'package:flutter/material.dart';
import 'package:practice_set_1/widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final String name = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
// top navigation bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Google Classroom",
          style: TextStyle(color: Color.fromARGB(255, 74, 74, 74)),
        ),
        elevation: 5.0,
      ),

// body part like HTML file
      body: Center(
        child: Container(
          child: Text(
            "Welcome, back $name",
            style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),

// menu ba
      drawer: MyDrawer(),
    );
  }

  // create a custom function & method

  company({@required var name, Stipend = 10000}) {
    Text("Name : $name and Stipend : $Stipend");
  }
}
