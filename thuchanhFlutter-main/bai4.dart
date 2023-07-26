import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Máy tính'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  late TextEditingController _aController;
  late TextEditingController _bController;
  String _result = '';

  @override
  void initState() {
    super.initState();
    _aController = TextEditingController();
    _bController = TextEditingController();
  }

  @override
  void dispose() {
    _aController.dispose();
    _bController.dispose();
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String convertToWords(int number) {
    if (number == 0) {
      return "zero";
    }

    List<String> ones = [
      "", "một", "hai", "ba", "bốn", "năm", "sáu", "bảy", "tám", "chín",
      "mười", "mười một", "mười hai", "mười ba", "mười bốn", "mười lăm", "mười sáu",
      "mười bảy", "mười tám", "mười chín"
    ];

    List<String> tens = [
      "", "", "hai mươi", "ba mươi", "bốn mươi", "năm mươi", "sáu mươi", "bảy mươi", "tám mươi", "chín mươi"
    ];

    String convertGroup(int num) {
      String result = "";

      if (num >= 100) {
        if(num % 100 < 10){
          int hundred = num ~/ 100;
          result += "${ones[hundred]} trăm lẻ ";
          num %= 100;
        }else{
          int hundred = num ~/ 100;
          result += "${ones[hundred]} trăm ";
          num %= 100;
        }
      }

      if (num >= 20) {
        int ten = num ~/ 10;
        result += "${tens[ten]} ";
        num %= 10;
      }

      if (num > 0) {
        result += ones[num];
      }

      return result.trim();
    }

    String result = "";

    if (number >= 1000) {
      int thousand = number ~/ 1000;
      result += "${convertGroup(thousand)} ngàn ";
      number %= 1000;
    }

    result += convertGroup(number);

    return result;
  }

  void _onAdd() {
    int a = int.tryParse(_aController.text) ?? 0;
    int b = int.tryParse(_bController.text) ?? 0;
    int sum = a + b;
    setState(() {
      _result = 'Kết quả: ${(sum)}';
    });
  }

  void _onSubtract() {
    int a = int.tryParse(_aController.text) ?? 0;
    int b = int.tryParse(_bController.text) ?? 0;
    int difference = a - b;
    setState(() {
      _result = 'Kết quả: ${(difference)}';
    });
  }

  void _onMultiply() {
    int a = int.tryParse(_aController.text) ?? 0;
    int b = int.tryParse(_bController.text) ?? 0;
    int product = a * b;
    setState(() {
      _result = 'Kết quả: ${(product)}';
    });
  }

  void _onDivide() {
    int a = int.tryParse(_aController.text) ?? 0;
    int b = int.tryParse(_bController.text) ?? 1;
    double quotient = a / b;
    setState(() {
      _result = 'Kết quả: ${(quotient.toInt())}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Thái Bình Dương',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 16),
            Image.network(
              'data:image/jpeg;base64,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',
              height: 100,
              width: 100,
            ),

            const SizedBox(height: 20),
            TextField(
              controller: _aController,
              decoration: InputDecoration(labelText: 'Nhập số a'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _bController,
              decoration: InputDecoration(labelText: 'Nhập số b'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            Text(
              _result,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _onAdd,
                  child: Text(
                    '+',
                    style: TextStyle(
                      color: Colors.black, // Đặt màu chữ cho nút (màu đen)
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // Đặt màu nền cho nút (màu vàng)
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0), // Đặt giá trị theo nhu cầu
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: _onSubtract,
                  child: Text(
                    '-',
                    style: TextStyle(
                      color: Colors.black, // Đặt màu chữ cho nút (màu đen)
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // Đặt màu nền cho nút (màu vàng)
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0), // Đặt giá trị theo nhu cầu
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: _onMultiply,
                  child: Text(
                    '*',
                    style: TextStyle(
                      color: Colors.black, // Đặt màu chữ cho nút (màu đen)
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // Đặt màu nền cho nút (màu xanh)
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0), // Đặt giá trị theo nhu cầu
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: _onDivide,
                  child: Text(
                    '/',
                    style: TextStyle(
                      color: Colors.black, // Đặt màu chữ cho nút (màu đen)
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow, // Đặt màu nền cho nút (màu vàng)
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0), // Đặt giá trị theo nhu cầu
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),

    );
  }
}