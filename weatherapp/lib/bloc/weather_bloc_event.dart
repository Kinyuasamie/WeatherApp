// part of 'weather_bloc_bloc.dart';

// sealed class WeatherBlocEvent extends Equatable {
//   const WeatherBlocEvent();

//   @override
//   List<Object> get props => [];
// }

// class FetchWeather extends WeatherBlocEvent {
//   final Position position;
//   const FetchWeather(this.position);
//   @override
//   List<Object> get props => [position];
// }

part of 'weather_bloc_bloc.dart';

sealed class WeatherBlocEvent extends Equatable {
  const WeatherBlocEvent();

  @override
  List<Object> get props => [];
}

class FetchWeather extends WeatherBlocEvent {
  final double latitude;
  final double longitude;

  const FetchWeather(this.latitude, this.longitude);

  @override
  List<Object> get props => [latitude, longitude];
}
