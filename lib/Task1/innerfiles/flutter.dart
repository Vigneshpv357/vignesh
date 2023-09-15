import 'package:flutter/material.dart';
class FltrScreen extends StatefulWidget {
  const FltrScreen({super.key});

  @override
  State<FltrScreen> createState() => _FltrScreenState();
}

class _FltrScreenState extends State<FltrScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back,color: Colors.white,),),
        title: Text("Flutter App Development",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.network("https://zoople.in/wp-content/uploads/2022/08/Vector.png",height: 150,),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 100,top: 20),
                      child: Column(
                        children: [
                          Text("FLUTTER APP DEVELOPMENT",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                          Text("Best Flutter Training Institute in kochi")
                        ],
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 100,
                        width: 380,
                        decoration: BoxDecoration(
                            color: Colors.black12
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Text("Program Duration"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 50),
                                    child: Text("Training Hours"),
                                  ),
                                  Text("Call Us")
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Text("3 Months",style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("FN & AN",style: TextStyle(fontWeight: FontWeight.bold)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text("0484 4040906",style: TextStyle(fontWeight: FontWeight.bold)),
                                )
                              ],
                            )
                          ],
                        )
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                left: 25,
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("Apply Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ),
            ],
          ),
          Center(child: Text("Introduction",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("If you have tried the app development process, you should be knowing how complicated and time-consuming it is. This tiresome process can be made lighter through flutter. Flutter is an open-source single code base UI software development kit launched by Google for developing applications mainly on iOS and Android. It is the most powerful and fastest programming language with expressive and flexible UI and exhibits native performance."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("The mobile application development using Flutter provides native performance and seamless UX. The best Flutter training in Kochi enables all developers to enhance their skills saving, a substantial amount of time. Flutter is the best to develop cross-platform apps Our flutter development training course is bound to ensure making you a pro in the same. Flutter is the fastest growing language, with a scope of promising future."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("The certification to competence in the specialized field shows a commitment to career and skill development. Zoople put forward a full-stack flutter development training program to make you capable of developing high-quality, interactive mobile applications both for iOS and Android devices.Our certification for the flutter app development course in Kochi would stand out from the crowd. No matter if you are a newbie or experienced in mobile app development, our training results in the high-velocity development of quality apps."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  shape: StadiumBorder(),

                ),
                onPressed: (){},
                child: Text("Apply Now")),
          )

        ],
      ),
    );
  }
}
