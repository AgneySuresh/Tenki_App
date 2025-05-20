import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272838),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarIconBrightness: Brightness.dark
        )
        ),
      body: Padding(padding: const EdgeInsets.fromLTRB(40, 1.2*kToolbarHeight, 40, 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Align(
            alignment: AlignmentDirectional( -5, -1.2),
             child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF7E7F9A),
                ),
             ),
          ),
          Align(
            alignment: AlignmentDirectional( 5, -1.2),
             child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF7E7F9A),
                ),
             ),
          ),
          Align(
            alignment: AlignmentDirectional(5, -0.3),
             child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFEB9486),
                ),
             ),
          ),
          Align(
            alignment: AlignmentDirectional(-5, -0.3),
             child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFEB9486),
                ),
             ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 100.0,
              sigmaY: 100.0,
          ),
          child: Container(
            decoration: BoxDecoration(color: Colors.transparent),
          ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('📍 Kottakkal, Malappuram',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                ),
                ),
                Text('Good Morning',style: TextStyle(
                  color: Color(0xFFF3DE8A),
                  fontWeight: FontWeight.w600,
                  fontSize: 35,
                ),
                ),
                Image.asset('assets/weather_icons/cloudy.png'),
                const Center(
                  child: Text('21°C',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 50,
                  ),),
                ),
                const Center(
                  child: Text('CLOUDY',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                  ),),
                ),
                const Center(
                  child: Text('Sunday 10 • 9:30 PM',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/weather_icons/sun.png',scale: 10,),
                        const SizedBox(width: 5),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sunrise',
                            style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w300,
                            ),
                            ),
                            SizedBox(width: 3,),
                            Text('5:34 AM',
                            style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w700),)
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/weather_icons/moon.png',scale: 10,),
                        const SizedBox(width: 5),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sunset',
                            style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w300,
                            ),
                            ),
                            SizedBox(width: 3,),
                            Text('6:34 PM',
                            style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w700),)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.symmetric(
                  vertical: 5.0,),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/weather_icons/hot.png',scale: 10,),
                        const SizedBox(width: 5),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Temp Max',
                            style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w300,
                            ),
                            ),
                            SizedBox(width: 3,),
                            Text('25°C',
                            style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w700),)
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/weather_icons/cold.png',scale: 10,),
                        const SizedBox(width: 5),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Temp Min',
                            style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w300,
                            ),
                            ),
                            SizedBox(width: 3,),
                            Text('17°C',
                            style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w700),)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
        ),
      ),
    ),
    );
  }
}