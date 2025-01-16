// admininfo.dart
import 'package:flutter/material.dart';

class AdminInfoScreen extends StatelessWidget {
  const AdminInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Information'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        children: [
          _buildCollegeSection(
            context,
            collegeName: 'College of Computer Studies\nInformation Technology Department',
            collegeLogo: 'assets/image/ccs.png',
            deanName: 'Dr. Jesus S. Paguigan',
            deanPosition: 'Dean, College of Computer Studies',
            professors: [
              {
                'name': 'Prof. Haze F. Anuncio, MIT',
                'position': 'Program Chair',
              },
              {
                'name': 'Prof. Larry T. Rutaquio Jr., MIT',
                'position': 'Instructor I',
              },
              {
                'name': 'Prof. Ernanie M. Carlos Jr., MIT',
                'position': 'Instructor I',
              },
              {
                'name': 'Prof. Edgrado R. Sison, MIT',
                'position': 'Instructor I',
              },
              {
                'name': 'Prof. Melody L. Gabas',
                'position': 'Instructor I',
              },
              {
                'name': 'Prof. Joevelyn W. Fajardo, MIT',
                'position': 'Instructor II',
              },
              {
                'name': 'Prof. Dhani San Jose',
                'position': 'Instructor I',
              },
              {
                'name': 'Prof. Ma.Jasmine Rose D. Macasil, MIT',
                'position': 'Instructor I',
              },
              {
                'name': 'Prof. Jonnifer C. Mandigma',
                'position': 'Part-Time Instructor',
              },
              {
                'name': 'Prof. Erwinaldgeriko F. Lagda',
                'position': 'Part-Time Instructor',
              },
              {
                'name': 'Prof. James Darryl D. Bungay',
                'position': 'Program Chair, Alumni',
              },
              {
                'name': 'Prof. Arjo R. Ladia',
                'position': 'Instructor',
              },
              {
                'name': 'Prof. Sheila Marie M. Matias',
                'position': 'Instructor',
              },
              // Add more professors as needed
            ],
          ),
          _buildCollegeSection(
            context,
            collegeName: 'College of Education',
            collegeLogo: 'assets/image/ced.png',
            deanName: 'Dr. Evangeline M. Sangalang',
            deanPosition: 'Dean\nProgram Chair, BSE - Mathematics\nProgram Chsir, MAT - Mathematics',
           
            professors: [
              {
                'name': 'Prof. Daisy Mae R. Bongtiwon',
                'faculty': 'BSE - Mathematics',
                'position': 'Associate Professor II',                
              },
              {
                'name': 'Prof. Elsa R. Cagatan',
                'faculty': 'BSE - Mathematics',
                'position': 'Instructor III\nCoordinator, Campus Ministry',                
              },
              {
                'name': 'Prof. Lawrence C. Durban',
                'faculty': 'BSE - Mathematics',
                'position': 'Instructor I',                
              },
              {
                'name': 'Dr. Allan Q. Quismundo',
                'faculty': 'BSE - Mathematics',
                'position': 'Assistant Professor III\nExecutive Secretary to the EARIST President\nOIC - Dean, Graduate School',                
              },
              {
                'name': 'Dr. Ailene Tuzon',
                'faculty': 'BSE - Mathematics',
                'position': 'Instructor I\nProgram Chair, Research',                
              },
              {
                'name': 'Prof. Meriam L. Tria',
                'faculty': 'BSE - Mathematics',
                'position': 'Instructor I\nAssociate Dean, College of Engineering',                
              },
              {
                'name': 'Prof. Raffy A. Murilla',
                'faculty': 'BSE - Science',
                'position': 'Instructor I\nAdviser, CED Science Club',                
              },
              {
                'name': 'Prof. Benjamin A. Haboc',
                'faculty': 'BSE - Science',
                'position': 'Associate Professor II',                
              },
              {
                'name': 'Dr. Eleonor T. Salvador',
                'faculty': 'BSE - Science',
                'position': 'Associate Professor II\nProgran Chair, MAT - Science',                
              },
              {
                'name': 'Prof. Aimelyn Zuniga',
                'faculty': 'BSE - Science',
                'position': 'Guest Lecturer',                
              },
              {
                'name': 'Prof. Marie Charisse C. Jeremillos',
                'faculty': 'BSNED - Generalist',
                'position': 'Instructor I',                
              },
              {
                'name': 'Prof. Raymond D. Cansino',
                'faculty': 'BSNED - Generalist',
                'position': 'Adviser\nSpecial Educators Club',                
              },
              {
                'name': 'Prof. Mathew N. Gamboa',
                'faculty': 'BSNED - Generalist',
                'position': 'Instructor I\nCoordinator, Library Services',                
              },
              {
                'name': 'Prof. Amparo O. Morales',
                'faculty': 'BSNED - Generalist',
                'position': 'Chief,\nHuman Resource Management',                
              },
              {
                'name': 'Prof. Lorena M. De Jesus',
                'faculty': 'BSNED - Generalist',
                'position': 'Guest Lecturer',                
              },
              {
                'name': 'Prof. Renz Robert E. Salvador',
                'position': 'Associate Dean\nProgram Chair, BTLED - Home Economics\nProgram Chair, BTLED - Industrial Arts\nProgram Chair, National Service Training Program',                
              },

              // Add more professors as needed
            ],
          ),
          // Add more colleges as needed
        ],
      ),
    );
  }

Widget _buildCollegeSection(
  BuildContext context, {
  required String collegeName,
  required String collegeLogo,
  required String deanName,
  required String deanPosition,
  required List<Map<String, String>> professors,
}) {
  return Card(
    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(collegeLogo),
                radius: 30,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      collegeName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(deanName),
                    Text(deanPosition),
                  ],
                ),
              ),
            ],
          ),
          const Divider(),
          ExpansionTile(
            title: const Text(
              'Professors',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            children: professors.map((professor) {
              return ListTile(
                title: Text(professor['name']!),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (professor['faculty'] != null)
                      Text(professor['faculty']!),
                    Text(professor['position']!),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    ),
  );
}

}
