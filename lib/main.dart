import 'package:lottie/lottie.dart';

import 'HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyNav(),theme: ThemeData(primarySwatch: Colors.blueGrey),
    debugShowCheckedModeBanner: false,

  ));
}

class MyNav extends StatefulWidget {
  @override
  State<MyNav> createState() => _MyNavState();
}

class _MyNavState extends State<MyNav> {
  String propic1 =
      "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=400";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Navigation Drawer"),
        ),
        drawer: Theme(
            data: Theme.of(context).copyWith(),
            child: Drawer(
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text("Anil"),
                    accountEmail: Text("Anildfg@gmail.com"),
                    currentAccountPicture: GestureDetector(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(propic1),
                        ),
                        onTap: () => print("User")),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/0ce06216c4f52072b8560692f9aab4c3.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  ListTile(
                      title: Text("Home Page"),
                      leading: Icon(Icons.home),
                      trailing: Icon(Icons.arrow_forward_outlined),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>MyGrid()));
                      }),
                  ListTile(
                    title: Text("Account Details"),
                    leading: Icon(Icons.account_box_rounded),
                    trailing: Icon(Icons.arrow_forward_outlined),
                  ),
                  ListTile(
                    title: Text("Settings"),
                    leading: Icon(Icons.settings),
                    trailing: Icon(Icons.arrow_forward_outlined),
                  ),
                  ListTile(
                    title: Text("About"),
                    leading: Icon(Icons.info),
                    trailing: Icon(Icons.arrow_forward_outlined),

                  )

                ],
              ),
            )),
        body: Lottie.asset("assets/119896-toaster.json"));

  }
}
