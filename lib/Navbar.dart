import 'package:flutter/material.dart';
import 'package:intern_webapp/course1.dart';

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return const DesktopNavbar();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 120) {
        return const DesktopNavbar();
      } else {
        return const MobileNavbar();
      }
    });
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1200),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text(
          "CipherSchools",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Row(
          children: const [
            Text(
              "Home",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              "Creator Access",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              "Live Reviews",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              "Community",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              // minimumSize: const Size(200, 59),
              backgroundColor: Colors.orange,
              foregroundColor: const Color.fromARGB(255, 58, 83, 221),
              padding: const EdgeInsets.all(15.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
            ),

            // minWidth: 250,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Course()));
            },

            child: const Text(
              "Explore Courses",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
      ]),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text(
        "CipherSchools",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Home",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              "Creator Access",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              "Live Reviews",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              "Community",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            // minimumSize: const Size(200, 59),
            backgroundColor: Colors.orange,
            foregroundColor: const Color.fromARGB(255, 58, 83, 221),
            padding: const EdgeInsets.all(15.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
          ),

          // minWidth: 250,
          onPressed: () {},

          child: const Text(
            "Explore Courses",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    ]);
  }
}
