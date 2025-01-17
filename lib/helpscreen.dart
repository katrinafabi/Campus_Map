import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
        backgroundColor: Color.fromARGB(230, 160, 35, 52),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with Positioned Images, Centered and Larger Size
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      bottom: -20,
                      child: Image(
                        image: AssetImage('assets/image/shadow.png'),
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/image/pinpoint.png'),
                      width: 120,
                      height: 120,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // About Section in a Card with Icon
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.info_outline, color: Color.fromARGB(230, 160, 35, 52)),
                          SizedBox(width: 10),
                          Text(
                            'About GabayEARIST',
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color.fromARGB(230, 160, 35, 52)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'GabayEARIST is a campus guide designed to help new students navigate the campus with ease. It offers an interactive map, search functionality, and building information to help students find classrooms, administrative departments, and essential facilities like libraries and cafeterias.',
                        style: TextStyle(fontSize: 16, height: 1.5),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Goal Section in a Card with Icon
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.flag, color: Color.fromARGB(230, 160, 35, 52)),
                          SizedBox(width: 10),
                          Text(
                            'Goal of the System',
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color.fromARGB(230, 160, 35, 52)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'The goal of GabayEARIST is to simplify the campus experience for new students, making it easier for them to adjust and explore the university without stress or confusion.',
                        style: TextStyle(fontSize: 16, height: 1.5),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Programmers Section in a Card with Icon
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.code, color: Color.fromARGB(230, 160, 35, 52)),
                          SizedBox(width: 10),
                          Text(
                            'Developed by',
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color.fromARGB(230, 160, 35, 52)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'This system is being developed by a team of students using cross-platform technologies such as Flutter to ensure broad accessibility across all major operating systems.',
                        style: TextStyle(fontSize: 16, height: 1.5),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Footer Section with Divider
              const Divider(
                color: Color.fromARGB(230, 160, 35, 52),
                thickness: 1,
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  '',
                  style: TextStyle(color: Color.fromARGB(230, 160, 35, 52)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
