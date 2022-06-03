import 'package:flutter/material.dart';
import 'package:flutter_io_2022/api/weather_api.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("data"),
          ElevatedButton(
            onPressed: () async {
              await getWeatherData();
            },
            child: Text("Get Weather Data"),
            style: ElevatedButton.styleFrom(primary: Colors.red),
          )
        ],
      ),
    );
  }
}
