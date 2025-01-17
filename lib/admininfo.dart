// admininfo.dart
import 'package:flutter/material.dart';

class AdminInfoScreen extends StatelessWidget {
  const AdminInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Information'),
        backgroundColor: Color.fromARGB(230, 160, 35, 52),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          _buildCollegeSection(
            context,
            collegeName: 'Executive Officials',
            collegeLogo: '',
            deanName: 'Dr. Rogelio T. Mamaradlo',
            deanPosition: 'President',
            adminemail: 'rmamaradlo@earist.edu.ph',
            professors: [
              {
                'name': 'Dr. Eric C. Mendoza',
                'position': 'Vice President for Academic Affairs',
                'faculty': 'ecmendoza@earist.edu.ph',
              },
              {
                'name': 'Dr. Grant B. Cornell',
                'position': 'Vice President for Administration and Finance\nDean, Graduate School',
                'faculty': 'gbcornell@earist.edu.ph',
              },
              {
                'name': 'Ms. Julie Ann O. Espiritu',
                'position': 'Director, Student Admission Registration and Records Management Services',
                'faculty': 'joespiritu@earist.edu.ph',
              },
              {
                'name': 'Engr. Roberto M. Liwanag',
                'position': 'Director, Planning Services',
                'faculty': 'rmliwanag@earist.edu.ph',
              },
              {
                'name': 'Dr. Marlene M. Monterona',
                'position': 'Director, Research Development  Services',
                'faculty': 'mmmonterona@earist.edu.ph',
              },
              {
                'name': 'Dr. Eriberto R. Astorga Jr.',
                'position': 'Director, Extension and Community Services',
                'faculty': 'erastorga@earist.edu.ph',
              },
              {
                'name': 'Mr. Benigno A. Castillo',
                'position': 'Director, Quality Assurance',
                'faculty': 'bacastillo@earist.edu.ph',
              },
              {
                'name': 'Dr. Yolanda A. Lara',
                'position': 'Director, Financial Management Services',
                'faculty': 'yalara@earist.edu.ph',
              },
              {
                'name': 'Dr. Giovanni L. Ahunin',
                'position': 'Director, Administrative Services',
                'faculty': 'glahunin@earist.edu.ph',
              },
              {
                'name': 'Ms. Carina N. Romaquin',
                'position': 'Director, Library Services',
                'faculty': 'cnromaquin@earist.edu.ph',
              },
            ],
          ),
          _buildCollegeSection(
            context,
            collegeName: 'College of Computer Studies\nInformation Technology Department',
            collegeLogo: 'assets/image/ccs.png',
            deanName: 'Dr. Jesus S. Paguigan',
            deanPosition: 'Dean, College of Computer Studies',
            adminemail: 'spaguigan@earist.edu.ph',
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
            adminemail: 'emsangalang@earist.edu.ph',
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
                'name': 'Prof. Renz Robert E. Salvador',
                'faculty': 'BTLED - Home Economics & Industrial Arts',
                'position': 'Assistant Professor II\nAssociate Dean',                
              },
              {
                'name': 'Prof. Centrey L. Ramos',
                'faculty': 'BTLED - Home Economics & Industrial Arts',
                'position': 'Instructor I\nCollege Secretary',                
              },
              {
                'name': 'Prof. Ernesto C. Pacheco Jr.',
                'faculty': 'BTLED - Home Economics & Industrial Arts',
                'position': 'Instructor I\nLaboratory Custodian, EARIST TEDPRO',                
              },
              {
                'name': 'Prof. Lara May G. Cornell',
                'faculty': 'BTLED - Home Economics & Industrial Arts',
                'position': 'Instructor I\nAdviser, T.L.E Students Society',                
              },
              {
                'name': 'Prof. Robee Dr. Brooks, J.D',
                'faculty': 'BTLED - Home Economics & Industrial Arts',
                'position': 'Guest Lecturer',                
              },
              {
                'name': 'Prof. Francis G. Elizarde',
                'faculty': 'BTLED - Home Economics & Industrial Arts',
                'position': 'Guest Lecturer',                
              },
            ],
          ),
           _buildCollegeSection(
            context,
            collegeName: 'College of Engineering',
            collegeLogo: 'assets/image/cen.png',
            deanName: 'Engr. Jorge P. Bautista',
            deanPosition: 'Dean',
            adminemail: 'jpbautista@earist.edu.ph',
            professors: [
              {
                'name': 'Prof. Meriam L. Tria',
                'faculty': 'CEN',
                'position': 'Associate Dean',                
              },
              {
                'name': 'Prof. Jerrymias G. Avergonzado',
                'faculty': 'CEN',
                'position': 'Instructor I',                
              },
              {
                'name': 'Prof. Ronald B. Baral',
                'faculty': 'CEN',
                'position': 'OIC-Director, Management Information System',                
              },
              {
                'name': 'Prof. Lydia N. Era',
                'faculty': 'CEN',
                'position': 'Department Head, BS Civil Engineering',                
              },
              {
                'name': 'Prof. Minerva C. Zoleta',
                'faculty': 'CEN',
                'position': 'Department Head, Computer Engineering',                
              },
              {
                'name': 'Prof. John Andrew A. Tiria',
                'faculty': 'CEN',
                'position': 'Department Head, BS Chemical Engineering',                
              },
            ],
           ),
           _buildCollegeSection(
            context,
            collegeName: 'College of Industrial Technology',
            collegeLogo: 'assets/image/cit.png',
            deanName: 'Dr. Erwin P. Ordovez',
            deanPosition: 'Dean',
            adminemail: 'epordovez@earist.edu.ph',
            professors: [
              {
                'name': 'Prof. Ariel . Tobias',
                'faculty': 'CIT',
                'position': 'Adminstrative Assistant',                
              },
              {
                'name': 'Prof. Roberto E. Reynoso',
                'faculty': 'CIT',
                'position': 'COE, Coordinator',                
              },
              {
                'name': 'Prof. Josep Angelo C. Tanuecoz',
                'faculty': 'CIT',
                'position': 'Research Coordinator',                
              },
              {
                'name': 'Prof. Giovanni L. Ahunin',
                'faculty': 'CIT',
                'position': 'Extension Coordinator',                
              },
              {
                'name': 'Prof. Jocelyn R. Moreno',
                'faculty': 'CIT',
                'position': 'Academic Supervisor',                
              },
              {
                'name': 'Prof. Ivan F. Castillano',
                'faculty': 'CIT',
                'position': 'Supervisor, Electro-Electrical Technology',                
              },
            ],
           ),
            _buildCollegeSection(
            context,
            collegeName: 'College of Hospitality and Tourism Management',
            collegeLogo: 'assets/image/chtm.png',
            deanName: 'Dr. Maria Rhoda D. Dinaga',
            deanPosition: 'Dean',
            adminemail: 'mddinaga@earist.edu.ph',
            professors: [
              {
                'name': 'Dr. Loida R. Banzuelo',
                'faculty': 'Hospitality Management',
                'position': 'Department Head',                
              },
              {
                'name': 'Prof. Perlita M. Mallari',
                'faculty': 'Tourism Management',
                'position': 'Department Head',                
              },
              {
                'name': 'Prof. Dulce B. Aurelio',
                'faculty': 'CHTM',
                'position': 'Chief of Internship Program Chair',                
              },
              {
                'name': 'Prof. Jocelyn L. Aguas',
                'faculty': 'CHTM',
                'position': 'Program Chair (Student Government)',                
              },
              {
                'name': 'Prof. Glessie Ann M. Basa',
                'faculty': 'CHTM',
                'position': 'Program Chair(Gender and Development)',                
              },
              {
                'name': 'Prof. Pristine Joy Castro',
                'faculty': 'CHTM',
                'position': 'Chief of Partnership(IAS)',                
              },
              {
                'name': 'Prof. Tenie P. Lirazan',
                'faculty': 'CHTM',
                'position': 'College Secretary Program Chair, Extension Services',                
              },
              {
                'name': 'Prof. Robert P. Mallon',
                'faculty': 'CHTM',
                'position': 'Program Chair, Alumni Services',                
              },
              {
                'name': 'Dr. Joselito Mabansag',
                'faculty': 'CHTM',
                'position': 'Director, (IAS)',                
              },
              {
                'name': 'Prof. Angela M. Caaya',
                'faculty': 'CHTM',
                'position': 'Chief, Extension Services',                
              },            
            ],
           ),
           _buildCollegeSection(
            context,
            collegeName: 'College of Arts & Science',
            collegeLogo: 'assets/image/cas.png',
            deanName: 'Mrs. Rodora T. Oliveros',
            deanPosition: 'Dean',
            adminemail: 'rtoliveros@earist.edu.ph',
            professors: [
              {
                'name': 'Prof. Lester C. Bernardino',
                'faculty': 'Applied Physics',
                'position': 'Department Head',                
              },
              {
                'name': 'Prof. Raymund B. Bolalin',
                'faculty': 'CAS',
                'position': 'Program Chair(Scientific Computing Research Lab)',                
              },
              {
                'name': 'Prof. Reenier R. Ledesma',
                'faculty': 'CAS',
                'position': 'Program Chair(College Student Government)',                
              },
              {
                'name': 'Prof. Hiromi Rivas',
                'faculty': 'CAS',
                'position': 'Instructor I',                
              },   
            ],
           ),
           _buildCollegeSection(
            context,
            collegeName: 'College of Criminal Justice',
            collegeLogo: 'assets/image/ccje.png',
            deanName: 'Dr. Anabel D. Riva',
            deanPosition: 'Dean',
            adminemail: 'driva@earist.edu.ph',
            professors: [
              {
                'name': 'Prof. May Liza Cañas',
                'faculty': 'CCJE',
                'position': 'Associate Dean, Program Chair, Alumni and College Student Government',                
              },
              {
                'name': 'Prof. Juan Leonardo B. Britanico',
                'faculty': 'CCJE',
                'position': 'Program Chair, Extension, Guidance and Gender and Development.',                
              },  
            ],
           ),
           _buildCollegeSection(
            context,
            collegeName: 'College of Architecture and Fine Arts',
            collegeLogo: 'assets/image/cafa.png',
            deanName: 'Ar. Diane A. Jose',
            deanPosition: 'Dean',
            adminemail: 'dajose@earist.edu.ph',
            professors: [
              {
                'name': '',
                'faculty': '',
                'position': '',  
              },
            ],
           ),
           _buildCollegeSection(
            context,
            collegeName: 'College of Business and Public Administration',
            collegeLogo: 'assets/image/cba.png',
            deanName: 'Dr. Willy O. Gapasin',
            deanPosition: 'Dean',
            adminemail: 'wogapasin@earist.edu.ph',
            professors: [
              {
                'name': '',
                'faculty': '',
                'position': '',  
              },
            ],
           ),
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
  required String adminemail,
  required List<Map<String, String>> professors,
}) {
  return Card(
    color: Colors.grey[100], // Light background color for the card
    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    elevation: 4, // Add shadow for depth
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
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 87, 0, 0), // Color for the college name
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      deanName,
                      style: const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      deanPosition,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      adminemail,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 32, 32, 32),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(color: Color.fromARGB(255, 139, 0, 0)), // Add a colored divider
          ExpansionTile(
            title: const Text(
              'Professors',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            iconColor: Colors.blueGrey, // Color for the expansion arrow
            children: professors.map((professor) {
              return ListTile(
                title: Text(
                  professor['name']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (professor['faculty'] != null)
                      Text(
                        professor['faculty']!,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    Text(
                      professor['position']!,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
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
