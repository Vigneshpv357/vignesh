import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vignesh/Task1/innerfiles/NxtScrn.dart';
import '../homescrn.dart';
class EditProf extends StatefulWidget {
  const EditProf({super.key});

  @override
  State<EditProf> createState() => _EditProfState();
}

class _EditProfState extends State<EditProf> {
  TextEditingController email = TextEditingController();
  TextEditingController usernamee = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController phnum = TextEditingController();
  TextEditingValue course = TextEditingValue();

  List <String> list = <String>["Python","Flutter","UI Development","Software Testing"];
 late String dropdownValue = list.first;

  GlobalKey<FormState> glblky = GlobalKey();

  late SharedPreferences EditData;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile",style: TextStyle(color: Colors.white),),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back,color: Colors.white,),),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
        children: [
          Form(
              child: Column(
                children: [

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: TextFormField(
                          controller: usernamee,
                          decoration: InputDecoration(

                            border: OutlineInputBorder(

                            ),
                            labelText: "Username",

                          ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: TextFormField(
                          controller: email,
                          decoration: InputDecoration(

                            border: OutlineInputBorder(

                            ),
                            labelText: "Email",

                          ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: TextFormField(
                          controller: gender,
                          decoration: InputDecoration(

                            border: OutlineInputBorder(

                            ),
                            labelText: "Gender",

                          ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: TextFormField(
                          controller: phnum,
                          decoration: InputDecoration(

                            border: OutlineInputBorder(

                            ),
                            labelText: "Phone Number",

                          ),),
                        ),
                      ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  DropdownButton<String>(

                                    value: dropdownValue,
                                    hint: Text("Courses"),

                                    icon: const Icon(Icons.arrow_downward),

                                    elevation: 16,
                                    style: const TextStyle(color: Colors.deepPurple),

                                    onChanged: (String? value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        dropdownValue = value!;
                                      });
                                    },
                                    items: list.map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,

                                        child: Text(value),
                                      );
                                    }).toList(),

                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                onPressed: ()  {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => NxtScrn(
                                        name: usernamee.text,
                                        email:email.text,
                                        gender:gender.text,
                                        phone:phnum.text,


                                      ))
                                      );

                                    },

                                child: Text("Save")),
                          ),

                        ],
                      )

                    ],
                  )
                ],
              ))
          // Form(child: Container(
          //   height: MediaQuery.of(context).size.height,
          //   width: MediaQuery.of(context).size.width,
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //           image: AssetImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXi9ATL3oIc4dCZHB5M8QXgC2XPg5dabh3hA&usqp=CAU"),
          //           fit: BoxFit.cover
          //       )
          //   ),
          //   child: Column(
          //     children: [
          //       SizedBox(
          //         height: 30,
          //       ),
          //       Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXi9ATL3oIc4dCZHB5M8QXgC2XPg5dabh3hA&usqp=CAU",height: 90,width: 100,),
          //
          //       // Text("SignUp",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          //       Card(
          //         child: Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: TextFormField(
          //             controller: usernamee,
          //             decoration: InputDecoration(
          //               icon: Icon(Icons.account_circle,color: Colors.redAccent,),
          //               border: OutlineInputBorder(
          //
          //               ),
          //               labelText: "Username",
          //
          //             ),
          //           ),
          //         ),
          //       ),
          //
          //
          //       Card(
          //         child: Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: TextFormField(
          //             autovalidateMode: AutovalidateMode.onUserInteraction,
          //             controller: email ,
          //             decoration: InputDecoration(
          //                 hintText: "Enter your email ID",
          //
          //                 icon: Icon(Icons.email,color: Colors.redAccent,),
          //                 border: OutlineInputBorder(
          //
          //                 ),
          //                 labelText: "Email ID"
          //             ),
          //             validator: (email){
          //               if(email!.isEmpty|| email==null){
          //                 return "Field can't be empty";
          //               }
          //               else if(!email.isEmailValid()){
          //                 return "Please enter a valid email ID";
          //               }
          //
          //             },
          //           ),
          //         ),
          //       ),
          //
          //
          //       SizedBox(
          //         height: 10,
          //       ),
          //       ElevatedButton(
          //           style: ElevatedButton.styleFrom(
          //
          //             backgroundColor: Colors.redAccent,
          //             foregroundColor: Colors.white,
          //             shape: StadiumBorder(),
          //
          //           ),
          //           onPressed: (){
          //             if(glblky.currentState!.validate()){
          //               Navigator.of(context).push(
          //                 MaterialPageRoute(builder: (context) => Carousel(usernameone: '',)),
          //               );
          //             }
          //
          //           },
          //           child: Text("Save")
          //       ),
          //     ],
          //   ),
          // ),)
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
