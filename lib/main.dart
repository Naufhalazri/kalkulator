import 'package:flutter/material.dart';
import 'package:kalkulator/buttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> buttons =
  [
    'C', 'DEL', '%', '/',
    '9', '8', '7', 'x',
    '6', '5', '4', '-',
    '3', '2', '1', '+',
    '0', '.', 'ANS', '=',
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index){
                    return Mybutton(
                      buttonText: buttons[index],
                      color: isOperator(buttons[index]) ? Colors.blueAccent : Colors.blue[50],
                      textColor: isOperator(buttons[index]) ? Colors.white: Colors.blueAccent,
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
  bool isOperator(String x){
    if(x == '%' || x == 'x' || x == '-' || x == '+' || x =='=' || x =='/') {
      return true;
    }
    return false;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}