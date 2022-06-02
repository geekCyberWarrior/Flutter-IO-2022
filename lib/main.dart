import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.network(
            "https://images.ctfassets.net/vfkpgemp7ek3/25119080/84adf7f6d914091e75ae8d2e8625e5c5/top-apps-worldwide-q2-2019-banner.jpg"),
        backgroundColor: Colors.red,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
        title: Center(child: Text("App NAme")),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "data",
            style: TextStyle(color: Colors.cyan, fontSize: 40.0),
          ),
          Text(
            "data",
            style: TextStyle(color: Colors.cyan, fontSize: 40.0),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Text("DATA $index");
                }),
          ),
          TextField(
            decoration: InputDecoration(
              fillColor: const Color(0x55555555),
              filled: true,
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              Fluttertoast.showToast(
                  msg: "This is Center Short Toast",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
            child: Text("data"),
            style: ElevatedButton.styleFrom(primary: Colors.red),
          )
        ],
      )),
    );
  }
}
