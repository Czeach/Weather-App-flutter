import 'package:flutter/material.dart';
import 'weatherModel.dart';

class Scroll extends StatelessWidget {

  final VList weather;
  Scroll({@required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(25)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: 24, top: 16),
            child: Text(
              "${weather?.temp?.day ?? ''}°",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 100,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              "${weather?.weather[0]?.main ?? ''}",
              style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 30,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 24, top: 32),
            child: Text(
              "${weather?.weather[0]?.description ?? ''}",
              style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w200),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 30),
            child: Text(
              'Date: ${weather?.dt ?? ''}',
              style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 16,
                  fontWeight: FontWeight.w200
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 8, right: 8),
            child: Divider(
              height: 2,
              color: Colors.grey[900],
              thickness: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Text(
                  "${weather?.temp?.min ?? ''}° - ${weather?.temp?.max ?? ''}°",
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      fontWeight: FontWeight.w200
                  ),
                ),
                SizedBox(
                  width: 120,
                ),
                Container(
                  height: 70,
                  width: 70,
                  child: Image.network(
                      'https://openweathermap.org/img/wn/${weather?.weather[0]?.icon  ?? ''}@2x.png'
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
