// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:weatherapp/Screens/home_screen.dart';
// import 'package:weatherapp/bloc/weather_bloc_bloc.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: FutureBuilder(
//           future: _determinePosition(),
//           builder: (context, snap) {
//             if (snap.hasData) {
//               return BlocProvider<WeatherBlocBloc>(
//                 create: (context) =>
//                     WeatherBlocBloc()..add(FetchWeather(snap.data as Position)),
//                 child: const HomeScreen(),
//               );
//             } else {
//               return const Scaffold(
//                 body: Center(
//                   child: CircularProgressIndicator(),
//                 ),
//               );
//             }
//           }),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// Future<Position> _determinePosition() async {
//   bool serviceEnabled;
//   LocationPermission permission;

//   // Test if location services are enabled.
//   serviceEnabled = await Geolocator.isLocationServiceEnabled();
//   if (!serviceEnabled) {
//     // Location services are not enabled don't continue
//     // accessing the position and request users of the
//     // App to enable the location services.
//     return Future.error('Location services are disabled.');
//   }

//   permission = await Geolocator.checkPermission();
//   if (permission == LocationPermission.denied) {
//     permission = await Geolocator.requestPermission();
//     if (permission == LocationPermission.denied) {
//       // Permissions are denied, next time you could try
//       // requesting permissions again (this is also where
//       // Android's shouldShowRequestPermissionRationale
//       // returned true. According to Android guidelines
//       // your App should show an explanatory UI now.
//       return Future.error('Location permissions are denied');
//     }
//   }

//   if (permission == LocationPermission.deniedForever) {
//     // Permissions are denied forever, handle appropriately.
//     return Future.error(
//         'Location permissions are permanently denied, we cannot request permissions.');
//   }

//   // When we reach here, permissions are granted and we can
//   // continue accessing the position of the device.
//   return await Geolocator.getCurrentPosition(
//       desiredAccuracy: LocationAccuracy.low);
// }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/Screens/home_screen.dart';
import 'package:weatherapp/bloc/weather_bloc_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => WeatherBlocBloc()
          ..add(const FetchWeather(-1.1490406755936806,
              36.958675802473294)), // Example coordinates for San Francisco
        child: const HomeScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
