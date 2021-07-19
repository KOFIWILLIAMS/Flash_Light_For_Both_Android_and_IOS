/*import 'package:flutter/material.dart';
import 'package:light/animation.dart';
import 'package:torch/torch.dart';


void main() => runApp(MyApp());




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DumSo",
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData.dark(),
    );
  }
}



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isVisible = true;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  if(_isVisible){
                    _isVisible = !_isVisible;
                    showToast;
                    Torch.turnOn();
                  }else{
                    _isVisible = !_isVisible;
                    showToast;
                    Torch.turnOff();
                  }
                },
                child: Visibility(
                  child: Text(
                    'Turn On/Off', style: TextStyle(fontSize: 16.0, backgroundColor: Colors.black, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:torch/torch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
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
  bool _isVisible = true;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "With background color",
              style: TextStyle(fontSize: 18, color: Colors.black38),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    // AnimatedIconButton
                    AnimatedIconButton(
                      size: 35,
                      onPressed: () {
                        if (_isVisible) {
                          _isVisible = !_isVisible;
                          showToast;
                          Torch.turnOn();
                        } else {
                          _isVisible = !_isVisible;
                          showToast;
                          Torch.turnOff();
                        }
                      },
                      duration: Duration(milliseconds: 100),
                      endIcon: Icon(
                        Icons.flash_on,
                        color: Colors.white,
                      ),
                      startIcon: Icon(
                        Icons.flash_off,
                        color: Colors.purple,
                      ),
                      startBackgroundColor: Colors.white,
                      endBackgroundColor: Colors.red,
                    ),
                    // AnimatedIconButton
                    SizedBox(
                      height: 10,
                    ),
                    Text("With bg color change",
                        style: TextStyle(fontSize: 12)),
                  ],
                ),
                /*Column(
                    children: <Widget>[
                      // AnimatedIconButton
                      AnimatedIconButton(
                        size: 35,
                        onPressed: () {
                          print("button without background color pressed");
                        },
                        duration: Duration(milliseconds: 200),
                        endIcon: Icon(
                          Icons.close,
                          color: Colors.purple,
                        ),
                        startIcon: Icon(
                          Icons.add,
                          color: Colors.purple,
                        ),
                        startBackgroundColor: Colors.white,
                        endBackgroundColor: Colors.white,
                      ),
                      // AnimatedIconButton
                      SizedBox(
                        height: 10,
                      ),
                      Text("Without bg color change",
                          style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Text("Without background color",
                  style: TextStyle(fontSize: 18, color: Colors.black38)),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      // AnimatedIconButton
                      AnimatedIconButton(
                        size: 35,
                        onPressed: () {
                          print("button with color pressed");
                        },
                        duration: Duration(milliseconds: 200),
                        endIcon: Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                        startIcon: Icon(
                          Icons.add,
                          color: Colors.purple,
                        ),
                      ),
                      // AnimatedIconButton
                      SizedBox(
                        height: 10,
                      ),
                      Text("With color change", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      // AnimatedIconButton
                      AnimatedIconButton(
                        size: 35,
                        onPressed: () {
                          print("button without color change pressed");
                        },
                        duration: Duration(milliseconds: 200),
                        endIcon: Icon(
                          Icons.close,
                          color: Colors.purple,
                        ),
                        startIcon: Icon(
                          Icons.add,
                          color: Colors.purple,
                        ),
                      ),
                      // AnimatedIconButton
                      SizedBox(
                        height: 10,
                      ),
                      Text("Without color change",
                          style: TextStyle(fontSize: 12)),*/
              ],
            ),
          ],
        ),
      ),
    );
  }
}
