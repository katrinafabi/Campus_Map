import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  final TextEditingController _feedbackController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _submitFeedback() async {
  if (_formKey.currentState!.validate()) {
    String feedback = _feedbackController.text;
    String email = 'fabikatrina88@gmail.com'; // Replace with your email
    String subject = Uri.encodeComponent('GabayEARIST Feedback');
    String body = Uri.encodeComponent(feedback);

    final emailUri = Uri(
      scheme: 'mailto',
      path: 'fabikatrina88@gmail.com',
      query: 'subject=$subject&body=$body',
    );

    print('Launching email URI: $emailUri'); // Debugging statement

    if (await canLaunchUrl(emailUri)) {
      bool launched = await launchUrl(emailUri);
      if (!launched) {
        print('Failed to launch email client');
      } else {
        print('Email client launched');
      }
    } else {
      print('Cannot launch email URI');
    }
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

  @override
  void dispose() {
    _feedbackController.dispose();
    super.dispose();
  }
}
