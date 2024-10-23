import 'package:flutter/material.dart';
import 'mainscreen.dart'; // Import MainScreen

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key}); // Fixed Key usage

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);

    _iconAnimation = Tween<double>(begin: -15.0, end: -25.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _navigateToMainScreen() {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const MainScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 1600),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(166, 160, 35, 52),
      body: Center(
        child: GestureDetector(
          onTap: _navigateToMainScreen,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 280,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      bottom: 20,
                      child: Image.asset(
                        'assets/image/shadow.png',
                        width: 130,
                        height: 130,
                      ),
                    ),
                    AnimatedBuilder(
                      animation: _iconAnimation,
                      builder: (context, child) {
                        return Transform.translate(
                          offset: Offset(0, _iconAnimation.value),
                          child: Image.asset(
                            'assets/image/pinpoint.png',
                            width: 150,
                            height: 150,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 5),
              const Text(
                'GabayEARIST',
                style: TextStyle(
                  fontFamily: 'Arquitectura',
                  fontSize: 80,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
