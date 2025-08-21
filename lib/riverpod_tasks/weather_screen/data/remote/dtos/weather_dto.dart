
class WeatherDto {

  final LocationDto location;
  final CurrentWeatherDto currentWeather;

  WeatherDto(this.location, this.currentWeather);

  factory WeatherDto.fromJson(Map<String,dynamic> json){
    return WeatherDto(
        LocationDto.fromJson(json["location"]),
        CurrentWeatherDto.fromJson(json["current"])
    );
  }
}

class LocationDto {

  final String name;
  final String region;
  final String country;
  final double lat;
  final double lon;
  final String localtime;

  LocationDto(this.name, this.region, this.country, this.lat, this.lon,
      this.localtime);

  factory LocationDto.fromJson(Map<String, dynamic> json){
    return LocationDto(
      json['name'],
      json['region'],
      json['country'],
      json['lat'],
      json['lon'],
      json['localtime'],);
  }
}

class CurrentWeatherDto {

  final double tempC;
  final ConditionDto condition;
  final double windkph;
  final int humidity;

  CurrentWeatherDto(this.tempC, this.condition, this.windkph, this.humidity);

  factory CurrentWeatherDto.fromJson(Map<String,dynamic> json){
    return CurrentWeatherDto(json['temp_c'], ConditionDto.fromJson(json["condition"]), json["wind_kph"], json["humidity"]);
  }

}

class ConditionDto {
  final String text;
  final String icon;
  final int code;
  ConditionDto(this.text, this.icon, this.code);
  factory ConditionDto.fromJson(Map<String,dynamic> json){
    return ConditionDto(
      json['text'],
      json['icon'],
      json['code'],
    );
  }
}