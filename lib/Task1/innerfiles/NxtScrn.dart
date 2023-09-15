import 'package:flutter/material.dart';
import 'package:vignesh/Task1/homescrn.dart';
class NxtScrn extends StatelessWidget {
  final name,email,gender,phone;
  const NxtScrn({super.key,
  required this.name,
    required this.email,
    required this.gender,
    required this.phone
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController _name = TextEditingController(text: name);
    TextEditingController _email = TextEditingController(text: email);
    TextEditingController _gender = TextEditingController(text: gender);
    TextEditingController _phone = TextEditingController(text: phone);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back,color: Colors.white,),),
        title: Text("My Profile",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 150,bottom: 10),
            child: TextField(
              controller: _name,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: "Name"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150,bottom: 10),
            child: TextField(
              controller: _email,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Email ID"
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(left: 150,bottom: 10),
              child: TextField(
                controller: _gender,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Gender"
                ),
          ),
            ),

          Padding(
            padding: const EdgeInsets.only(left: 150,bottom: 10),
            child: TextField(
              controller: _phone,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Phone Number"
              ),
            ),
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Carousel(usernameone: '')));

              }, child: Text("Back to Home"))
        ],
      ),
    );
  }
}

