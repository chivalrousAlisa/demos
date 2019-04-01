import 'package:flutter/material.dart';

import './star.dart';
import './about.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
      //注册路由表
      routes: {
        "about": (context) => About(),
        "star": (context) => Star(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text("star"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, 'star');
                //导航到新路由
                // Navigator.push(context,
                //     new MaterialPageRoute(builder: (context) {
                //   return new Star();
                // }));
              },
            ),
            FlatButton(
              child: Text("about"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.pushNamed(context, 'about');
                // Navigator.push(context,
                //     new MaterialPageRoute(builder: (context) {
                //   return new About();
                // }));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}