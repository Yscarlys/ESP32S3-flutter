import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101316),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _cardTemperatura,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _cardSwitches,
          ),
        ],
      ),
    );
  }

  List <Widget> get _cardTemperatura {
    return <Widget>[
            Container(
              width: 300.0,
              height: 400.0,
              decoration: const BoxDecoration(
                  color:   Color(0xff141b22),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              margin: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 0.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Temperatura'.toUpperCase(),
                          style: const TextStyle(
                            color: Color(0xFFF89411),
                            fontSize: 36.0,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                    ]
                  )
                ],
              ),
            ),
          ];
  }
  List <Widget> get _cardSwitches {
    return <Widget>  [
               Container(
                width: 300.0,
                height: 400.0,
                decoration: const BoxDecoration(
                  color:   Color(0xff141b22),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: LiteRollingSwitch(
                  value: true,
                  width: 100,
                  textOn: 'ON',
                  textOff: 'OFF',
                  colorOn: const Color.fromARGB(204, 5, 161, 26),
                  colorOff: const Color.fromARGB(255, 35, 49, 56),
                  iconOn: Icons.emoji_emotions_sharp,
                  iconOff: Icons.mood_bad_rounded,
                  textSize: 20.0,
                  textOnColor: Colors.black,
                  textOffColor: Colors.white,
                  animationDuration: const Duration(milliseconds: 50),
                  onChanged: (bool position) {
                  print("El Dispositivo esta $position");
                  },
                  onDoubleTap: () {},
                  onSwipe: () {},
                  onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: LiteRollingSwitch(
                  value: true,
                  width: 100,
                  textOn: 'ON',
                  textOff: 'OFF',
                  colorOn: const Color.fromARGB(204, 5, 161, 26),
                  colorOff: const Color.fromARGB(255, 35, 49, 56),
                  iconOn: Icons.emoji_emotions_sharp,
                  iconOff: Icons.mood_bad_rounded,
                  textSize: 20.0,
                  textOnColor: Colors.black,
                  textOffColor: Colors.white,
                  animationDuration: const Duration(milliseconds: 50),
                  onChanged: (bool position) {
                  print("El Dispositivo esta $position");
                  },
                  onDoubleTap: () {},
                  onSwipe: () {},
                  onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: LiteRollingSwitch(
                  value: true,
                  width: 100,
                  textOn: 'ON',
                  textOff: 'OFF',
                  colorOn: const Color.fromARGB(204, 5, 161, 26),
                  colorOff: const Color.fromARGB(255, 35, 49, 56),
                  iconOn: Icons.emoji_emotions_sharp,
                  iconOff: Icons.mood_bad_rounded,
                  textSize: 20.0,
                  textOnColor: Colors.black,
                  textOffColor: Colors.white,
                  animationDuration: const Duration(milliseconds: 50),
                  onChanged: (bool position) {
                  print("El Dispositivo esta $position");
                  },
                  onDoubleTap: () {},
                  onSwipe: () {},
                  onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: LiteRollingSwitch(
                  value: true,
                  width: 100,
                  textOn: 'ON',
                  textOff: 'OFF',
                  colorOn: const Color.fromARGB(204, 5, 161, 26),
                  colorOff: const Color.fromARGB(255, 35, 49, 56),
                  iconOn: Icons.emoji_emotions_sharp,
                  iconOff: Icons.mood_bad_rounded,
                  textSize: 20.0,
                  textOnColor: Colors.black,
                  textOffColor: Colors.white,
                  animationDuration: const Duration(milliseconds: 50),
                  onChanged: (bool position) {
                  print("El Dispositivo esta $position");
                  },
                  onDoubleTap: () {},
                  onSwipe: () {},
                  onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ];
      }
}
