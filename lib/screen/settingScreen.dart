import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:course_tracker/sql/sqllite.dart';
import 'package:course_tracker/screen/loginScreen.dart';
import 'package:course_tracker/screen/addfood.dart';
import 'package:course_tracker/screen/nev_bar/profile.dart';
import 'package:course_tracker/widget/constants/staticdata.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              ""
              "Settings",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: FileImage(File(StaticData.model!.image)),
              ),
              title: Text(
                ""
                "${StaticData.model!.username}",
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(StaticData.model!.email),
            ),
            const Divider(
              height: 50,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Profile(),
                    ));
              },
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  CupertinoIcons.person,
                  color: Colors.blue,
                  size: 35,
                ),
              ),
              title: const Text(
                "Profile",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              trailing: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Profile(),
                        ));
                  },
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddData(),
                    ));
              },
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.deepPurple,
                  size: 35,
                ),
              ),
              title: const Text(
                "Add Food",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
           
          
            ListTile(
              onTap: () {
              
              
                StaticData.clearCredentials();
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                  (route) => true,
                );
              },
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.redAccent.shade100,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.logout,
                  color: Colors.redAccent,
                  size: 35,
                ),
              ),
              title: const Text(
                "Log Out",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
