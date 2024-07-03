import 'package:flutter/material.dart';
import 'package:mvc_ui/views/screens/ui_widgets.dart';

import '../utils/themes/dark_themes.dart';
import '../utils/themes/light_themes.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isDarkTheme = false;
  @override
  Widget build(BuildContext context) {
    var view = UiWidgets(context: context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkTheme == false ? lightTheme : darkTheme ,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Setting"),
          leading: Icon(Icons.arrow_back_ios),
          actions: [
            Switch(
                value:isDarkTheme ,
                onChanged: (value){
                  setState(() {
                    isDarkTheme = value;
                  });
                }),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText:  "Search...",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                ),
              ),
              view.profileDesign("Aditya Ranjan Singh",' "Bio over here" '),
              view.uiDesign(Icons.person, "Account"),
              SizedBox(height: 10,),
              view.uiDesign(Icons.notifications, "Notification"),
              SizedBox(height: 10,),
              view.uiDesign(Icons.security, "Security"),
              SizedBox(height: 10,),
              view.uiDesign(Icons.privacy_tip, "Privacy"),
              SizedBox(height: 10,),
              view.uiDesign(Icons.color_lens_rounded, "Theme"),
              SizedBox(height: 10,),
              view.uiDesign(Icons.help, "Help"),
              SizedBox(height: 10,),
              view.containersDesign("Become Premium User", Icons.check_circle_rounded),
              view.uiDesign(Icons.add_circle_rounded, " Add Account"),
              SizedBox(height: 10,),
              view.uiDesign(Icons.logout_sharp, "LogOut"),
          
          
            ],
          ),
        )
      ),
    );
  }
}
