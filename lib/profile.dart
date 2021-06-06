import 'package:flutter/material.dart';
import 'package:flutter_assi3/search.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff6ff7b8),
          titleSpacing: 2,
          title: Text("Gamming Mobiles"),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 30,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => search()));
                },
                child: Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 2.0),
                child: ListTile(
                  // tileColor: Colors.blue,
                  contentPadding: EdgeInsets.all(0),
                  leading: Container(
                    child: Icon(
                      Icons.account_box_rounded,
                      size: 70,
                    ),
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                  title: Text(
                    'User',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    children: [
                      Row(
                        children: [
                          Text("user@gmail.com"),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: Text('logout')),
                        ],
                      )
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Text("Acount Information",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  ListTile(
                    title: Text('Full Name'),
                    subtitle: Text('User'),
                    trailing: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.edit,
                        size: 30,
                      ),
                    ),
                  ),
                  info('Email', 'user@gmail.com'),
                  info('Phone', "+09200-798 01"),
                  info('Address', 'New York, Random Street House No:20'),
                  info('Gender', 'Male'),
                  info('Date of Birth', 'October 13 1999'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget info(title, subtitle) {
  return ListTile(
    title: Text(title),
    subtitle: Text(subtitle),
  );
}
