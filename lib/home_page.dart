import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    var num1=0, num2=0, sum=0;

    final TextEditingController t1 = new TextEditingController(text: "0");
    final TextEditingController t2 = new TextEditingController(text: "0");


  void doAddition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

    void doSubtraction(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

    void doMullt(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }
  void doDiv(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Output: $sum",
              style:TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              )),
              TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Enter First Number"),
                  controller: t1,),
              TextField(
                  keyboardType: TextInputType.number,
                  decoration:
                      InputDecoration(hintText: "Enter Secoond Number"),
                  controller: t2,),
        
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                      child: Text('+'),
                      color: Colors.greenAccent,
                      onPressed: doAddition,),
                  MaterialButton(
                      child: Text('-'),
                      color: Colors.greenAccent,
                      onPressed: doSubtraction),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                      child: Text('*'),
                      color: Colors.greenAccent,
                      onPressed:doMullt),
                  MaterialButton(
                      child: Text('/'),
                      color: Colors.greenAccent,
                      onPressed:doDiv,)
                ],
              )
            ],
          )),
    );
  }
}
