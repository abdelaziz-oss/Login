import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_task/screens/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.network(
              'https://images.hdqwalls.com/download/flutter-logo-4k-qn-1080x2400.jpg', // Replace with your image URL or asset
              fit: BoxFit.cover,
            ),
          ),
          // Centered Container for Rounded Pictures
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Rounded Pictures
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 45),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: NetworkImage(
                            'https://images.hdqwalls.com/download/flutter-logo-4k-qn-1080x2400.jpg'), // Replace with your image URL or asset
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            'https://images.hdqwalls.com/download/flutter-logo-4k-qn-1080x2400.jpg'), // Replace with your image URL or asset
                      ),
                    ]),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Lets Get Started!',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 75,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsets.only(right: 125),
                  child: Text(
                    'Grow Together',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(height: 40),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> const LoginScreen()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Colors.black), // Set background color
                  ),
                  child: const Text(
                    'JOIN NOW',
                    style: TextStyle(color: Colors.white , fontSize: 40),
                  ),
                )
                // Text Fields and Login Button
              ],
            ),
          ),
        ],
      ),
    );
  }
}
