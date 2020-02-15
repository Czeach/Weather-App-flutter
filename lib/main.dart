import 'dart:convert';
import 'weatherModel.dart';
import 'package:flutter/material.dart';
import 'Scroll.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:time_formatter/time_formatter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool isLoading = false;
  WeatherModel weatherData;


  @override
  void initState() {
    loadWeather();
    super.initState();
  }

  var currentIndex = 0;

  loadWeather() async {
    setState(() {
      isLoading = true;
    });

    try{
      final weatherResponse = await http.get(
          'https://api.openweathermap.org/data/2.5/forecast/daily?q=Nsukka&appid=a18494d4eee39d449c841066b7e55685&cnt=5&units=metric');

      if (weatherResponse.statusCode == 200) {
        setState(() {
          weatherData = WeatherModel.fromJson(json.decode(weatherResponse.body));
          isLoading = false;
        });
      }

    } catch (e){
      print(e.toString());
    }

    setState(() {
      isLoading = false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      home: Scaffold(
        body: Container(
          color: Colors.black87,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 45,
              ),
              SafeArea(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Icon(
                        Icons.sort,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 305,
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Text(
                  '${weatherData?.city?.name ?? ''}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SafeArea(
                child: Center(
                  child: Container(
                    height: 480,
                    child: ListView.builder(
                        itemCount: weatherData?.vlist?.length ?? 0,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, i) => Padding(
                            padding:
                            const EdgeInsets.only(left: 35, right: 20),
                            child: Scroll(weather: weatherData?.vlist[i],)
                        )
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
