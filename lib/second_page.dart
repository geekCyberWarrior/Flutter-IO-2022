import 'package:flutter/material.dart';
import 'package:flutter_io_2022/api/weather_api.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var weatherCities = [];
  var isLoading = false;

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
              setState(() {
                isLoading = true;
              });
              var cities = await getWeatherData();
              setState(() {
                weatherCities = cities;
                isLoading = false;
              });
            },
            child: Text("Get Weather Data"),
            style: ElevatedButton.styleFrom(primary: Colors.red),
          ),
          isLoading
              ? CircularProgressIndicator(
                  color: Colors.red,
                )
              : Expanded(
                  child:

                      // ListView.builder(
                      //     itemCount: weatherCities.length,
                      //     itemBuilder: (context, index) {
                      //       return Text(
                      //           "${weatherCities[index]['EnglishName']} - ${weatherCities[index]['WeatherText']}");
                      //     })

                      ListView.separated(
                          separatorBuilder: (BuildContext context, int index) =>
                              const Divider(),
                          itemCount: weatherCities.length,
                          itemBuilder: (context, index) {
                            return Card(
                                child: ListTile(
                              title: Text(weatherCities[index]['EnglishName']),
                              subtitle:
                                  Text(weatherCities[index]['WeatherText']),
                              leading: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                            ));
                          })),
        ],
      ),
    );
  }
}
