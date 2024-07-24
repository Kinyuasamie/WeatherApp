// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:weatherapp/bloc/weather_bloc_bloc.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.black,
//         extendBodyBehindAppBar: true,
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           systemOverlayStyle: const SystemUiOverlayStyle(
//             statusBarBrightness: Brightness.dark,
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
//           child: SizedBox(
//             height: MediaQuery.of(context).size.height,
//             child: Stack(
//               children: [
//                 Align(
//                   alignment: AlignmentDirectional(4, -0.4),
//                   child: Container(
//                     height: 300,
//                     width: 300,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.deepPurple,
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: AlignmentDirectional(-4, -0.4),
//                   child: Container(
//                     height: 300,
//                     width: 300,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.deepPurple,
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: AlignmentDirectional(0, -1.9),
//                   child: Container(
//                     height: 300,
//                     width: 600,
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 223, 137, 9),
//                     ),
//                   ),
//                 ),
//                 BackdropFilter(
//                   filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.transparent,
//                     ),
//                   ),
//                 ),
//                 BlocBuilder<WeatherBlocBloc, WeatherBlocState>(
//                   builder: (context, state) {
//                     if (State is WeatherBlocSuccess) {
//                       return SizedBox(
//                         width: MediaQuery.of(context).size.width,
//                         height: MediaQuery.of(context).size.height,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Alx-en-Provence",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w300,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 8,
//                             ),
//                             Text(
//                               "Good Morning",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 20,
//                             ),
//                             Center(
//                               child: Image.asset(
//                                 "assets/3.jpeg",
//                                 height: 200,
//                                 width: 200,
//                               ),
//                             ),
//                             const Center(
//                               child: Text(
//                                 "21 C",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 55,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                             ),
//                             const Center(
//                               child: Text(
//                                 "Thunderstorm",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 40,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             const Center(
//                               child: Text(
//                                 "Sunday 21-09:55 AM",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w300,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 30,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Image.asset(
//                                   "assets/6.jpeg",
//                                   height: 70,
//                                   width: 70,
//                                 ),
//                                 const Column(
//                                   children: [
//                                     Text(
//                                       "Sunrise",
//                                       style: TextStyle(
//                                         color:
//                                             Color.fromARGB(255, 172, 201, 187),
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                     Text(
//                                       "7:00 AM",
//                                       style: TextStyle(
//                                         color:
//                                             Color.fromARGB(255, 172, 201, 187),
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 Image.asset(
//                                   "assets/7.jpeg",
//                                   height: 70,
//                                   width: 70,
//                                 ),
//                                 const Column(
//                                   children: [
//                                     Text(
//                                       "Sunset",
//                                       style: TextStyle(
//                                         color:
//                                             Color.fromARGB(255, 172, 201, 187),
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                     Text(
//                                       "7:00 PM",
//                                       style: TextStyle(
//                                         color:
//                                             Color.fromARGB(255, 172, 201, 187),
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(
//                               height: 30,
//                             ),
//                             const Divider(
//                               color: Colors.white12,
//                               thickness: 5,
//                             ),
//                             const SizedBox(
//                               height: 30,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Image.asset(
//                                   "assets/temp.jpeg",
//                                   height: 70,
//                                   width: 70,
//                                 ),
//                                 const Column(
//                                   children: [
//                                     Text(
//                                       "Temp Max",
//                                       style: TextStyle(
//                                         color:
//                                             Color.fromARGB(255, 172, 201, 187),
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                     Text(
//                                       "20 C",
//                                       style: TextStyle(
//                                         color:
//                                             Color.fromARGB(255, 172, 201, 187),
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 Image.asset(
//                                   "assets/temp.jpeg",
//                                   height: 70,
//                                   width: 70,
//                                 ),
//                                 const Column(
//                                   children: [
//                                     Text(
//                                       "Temp min",
//                                       style: TextStyle(
//                                         color:
//                                             Color.fromARGB(255, 172, 201, 187),
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                     Text(
//                                       "12 C",
//                                       style: TextStyle(
//                                         color:
//                                             Color.fromARGB(255, 172, 201, 187),
//                                         fontSize: 18,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       );
//                     } else {
//                       return Container();
//                     }
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/bloc/weather_bloc_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(4, -0.4),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 71, 20, 4),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-4, -0.4),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 166, 147, 199),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, -1.9),
                  child: Container(
                    height: 300,
                    width: 600,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 223, 137, 9),
                    ),
                  ),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                BlocBuilder<WeatherBlocBloc, WeatherBlocState>(
                  builder: (context, state) {
                    if (state is WeatherBlocSuccess) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "${state.weather.areaName}",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Good Morning",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Image.asset(
                                "assets/3.jpeg",
                                height: 200,
                                width: 200,
                              ),
                            ),
                            Center(
                              child: Text(
                                "${state.weather.temperature}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                state.weather.weatherMain!.toUpperCase(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Center(
                              child: Text(
                                DateFormat('EEEE dd -')
                                    .add_j()
                                    .format(state.weather.date!),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/6.jpeg",
                                  height: 70,
                                  width: 70,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Sunrise",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 172, 201, 187),
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      DateFormat('hh:mm a')
                                          .format(state.weather.sunrise!),
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 172, 201, 187),
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  "assets/7.jpeg",
                                  height: 70,
                                  width: 70,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Sunset",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 172, 201, 187),
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      DateFormat('hh:mm a')
                                          .format(state.weather.sunset!),
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 172, 201, 187),
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Divider(
                              color: Colors.white12,
                              thickness: 5,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/temp.jpeg",
                                  height: 70,
                                  width: 70,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Temp Max",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 172, 201, 187),
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      "${state.weather.tempMax}",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 172, 201, 187),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  "assets/temp.jpeg",
                                  height: 70,
                                  width: 70,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Temp min",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 172, 201, 187),
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      "${state.weather.tempMin}",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 172, 201, 187),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
