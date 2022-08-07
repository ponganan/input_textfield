import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(InputTF());
}

class InputTF extends StatefulWidget {
  const InputTF({Key? key}) : super(key: key);

  @override
  State<InputTF> createState() => _InputTFState();
}

class _InputTFState extends State<InputTF> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final List<Transaction> transaction = [
    Transaction(
      id: 't1',
      title: 'New Shoes88',
      amount: 69.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'shirt722',
      amount: 190.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: '333333',
      amount: 211.1255,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 5,
          title: Text(
            'Input Textfield 8/8/2022 1.15',
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
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: ('Title Test'),
                  ),
                  controller: titleController,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: ('Amount'),
                  ),
                  controller: amountController,
                ),
                FlatButton(
                  onPressed: () {
                    print(titleController.text);
                    print(amountController.text);
                  },
                  child: Text(
                    'Add Transaction',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                ),
                Column(
                  children: transaction.map((tx) {
                    return Card(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 25,
                            ),
                            child: Text(
                              tx.amount.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.purple,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.all(10),
                          ),
                          Column(
                            children: <Widget>[
                              //****** new Dart version have to use this syntax
                              // example
                              // Text(tx.title),
                              // new syntax
                              // Text(tx.title ?? ''), // for accept null safety
                              //******
                              Text(tx.title ?? ''),
                              Text(tx.date.toString()),
                            ],
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
