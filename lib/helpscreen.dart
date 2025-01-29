import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  final TextEditingController _feedbackController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _submitFeedback() {
    if (_formKey.currentState!.validate()) {
      // Process the feedback (e.g., send to a server or save locally)
      String feedback = _feedbackController.text;

      // Here you could send feedback to a backend or database
      // For demonstration, we'll just print it to the console
      print("Feedback submitted: $feedback");

      // Clear the input field and show a confirmation
      _feedbackController.clear();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Thank you for your feedback!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
        backgroundColor: const Color.fromARGB(230, 160, 35, 52),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      bottom: -20,
                      child: Image(
                        image: const AssetImage('assets/image/shadow.png'),
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const Image(
                      image: AssetImage('assets/image/pinpoint.png'),
                      width: 120,
                      height: 120,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // About Section
              _buildCard(
                icon: Icons.info_outline,
                title: 'About GabayEARIST',
                content:
                    'GabayEARIST is a campus guide designed to help new students navigate the campus with ease. It offers an interactive map, search functionality, and building information to help students find classrooms, administrative departments, and essential facilities like libraries and cafeterias.',
              ),

              // Goal Section
              _buildCard(
                icon: Icons.flag,
                title: 'Goal of the System',
                content:
                    'The goal of GabayEARIST is to simplify the campus experience for new students, making it easier for them to adjust and explore the university without stress or confusion.',
              ),

              // Programmers Section
              _buildCard(
                icon: Icons.code,
                title: 'Developed by',
                content:
                    'This system is being developed by a team of students using cross-platform technologies such as Flutter to ensure broad accessibility across all major operating systems.',
              ),

              const SizedBox(height: 20),

              // Feedback Form Section
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.feedback,
                                color: Color.fromARGB(230, 160, 35, 52)),
                            SizedBox(width: 10),
                            Text(
                              'Leave a Feedback',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(230, 160, 35, 52),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Your feedback and suggestions are valuable to us. Please let us know how we can improve the system.',
                          style: TextStyle(fontSize: 16, height: 1.5),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: _feedbackController,
                          maxLines: 3,
                          decoration: InputDecoration(
                            hintText: 'Type your feedback here...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your feedback';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: _submitFeedback,
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(230, 160, 35, 52),
                            ),
                            child: const Text(
                                'Submit',
                                style: TextStyle(color: Colors.white),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(
      {required IconData icon,
      required String title,
      required String content}) {
    return Card(
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
              children: [
                Icon(icon, color: const Color.fromARGB(230, 160, 35, 52)),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(230, 160, 35, 52),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              content,
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _feedbackController.dispose();
    super.dispose();
  }
}
