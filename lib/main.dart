import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      home: Scaffold(
//        backgroundColor: Colors.black,
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
                        Icons.filter_list,
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
                  'Location',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'PassionOne'
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 480,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(22)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 24, top: 16),
                        child: Text(
                          '35',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 144,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text(
                          'Rain',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24, top: 48),
                        child: Text(
                          'Light rain stopping in 13 min., \nstarting again 30 min later. ',
                          style: TextStyle(
                              color: Colors.grey[300],
                              fontSize: 16,
                              fontWeight: FontWeight.w200
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Divider(
                        height: 2,
                        color: Colors.grey[900],
                        thickness: 2,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 270,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 45),
                            child: Icon(
                              Icons.cloud_queue,
                              color: Colors.red,
                            ),
                          )
                        ],
                      )
                    ],
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