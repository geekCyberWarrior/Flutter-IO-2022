import 'package:flutter/material.dart';
import 'package:flutter_io_2022/second_page.dart';

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
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SecondPage()));
            },
            child: Text("data"),
            style: ElevatedButton.styleFrom(primary: Colors.red),
          )
        ],
      )),
    );
  }
}
