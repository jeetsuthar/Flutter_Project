import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    company(name: "Infoses", Stipend: 20000);
    return Scaffold(
// top navigation bar
      appBar: AppBar(
        title: Text("Flutter Application"),
      ),

// body part like HTML file
      body: Center(
        child: Container(
          child: Text(
            "Home Screen !!",
            style: TextStyle(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
      ),

// menu ba
      drawer: Drawer(),
    );
  }

  // create a custom function & method

  company({@required var name, Stipend = 10000}) {
    Text("Name : $name and Stipend : $Stipend");
  }
}
