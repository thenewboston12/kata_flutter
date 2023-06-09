import 'package:flutter/material.dart';
import 'package:senproj/main.dart';
import 'package:senproj/settings.dart';
import 'package:senproj/loginpage.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text(
              "Profile",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.grey[300],
            leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Settings()));
              },
              icon: const Icon(color: Colors.black, Icons.settings),
            ),
            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return LoginPage();
                    }));
                  },
                  icon: const Icon(color: Colors.black, Icons.logout))
            ]),
        body: Stack(children: <Widget>[
          Container(
            color: Colors.grey[300],
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(
                top: (MediaQuery.of(context).size.height * 0.3) / 2),
            child: Container(
              height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/1490711.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(
                bottom: (MediaQuery.of(context).size.height * 0.3) / 2),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    backgroundColor: Colors.black,
                    shadowColor: Colors.black),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetectionScreen()));
                },
                child: const Text(
                    style: TextStyle(color: Colors.white), "Start detecting")),
          ),
        ]),
      ),
    );
  }
}
