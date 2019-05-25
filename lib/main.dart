import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

Map entries = {};

class _MyHomePageState extends State<MyHomePage> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic RadioListTile Example"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView.builder(
              controller: controller,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      RadioListTile<int>(
                        groupValue: entries[index],
                        value: 0,
                        title: Text("Entry value 0"),
                        onChanged: (int value) {
                          setState(() {
                            entries[index] = value;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        groupValue: entries[index],
                        value: 1,
                        onChanged: (int value) {
                          setState(() {
                            entries[index] = value;
                          });
                        },
                        title: Text("Entry value 1"),
                      ),
                      RadioListTile<int>(
                        groupValue: entries[index],
                        value: 2,
                        title: Text("Entry value 2"),
                        onChanged: (int value) {
                          setState(() {
                            entries[index] = value;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        groupValue: entries[index],
                        value: 3,
                        title: Text("Entry value 3"),
                        onChanged: (int value) {
                          setState(() {
                            entries[index] = value;
                          });
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("$entries"),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
