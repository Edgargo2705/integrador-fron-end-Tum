import 'package:flutter/material.dart';
import 'dart:ui';
import 'homePage.dart';


class CustomTextField extends StatefulWidget {
  final String labelText;
  final IconData prefixIcon;
  

  CustomTextField({required this.labelText, required this.prefixIcon});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}


class _CustomTextFieldState extends State<CustomTextField> {
  bool _hasFocus = false;


  @override
  Widget build(BuildContext context) {



    return Container(
      width: 300,
      child: TextField(
        onTap: () {
          setState(() {
            _hasFocus = true;
          });
        },
        onSubmitted: (value) {
          setState(() {
            _hasFocus = false;
          });
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(  // Aquí es donde se define el color cuando el campo tiene foco
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 68, 0), width: 2.0),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: widget.labelText,
          labelStyle: TextStyle(
            color: _hasFocus ? Color.fromARGB(255, 121, 121, 121) : Colors.grey,
          ),
          prefixIcon: Icon(
            widget.prefixIcon,
            color: _hasFocus ? Color.fromARGB(255, 161, 161, 161) : Colors.grey,
          ),
          filled: true,
          fillColor: Colors.white.withOpacity(0.5),
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final gradient = LinearGradient(
    colors: [Color(0xFFFF2E00), Color(0xFFBB0C0C)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      home: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/foto1.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black.withOpacity(0),
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Center(
              child: Container(
                width: 350,
                height: 300,
                margin: EdgeInsets.only(top: 300),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'SIGN IN',
                        style: TextStyle(fontSize: 24, color: Colors.grey),
                      ),
                      SizedBox(height: 20),
                      CustomTextField(
                        labelText: 'Name',
                        prefixIcon: Icons.person,
                      ),
                      SizedBox(height: 20),
                      CustomTextField(
                        labelText: 'Password',
                        prefixIcon: Icons.lock,
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(10),
                            child: Ink(
                              height: 50,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFFF2E00),
                                    Color(0xFFBB0C0C)
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                                child: Center(
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => const HomePage()), // Reemplaza HomeView() con el nombre de tu vista de inicio
                                      );                                    
                                      },
                                      child: Text(
                                      'SIGN IN',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                            ),
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
    );
  }
  
}

