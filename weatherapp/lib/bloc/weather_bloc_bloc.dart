// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:weather/weather.dart';
// import 'package:weatherapp/data/my_data.dart';

// part 'weather_bloc_event.dart';
// part 'weather_bloc_state.dart';

// class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
//   WeatherBlocBloc() : super(WeatherBlocInitial()) {
//     on<FetchWeather>((event, emit) async {
//       emit(WeatherBlocLoading());
//       try {
//         WeatherFactory wf = WeatherFactory(apiKey, language: Language.ENGLISH);
//         // Position position = await Geolocator.getCurrentPosition();
//         Weather weather = await wf.currentWeatherByLocation(
//             event.position.latitude, event.position.longitude);
//         emit(WeatherBlocSuccess(weather));
//       } catch (e) {
//         emit(WeatherBlocFailure());
//       }
//     });
//   }
// }
// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:weather/weather.dart';
// import 'package:weatherapp/data/my_data.dart';

// part 'weather_bloc_event.dart';
// part 'weather_bloc_state.dart';

// class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
//   WeatherBlocBloc() : super(WeatherBlocInitial()) {
//     on<FetchWeather>((event, emit) async {
//       emit(WeatherBlocLoading());
//       try {
//         WeatherFactory wf = WeatherFactory(apiKey, language: Language.ENGLISH);
//         Weather weather =
//             await wf.currentWeatherByLocation(event.latitude, event.longitude);
//         emit(WeatherBlocSuccess(weather));
//       } catch (e) {
//         emit(WeatherBlocFailure());
//       }
//     });
//   }
// }
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather/weather.dart';
import 'package:weatherapp/data/my_data.dart';

part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  WeatherBlocBloc() : super(WeatherBlocInitial()) {
    on<FetchWeather>((event, emit) async {
      emit(WeatherBlocLoading());
      try {
        WeatherFactory wf = WeatherFactory(apiKey, language: Language.ENGLISH);
        Weather weather =
            await wf.currentWeatherByLocation(event.latitude, event.longitude);

        // Print the weather data to the console
        //print('Weather Data: ${weather.toString()}');

        emit(WeatherBlocSuccess(weather));
      } catch (e) {
        // Print the error to the console
        //print('Error: $e');

        emit(WeatherBlocFailure());
      }
    });
  }
}
