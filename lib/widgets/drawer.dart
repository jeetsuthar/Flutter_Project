import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const CustomTextStyle = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 15,
      letterSpacing: 1.2,
    );
    return Drawer(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: DrawerTheme(
                  data: DrawerThemeData(backgroundColor: Colors.deepPurple),
                  child: Text(
                    "Google Classroom",
                    textScaleFactor: 1.5,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: Text(
                "Classes",
                style: CustomTextStyle,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.date_range_rounded,
              ),
              title: Text(
                "Celendar",
                style: CustomTextStyle,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
              ),
              title: Text(
                "Notifications",
                style: CustomTextStyle,
              ),
            ),
            // Divider(
            //   indent: 55,
            // ),
            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //   child: Text(
            //     "ENROLLED",
            //     textScaleFactor: 0.7,
            //     style: TextStyle(
            //       letterSpacing: 2,
            //       fontWeight: FontWeight.w600,
            //     ),
            //   ),
            // ),
            // ListTile(
            //   leading: Icon(
            //     Icons.checklist_rounded,
            //   ),
            //   title: Text("To do"),
            // ),
            Divider(
              indent: 55,
            ),
            ListTile(
              leading: Icon(
                Icons.offline_pin_outlined,
              ),
              title: Text(
                "Offline files",
                style: CustomTextStyle,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.archive_outlined,
              ),
              title: Text(
                "Archived classes",
                style: CustomTextStyle,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.folder_open,
              ),
              title: Text(
                "Classroom folders",
                style: CustomTextStyle,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
              ),
              title: Text(
                "Settings",
                style: CustomTextStyle,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.help_outline,
              ),
              title: Text(
                "Help",
                style: CustomTextStyle,
              ),
            ),
          ],
        ),
      ),
    
    );
}
}
