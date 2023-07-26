import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prime Number Checker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0 ;
  bool isPrime = false;

  bool checkPrime(int num) {
    if (num < 1) {
      return false;
    }

    for (int i = 2; i <= num / 2; i++) {
      if (num % i == 0) {
        return false;
      }
    }

    return true;
  }

  void onCheckButtonPressed() {
    setState(() {
      isPrime = checkPrime(number);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kiểm tra số nguyên tố'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Text(
        'Nhập số:',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                number = int.tryParse(value) ?? 0;
                isPrime = false;
              });
            },
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: onCheckButtonPressed,
          child: Text('Check'),
        ),
        SizedBox(height: 10),
        Text(
          isPrime ? 'Là số nguyên tố.' : 'Không phải số nguyên tố',
          style: TextStyle(fontSize: 20),
        ),
        ],
      ),
    ),
    );
  }
}
