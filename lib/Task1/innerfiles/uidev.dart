import 'package:flutter/material.dart';
class UiScren extends StatefulWidget {
  const UiScren({super.key});

  @override
  State<UiScren> createState() => _UiScrenState();
}

class _UiScrenState extends State<UiScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back,color: Colors.white,),),
        title: Text("UI Development Training",style: TextStyle(color: Colors.white),),
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
                    child: Image.network("https://zoople.in/wp-content/uploads/2022/09/UI-development.png",height: 150,),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 100,top: 20),
                      child: Column(
                        children: [
                          Text("UI DEVELOPMENT TRAINING",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                          Text("Best UI Training Institute in kochi")
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
            child: Text("Bringing life to any website in the best possible way deserves the attention of a good UI developer. Today UI development is much heard of, but unless you know how to work on it, such efforts will hardly make a difference. Learn the Best UI Development Training in Kochi to understand the core concepts and add value to websites."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Today anyone has the opportunity to learn a UI development course in Kochi under well-experienced mentors who know what the industry demands. Go beyond the technical aspects with our faculty to understand how you can understand and satisfy your end-user too. Register at the Best UI development training institute in Kerala, undertake the training, get certified, and even enjoy the added advantage of being placed at the best corporate forms in India."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("UI Development is a technological blend of adding dynamics and beauty to a website as a while. Under the UI development course in Kochi, students are taught how to code and enable the proper communication of software across various desktop platforms. Experience the Best UI Development Training in Kochi to study what are the important visual elements that every front-end developer needs to understand and implement the designs accordingly.Whether you are a first-timer in the technological world or want to scale up your IT career this will be your fruitful jump to make a notable impression on your career. UI Development never falls out of demand as the world lived on technology with a personalized and intuitive touch. Learn how to advance in the field of UI development in the most streamlined training course in Kochi."),
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
