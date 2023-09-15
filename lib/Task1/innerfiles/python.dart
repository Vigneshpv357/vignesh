import 'package:flutter/material.dart';
class PytonScreen extends StatefulWidget {
  const PytonScreen({super.key});

  @override
  State<PytonScreen> createState() => _PytonScreenState();
}

class _PytonScreenState extends State<PytonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back,color: Colors.white,),),
        title: Text("Python Full Stack",style: TextStyle(color: Colors.white),),
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
                    child: Image.network("https://zoople.in/wp-content/uploads/2022/08/Python.png",height: 150,),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 100,top: 20),
                      child: Column(
                        children: [
                          Text("PYTHON FULL STACK",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                          Text("Best Python Training Institute in kochi")
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
            child: Text("Nowadays, Python is the fastest-growing programming language and the most popular language used by developers. Discover the world of Python with Zoople, the best training institute in Kochi. Python is very easy to learn as well as to read and write to develop your skills. Python has become the trending programming language in the present world. "),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Computer proficiency is not relevant to learning Python, It offers a lot of possibilities to develop your career. This Python programming is a great choice for both beginners and experts hoping to generate their programming professions. This course covers the fundamentals of Python and Django. Python enhances the fun of programming which can be challenging and profitable."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Our courses are planned in such a way that even understudies with no programming experience. Can be not difficult to get whether you’re a first-time programmer or you’re knowledgeable about different languages. Python is appropriated under an open-source permit by the Open-Source Drive (OSI). Thus, clients can deal with it and distribute it."),
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
