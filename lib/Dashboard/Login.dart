import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:womensafteyhackfair/Dashboard/DashWidgets/DashAppbar.dart';

import 'Dashboard.dart';
import 'Home.dart';






  final TextEditingController usnController = TextEditingController();

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context,) {
   return tempLoginPage(context);
  }



Widget tempLoginPage(BuildContext context ){

  return Scaffold(
      body: Stack(
        children: [
          _buildCustomBackground(),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 80),
                    const Text(
                      'Rakshak',
                      style: TextStyle(
                        color: Color.fromARGB(255, 36, 36, 36),
                        fontSize: 36,
                        fontFamily: 'Helvitica',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 17,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.person, color: Color.fromARGB(255, 108, 108, 108)),
                          const SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                                                controller: usnController,

                              style: const TextStyle(color: Color.fromARGB(255, 148, 148, 148)),
                              decoration: InputDecoration(
                                hintText: 'Enter your KLS GIT username',
                                hintStyle: TextStyle(
                                  color: const Color.fromARGB(255, 163, 163, 163).withOpacity(0.7),
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                     validateStudent(usnController.text , context);              
           },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(350, 30),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                        textStyle: const TextStyle(fontSize: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Text('Login'),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'By logging in, you agree to the terms and conditions of KLS GIT.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: const Color.fromARGB(255, 179, 179, 179).withOpacity(0.7)),
                    ),
                    const SizedBox(height: 20),
                  
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomBackground() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white, Color.fromARGB(255, 173, 182, 255)],
        ),
      ),
    );
  }


void validateStudent(String usn, BuildContext context) {


      if (usn == null) {
        // Show an error message
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("Error"),
            content: const Text("Please Enter the Correct USN!"),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("OK"),
              ),
            ],
          ),
        );
      } else{
        Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Dashboard(),
        ),
      );
      }
    }
}
