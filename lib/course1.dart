import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Course extends StatelessWidget {
  List imageList = [
    {"id": 1, "image_path": 'assets/images/p1.jpg'},
    {"id": 2, "image_path": 'assets/images/p2.jpg'},
    {"id": 3, "image_path": 'assets/images/p3.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

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
            const Cnav(),
          ],
          backgroundColor: Colors.white,
          shadowColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      print(currentIndex);
                    },
                    child: CarouselSlider(
                      items: imageList
                          .map(
                            (item) => Image.asset(
                              item['image_path'],
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          )
                          .toList(),
                      carouselController: carouselController,
                      options: CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),
                          autoPlay: true,
                          aspectRatio: 2,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            currentIndex = index;
                          }),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.asMap().entries.map((entry) {
                        print(entry);
                        print(entry.key);
                        return GestureDetector(
                          onTap: () =>
                              carouselController.animateToPage(entry.key),
                          child: Container(
                            width: currentIndex == entry.key ? 17 : 7,
                            height: 7,
                            margin: const EdgeInsets.symmetric(horizontal: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: currentIndex == entry.key
                                    ? Colors.orange
                                    : Colors.teal),
                          ),
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Recommended courses",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              CarouselSlider(
                items: imageList
                    .map(
                      (item) => Image.asset(
                        item['image_path'],
                        fit: BoxFit.cover,
                        width: 300,
                      ),
                    )
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 2,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      currentIndex = index;
                    }),
              ),
            ],
          ),
        ));
  }
}

class Cnav extends StatelessWidget {
  const Cnav({super.key});

  @override
  Widget build(BuildContext context) {
    bool isSwich = false;
    return Container(
      constraints: const BoxConstraints(maxWidth: 1200),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text(
          "CipherSchools",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 35,
                width: 500,
                color: const Color.fromARGB(255, 231, 228, 228),
                child: const CupertinoSearchTextField()),
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.notification_add),
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.person),
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.refresh),
            const SizedBox(
              width: 20,
            ),
            Switch(
                value: isSwich,
                onChanged: (bool newBool) {
                  isSwich = newBool;
                  if (newBool == true) {
                    debugPrint("Its enabled");
                  } else {
                    debugPrint("Its disabled");
                  }
                }),
          ],
        ),
      ]),
    );
  }
}
