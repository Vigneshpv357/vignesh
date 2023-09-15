import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vignesh/Task1/splashScrn.dart';
import 'package:vignesh/Task1/verification_screen.dart';

import 'innerfiles/editprf.dart';
import 'innerfiles/flutter.dart';
import 'innerfiles/python.dart';
import 'innerfiles/softest.dart';
import 'innerfiles/uidev.dart';
import 'login.dart';
import 'package:flutter/material.dart';



class Carousel extends StatelessWidget {
  String usernameone;


  Carousel({required this.usernameone}); // const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {

  late SharedPreferences logindata;
   late String usernamee ="";


  void initial() async
  {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      usernamee = logindata.getString("username")!;
    });
  }
  late PageController _pageController;
  int currentPageIndex = 0;
  List<String> images = [
    "https://zoople.in/wp-content/uploads/2022/08/Python.png",
    "https://zoople.in/wp-content/uploads/2022/08/Vector.png",
    "https://zoople.in/wp-content/uploads/2022/09/UI-development.png",
    "https://zoople.in/wp-content/uploads/2022/09/software-testing-1.png"
  ];

  List<String> logo = ["Icons.notifications_active","Icons.settings_outlined","Icons.supervisor_account_rounded"];

  List<String> topic = ["PYTHON FULL STACK",
  "FLUTTER APP DEVELOPMENT",
    "UI DEVELOPMENT TRAINING",
    "SOFTWARE TESTING TRAINING"
  ];

  List courses = [PytonScreen(),FltrScreen(),UiScren(),softestScreen()];


  int activePage = 1;

  @override
  void initState() {
    // initial();
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(

         title: Text("Zoople Technologies",style: TextStyle(color: Colors.white),),
         backgroundColor: Colors.redAccent,
       ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.redAccent[800],
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),

            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.school_outlined),
            label: 'Course',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_circle),
            icon: Icon(Icons.account_circle),
            label: 'My Profile',
          ),
        ],
      ),
      body: <Widget>[
        Container(

          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PageView.builder(
                      itemCount: images.length,
                      pageSnapping: true,
                      controller: _pageController,
                      onPageChanged: (page) {
                        setState(() {
                          activePage = page;
                        });
                      },
                      itemBuilder: (context, pagePosition) {
                        bool active = pagePosition == activePage;
                        return slider(images,pagePosition,active);
                      }),

                ),

              ),

              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: indicators(images.length,activePage))
            ],
          ),
        ),
        Container(

          alignment: Alignment.center,
          child: ListView.builder(
            itemCount: images.length,
              itemBuilder: (BuildContext context, int index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      child: ListTile(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (context) =>
                              courses[index],
                          ),
                          );
                        },
                        leading: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(images[index],),

                        ),
                        title: Text(topic[index],style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(right: 110),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Online/Offline"),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Text("3 Months"),
                                )
                              ],
                            ),
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {  }, icon: Icon(Icons.add,color: Colors.redAccent,),
                        )
                      )
                  ),
                );
              }
          ),
        ),
        Container(

          alignment: Alignment.center,
          child: Stack(
            children: [
              ListView(
                children: [
                  Container(
                    width: 60,
                    height: 130,
                    decoration: BoxDecoration(
                        color: Colors.black12
                    ),
                  )
                ],
              ),
              Positioned(
                left: 120,
                  top: 50,
                  child: CircleAvatar(
                radius: 70,
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXi9ATL3oIc4dCZHB5M8QXgC2XPg5dabh3hA&usqp=CAU"),
                  )),
              Positioned(
                top: 150,
                  left: 210,
                  child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20)
    ),
          child: IconButton(
            onPressed: () {  },
               icon: Icon(Icons.mode_edit_outlined),

            )),
                  ),
              // Padding(
              //   padding: const EdgeInsets.only(bottom: 220),
              //   child: Center(child: Text("Username",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              // ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(left: 60,bottom: 10,top: 10),
              //       child: Row(
              //         children: [
              //           Text("Email:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
              //           Text("vkvk@gmail.com")
              //         ],
              //       )
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(left: 60,bottom: 10,top: 10),
              //       child:Row(
              //         children: [
              //           Text("Gender:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
              //           Text("Male")
              //         ],
              //       )
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(left: 60,bottom: 10,top: 10),
              //       child: Row(
              //         children: [
              //           Text("Phone :",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
              //           Text("9876543210")
              //         ],
              //       )
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(left: 60,bottom: 10,top: 10),
              //       child: Row(
              //         children: [
              //           Text("Course:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
              //           Text("Flutter")
              //         ],
              //       )
              //     ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) =>EditProf())
                          );
                        },
                        child: Text("Edit")),
                  )
              //
              //   ],
              // )

            ],
          ),
        ),
      ][currentPageIndex],
      drawer: Drawer(

        backgroundColor: Colors.white,
        child: Column(
          children: [
            Container(
              height: 180,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.redAccent
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: CircleAvatar(
                      radius: 50,

                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXi9ATL3oIc4dCZHB5M8QXgC2XPg5dabh3hA&usqp=CAU"),
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Welcome $usernamee",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),

                ],
              ),
            ),
          Card(
            child: ListTile(
              leading: Icon(Icons.notifications_none_outlined),
              title: Text("Notification"),
              
            ),
          ),
            Card(
              child: ListTile(
                leading: Icon(Icons.settings_outlined),
                title: Text("Settings"),

              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.info_outline),
                title: Text("About Us"),

              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.currency_rupee),
                title: Text("Payment Details"),

              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.feedback_outlined),
                title: Text("Feedback"),

              ),
            ),
            ElevatedButton(
                onPressed: (){
                  logindata.setBool("login",true);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loginnxt()));

                },
                child: Text("Logout"))
          ],
        ),

      ),
    );
  }
}
AnimatedContainer slider(images, pagePosition, active) {
  double margin = active ? 10 : 20;

  return AnimatedContainer(

    duration: Duration(milliseconds: 100),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(images[pagePosition]))),
  );
}

imageAnimation(PageController animation, images, pagePosition) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      print(pagePosition);


      return SizedBox(
        width: 200,
        height: 200,
        child: widget,
      );
    },
    child: Container(
      margin: EdgeInsets.all(10),
      child: Image.network(images[pagePosition]),
    ),
  );
}


List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.redAccent : Colors.black26,
          shape: BoxShape.circle),
    );
  });
}