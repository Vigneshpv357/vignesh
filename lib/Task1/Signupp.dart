import 'package:flutter/material.dart';
import 'package:vignesh/Task1/verification_screen.dart';



class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  GlobalKey<FormState> user = GlobalKey();
  bool isPasswordValid(String? password) {
    if (password == null) return false;
    final regExp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    return regExp.hasMatch(password);
  }
  @override

  String? gender= "male";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Registration",style: TextStyle(color: Colors.white),),
        leading:IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back_outlined,color: Colors.white,),

        )

      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Form(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("https://content.jdmagicbox.com/comp/kozhikode/e8/0495px495.x495.220330150452.s8e8/catalogue/zoople-technologies-calicut-rec-kozhikode-computer-training-institutes-4d5p6rlq6f.jpg?clr="),
                      fit: BoxFit.cover
                  )
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSxy8qXQ3WVt2DUFYqaW9daWIA35-5cum6puj9r1YXQ-cAXj_tgAExwsGts5UXiHC9_VQ&usqp=CAU",height: 90,width: 100,),

                  // Text("SignUp",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: username,
                        decoration: InputDecoration(
                          icon: Icon(Icons.account_circle,color: Colors.redAccent,),
                          border: OutlineInputBorder(

                          ),
                          labelText: "Username",

                        ),
                      ),
                    ),
                  ),

                  Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.transgender,color: Colors.redAccent,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Gender",style: TextStyle(fontSize: 15),),
                              ),
                            ],
                          ),
                        ),

                        RadioListTile(
                          title: Text("Male",style: TextStyle(fontSize: 13)),
                          value: "male",
                          groupValue: gender,
                          onChanged: (value){
                            setState(() {
                              gender = value.toString();
                            });
                          },
                        ),

                        RadioListTile(
                          title: Text("Female",style: TextStyle(fontSize: 13)),
                          value: "female",
                          groupValue: gender,
                          onChanged: (value){
                            setState(() {
                              gender = value.toString();
                            });
                          },
                        ),

                        RadioListTile(
                          title: Text("Other",style: TextStyle(fontSize: 13)),
                          value: "other",
                          groupValue: gender,
                          onChanged: (value){
                            setState(() {
                              gender = value.toString();
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: email ,
                        decoration: InputDecoration(
                          hintText: "Enter your email ID",

                          icon: Icon(Icons.email,color: Colors.redAccent,),
                        border: OutlineInputBorder(

                        ),
                          labelText: "Email ID"
                        ),
                        validator: (email){
                          if(email!.isEmpty|| email==null){
                            return "Field can't be empty";
                          }
                          else if(!email.isEmailValid()){
                            return "Please enter a valid email ID";
                          }

                        },
                      ),
                    ),
                  ),


                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: password,
                        decoration: InputDecoration(
                            icon: Icon(Icons.lock,color: Colors.redAccent,),
                          hintText: "Enter your password",
                            border: OutlineInputBorder(),
                            labelText: "Password"
                        ),
                        validator: (password){
                          if(password!.isEmpty||password==null){
                            return "Should not be Empty";
                          } else if (isPasswordValid(password)==false){
                            return "Please enter a valid password";
                          }
                        },
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: passwordC,
                        decoration: InputDecoration(
                            icon: Icon(Icons.lock_person,color: Colors.redAccent,),
                            hintText: "Confirm your password",
                            border: OutlineInputBorder(),
                            labelText: "Confirm Password"
                        ),
                        validator: (password){
                          if(password!.isEmpty||password==null){
                            return "Should not be Empty";
                          } else if (isPasswordValid(password)==false){
                            return "Please enter a valid password";
                          }
                          // else if(passwordC != password){
                          //   return "Not matching password";
                          // }
                        },
                      ),
                    ),
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
                        if(user.currentState!.validate()){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => VerificationScreen1()),
                          );
                        }

                      },
                      child: Text("Sign Up")
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
extension SignupScreenState on String {
  bool isEmailValid(){
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}