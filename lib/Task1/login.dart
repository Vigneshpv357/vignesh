import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vignesh/Task1/verification_screen.dart';
import 'package:vignesh/pagesmth.dart';

import 'Signupp.dart';
import 'homescrn.dart';



class loginnxt extends StatefulWidget {
  const loginnxt({Key? key}) : super(key: key);

  @override
  _loginnxtState createState() => _loginnxtState();
}

class _loginnxtState extends State<loginnxt> {


  TextEditingController usernamee = TextEditingController();
  TextEditingController paswd = TextEditingController();

  GlobalKey<FormState> user = GlobalKey();
  late SharedPreferences loginData;
  late bool newUser;

  void initState() {
    // check_if_already_login();
    // TODO: implement initState
    super.initState();
  }
  // void check_if_already_login() async
  // {
  //   loginData = await SharedPreferences.getInstance();
  //   newUser = (loginData.getBool("login")??true);
  //   print(newUser);
  //   if(newUser==false)
  //   {
  //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Carousel(usernameone: '',)));
  //
  //   }
  // }
  bool isPasswordValid(String? passWord){
    if(passWord==null) return false;
    final regExp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    return regExp.hasMatch(passWord);

  }
  void dispose() {
    usernamee.dispose();
    paswd.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Login",style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Form(
          key: user,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 180,
              // ),
              Image.network("https://scontent.xx.fbcdn.net/v/t51.2885-15/54446808_565502450613300_3686360010566139904_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=86c713&_nc_ohc=fcX5f3h0MFYAX8Nx0F5&_nc_ht=scontent.xx&edm=AL-3X8kEAAAA&oh=00_AfBOI3BgWq_GyoI8IyLN-VDSHcl9YjEE_GtbkrmszOlMLw&oe=64E92FDC",scale: 4,),

              // Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(

                  controller: usernamee,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    icon: Icon(Icons.account_circle_outlined,color: Colors.redAccent,),
                      border: OutlineInputBorder(

                      ),
                      // labelText: "Username",
                    hintText: "Enter username"
                  ),
                  validator: (usernamee){
                    if(usernamee!.isEmpty || usernamee==null){
                      return "Field cant be empty";
                    }

                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: paswd,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock_outline,color: Colors.redAccent,),
                      border: OutlineInputBorder(),
                      // labelText: "Password",
                    hintText: "Enter your password"

                  ),
                  validator: (paswd){
                    if(paswd!.isEmpty || paswd==null){
                      return "Field can't be empty";
                    }
                    else if(isPasswordValid(paswd)==false){
                      return "Please enter a valid password";
                    }
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 1,color: Colors.white)
                  ),
                  onPressed: () {},
                  child: Text("Forgot Password",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),)
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(

                  style: ElevatedButton.styleFrom(

                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                      shape: StadiumBorder(),

                  ),
                  onPressed: (){
                    String username = usernamee.text;
                    String password = paswd.text;
                    if(user.currentState!.validate()){
                      // print("successfull");
                      // loginData.setBool("login",false);
                      loginData.setString("username", usernamee.text);
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Carousel(usernameone: usernamee.text,)),
                      );
                    }

                  },
                  child: Text("Login")
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New User?"),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(width: 1,color: Colors.white)
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const SignupScreen()),
                        );
                      },
                      child: Text("Sign Up",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),)
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
