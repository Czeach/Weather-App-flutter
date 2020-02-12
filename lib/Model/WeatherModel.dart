class Coord {
  final double lon;
  final double lat;

  Coord(
      {this.lon, this.lat}
      );

  factory Coord.fromJson(Map<String, dynamic> json) {
    return Coord(
        lon: double.parse(json['longitude']),
        lat: double.parse(json['latitude'])
    );
  }
}

class Weather {
  final int id;
  final String main;
  final String description;
  final String icon;

  Weather(
      {this.id, this.main, this.description, this.icon}
      );

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
        id: json['id'],
        main: json['main'],
        description: json['description'],
        icon: json['icon']
    );
  }
}

class Main {
  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int pressure;
  final int humidity;

  Main(
      {this.temp,
      this.feelsLike,
      this.tempMin,
      this.tempMax,
      this.pressure,
      this.humidity}
      );

  factory Main.fromJson(Map<String, dynamic> json) {
    return Main(
        temp: double.parse(json['temp']),
        feelsLike: double.parse(json['feels_like']),
        tempMin: double.parse(json['temp_min']),
        tempMax: double.parse(json['temp_max']),
        pressure: json['pressure'],
        humidity: json['humidity']
    );
  }
}

class Wind {
  final double speed;
  final double deg;

  Wind(
      {this.speed, this.deg}
      );

  factory Wind.fromJson(Map<String, dynamic> json) {
    return Wind(
        speed: double.parse(json['speed']), deg: double.parse(json['deg'])
    );
  }
}

class Clouds {
  final int all;

  Clouds(
      {this.all}
      );

  factory Clouds.fromJson(Map<String, dynamic> json) {
    return Clouds(
        all: json['all']
    );
  }
}

class Sys {
  final String country;
  final int sunrise;
  final int sunset;

  Sys(
      {this.country, this.sunrise, this.sunset}
      );

  factory Sys.fromJson(Map<String, dynamic> json) {
    return Sys(
        country: json['country'],
        sunrise: json['sunrise'],
        sunset: json['sunset']
    );
  }
}

class WeatherModel {
  final Coord coord;
  final List<Weather> weather;
  final String base;
  final Main main;
  final int visibility;
  final Wind wind;
  final Clouds clouds;
  final int dt;
  final Sys sys;
  final int timezone;
  final int id;
  final String name;
  final int cod;

  WeatherModel(
      {this.coord,
      this.weather,
      this.base,
      this.main,
      this.visibility,
      this.wind,
      this.clouds,
      this.dt,
      this.sys,
      this.timezone,
      this.id,
      this.name,
      this.cod}
      );

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
        coord: Coord.fromJson(json['coordinates']),
        weather: (json['weather'] as List).map((item) => Weather.fromJson(item)).toList(),
        base: json['base'],
        main: Main.fromJson(json['main']),
        visibility: json['visibility'],
        wind: Wind.fromJson(json['wind']),
        clouds: Clouds.fromJson(json['clouds']),
        dt: json['dt'],
        sys: Sys.fromJson(json['sys']),
        timezone: json['timezone'],
        id: json['id'],
        name: json['name'],
        cod: json['cod']
    );
  }
}
