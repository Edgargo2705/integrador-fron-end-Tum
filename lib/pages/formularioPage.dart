import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'formularioPage.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController _inputController1 = TextEditingController();
  TextEditingController _inputController2 = TextEditingController();
  TextEditingController _inputController3 = TextEditingController();
  TextEditingController _inputController4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Container(
        color: Color.fromARGB(247, 255, 77, 0),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bienvenido, Alejandra',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Fibra, Corazón y Sacrificio',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _inputController1,
              decoration: InputDecoration(labelText: 'Input 1'),
            ),
            TextField(
              controller: _inputController2,
              decoration: InputDecoration(labelText: 'Input 2'),
            ),
            TextField(
              controller: _inputController3,
              decoration: InputDecoration(labelText: 'Input 3'),
            ),
            TextField(
              controller: _inputController4,
              decoration: InputDecoration(labelText: 'Input 4'),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
