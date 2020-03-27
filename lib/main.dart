import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool efeito = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            AnimatedCrossFade(
              firstChild: Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              secondChild: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
              crossFadeState:
                  efeito ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(milliseconds: 500),
            ),
            Container(
              height: 100,
              width: 100,
              child: RaisedButton(
                color: efeito ? Colors.blue : Colors.red,
                child: Text("Efeito"),
                onPressed: (){
                setState(() {
                  if (efeito) {
                    efeito = false;
                  }else{
                    efeito = true;
                  }
                });
              }),
            )
          ],
        ),
      ),
    );
  }
}
