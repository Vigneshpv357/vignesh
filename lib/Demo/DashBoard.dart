import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'LoginPage.dart';

class MyDashBoard extends StatefulWidget {
  const MyDashBoard({Key? key}) : super(key: key);

  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {

  late SharedPreferences logindata;
  late String username ;

  @override
  void initState() {
    initial();
    // TODO: implement initState
    super.initState();
  }

  void initial() async
  {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString("username")!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("MydashBoard"),
          bottom: PreferredSize(
            preferredSize: Size(100,50),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                    )
                ),
              ),
            ),)
      ),

      body: Column(
        children: [
          Text("Welcome Home"),
          Text("$username"),
          ElevatedButton(
              onPressed: (){
                logindata.setBool("login",true);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LginPageDemo()));

              },
              child: Text("click"))
        ],
      ),
    );
  }
}