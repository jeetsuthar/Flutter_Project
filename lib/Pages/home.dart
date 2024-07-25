import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        title: Text("Flutter Application"),
      ),

// body part like HTML file
      body: Center(
        child: Container(
          child: Text(
            "Welcome, back $name",
            style: TextStyle(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
      ),

// menu ba
      // drawer: Drawer(),
    );
  }

  // create a custom function & method

  company({@required var name, Stipend = 10000}) {
    Text("Name : $name and Stipend : $Stipend");
  }
}
