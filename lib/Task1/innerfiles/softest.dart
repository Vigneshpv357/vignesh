import 'package:flutter/material.dart';
class softestScreen extends StatefulWidget {
  const softestScreen({super.key});

  @override
  State<softestScreen> createState() => _softestScreenState();
}

class _softestScreenState extends State<softestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back,color: Colors.white,),),
        title: Text("Software Testing Training",style: TextStyle(color: Colors.white),),
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
                    child: Image.network("https://zoople.in/wp-content/uploads/2022/09/software-testing-1.png",height: 150,),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 100,top: 20),
                      child: Column(
                        children: [
                          Text("SOFTWARE TESTING TRAINING",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                          Text("Best Software Testing Training Institute in kochi")
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
            child: Text("Software testing is much-needed expertise in today’s corporate world. It allows the software testing expert to check, process the website flow, and check the product or service requirements.This will then be validated and compared so that the final software product meets the standards of quality. Not only quality, but it should also serve the purpose of the website as a whole."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("If you aim to be part of this all-time demanding job, you need to enroll in the Software testing course in Kochi as that will equip the candidate with the right knowledge. Once you study the Best Software Testing Training in Kochi, it will help you understand the various aspects that are involved with the software testing process.Once you study the right course under the guidance of the best mentors in Kochi, you will master the art of building impressive websites and mobile applications that are bug-free."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("We, being one of the most noted Software testing training institute in Kochi, will teach the students about the complete software testing life cycle and fundamentals of quality check processes.Apart from learning and being a certified software testing expert at the reliable Software Testing Training in Cochi, each of our students can be assured of being groomed and ready for placements and jobs. This will increase the possibility of building a great career and handsome earnings with us."),
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
