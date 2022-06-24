import 'package:flutter/material.dart';

void main() {
  runApp(InputTF());
}

class InputTF extends StatefulWidget {
  const InputTF({Key? key}) : super(key: key);

  @override
  State<InputTF> createState() => _InputTFState();
}

class _InputTFState extends State<InputTF> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 5,
          title: Text(
            'Input_Textfield',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Card(
            elevation: 15,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: ('Name'),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: ('Surname'),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
