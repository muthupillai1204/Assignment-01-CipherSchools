import 'package:flutter/material.dart';

import 'Navbar.dart';
import 'course1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: PopupMenuButton(
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHome()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(Icons.home),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("Home"),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(Icons.accessibility),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("Creator Access"),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(Icons.reviews),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("Live Reviews"),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(Icons.public),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("Community"),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Course()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(Icons.tour),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("Explore Courses"),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(Icons.logout),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("SignIn"),
                      ),
                    ],
                  ),
                ),
              ],
              child: const Padding(
                padding: EdgeInsets.only(right: 100.0),
                child: Icon(
                  Icons.menu,
                  size: 20,
                ),
              ),
            ),
          ),
          const Nav(),
        ],
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30.0,
              ),
              RichText(
                  text: const TextSpan(
                      text: "Welcome to ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                    TextSpan(
                        text: "the Future ",
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                            text: "\nof Learning! ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          )
                        ])
                  ])),
              const SizedBox(
                height: 10.0,
              ),
              RichText(
                  text: const TextSpan(
                      text: "Start Learning by best creators for",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      children: <TextSpan>[
                    TextSpan(
                      text: " absolutely Free",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                      ),
                    )
                  ])),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 150.0),
                    child: Container(
                      height: 250,
                      width: 350,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        color: Color.fromARGB(255, 78, 76, 76),
                      ),
                      child: Image.asset(
                        "assets/images/p2.jpg",
                        // fit: BoxFit.cover,

                        height: 250,
                        width: 350,
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // minimumSize: const Size(200, 59),
                  backgroundColor: Colors.orange,
                  foregroundColor: const Color.fromARGB(255, 58, 83, 221),
                  padding: const EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                ),

                // minWidth: 250,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Course()));
                },

                child: const Text(
                  "Start Learning Now ->",
                  style: TextStyle(
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Center(
                child: Text(
                  "Scroll Down \n      👇👇 ",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RichText(
                      text: const TextSpan(
                          text: "15K+ ",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                          text: "\nStudents ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        )
                      ])),
                  const SizedBox(
                    width: 30.0,
                  ),
                  RichText(
                      text: const TextSpan(
                          text: "10K+ ",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                          text: "\nCertificates delivered ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        )
                      ])),
                  const SizedBox(
                    width: 30.0,
                  ),
                  RichText(
                      text: const TextSpan(
                          text: "450K+ ",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                          text: "\nStreamed minutes ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        )
                      ])),
                  const SizedBox(
                    width: 30.0,
                  ),
                  RichText(
                      text: const TextSpan(
                          text: "12TB+ ",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                          text: "\nContent streamed in last 60 days",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        )
                      ])),
                  const SizedBox(
                    width: 30.0,
                  ),
                  RichText(
                      text: const TextSpan(
                          text: "50+ ",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                          text: "\nCreators",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        )
                      ])),
                  const SizedBox(
                    width: 30.0,
                  ),
                  RichText(
                      text: const TextSpan(
                          text: "110+ ",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                          text: "\nProgram available",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        )
                      ])),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 250,
                    width: 350,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      color: Color.fromARGB(255, 216, 203, 203),
                    ),
                    child: Image.asset(
                      "assets/images/p1.jpg",
                      // fit: BoxFit.cover,

                      height: 250,
                      width: 350,
                    ),
                  ),
                  Container(
                    height: 250,
                    width: 350,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      color: Color.fromARGB(255, 216, 203, 203),
                    ),
                    child: Image.asset(
                      "assets/images/p3.jpg",
                      // fit: BoxFit.cover,

                      height: 250,
                      width: 350,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      // pages[currentPage],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: NavigationBar(
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              NavigationDestination(
                icon: Icon(Icons.book),
                label: "Courses",
              ),
              NavigationDestination(
                  icon: Icon(Icons.explore), label: "Trending"),
              NavigationDestination(
                  icon: Icon(Icons.person), label: "My Profile"),
              NavigationDestination(
                  icon: Icon(Icons.people), label: "Following"),
              NavigationDestination(
                  icon: Icon(Icons.discord), label: "Discord"),
            ],
            // onDestinationSelected: (int index) {
            //   setState(() {
            //     currentPage = index;
            //   });
            // },
            // selectedIndex: currentPage,
          ),
        ),
      ),
    );
  }
}
