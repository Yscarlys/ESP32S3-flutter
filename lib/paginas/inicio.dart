import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:all_bluetooth/all_bluetooth.dart';
import 'dart:math' as math;

final allBluetooth = AllBluetooth();

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

  List<Widget> get _cardTemperatura {
    return <Widget>[
      Container(
        width: 300.0,
        decoration: const BoxDecoration(
            color: Color(0xff141b22),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        margin: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 0.0),
        child: Column(
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Temperatura'.toUpperCase(),
                  style: const TextStyle(
                      color: Color(0xFFF89411),
                      fontSize: 26.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Stack(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(20.0),
                            child: CircularPercentIndicator(
                              radius: 70.0,
                              lineWidth: 12.0,
                              percent: 0.5,
                              linearGradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: <Color>[
                                    Color(0xffff0000),
                                    Color(0xffffa500),
                                    Color(0xffffff00),
                                  ]),
                            )),
                        RotatedBox(
                          quarterTurns: 2,
                          child: Container(
                              padding: const EdgeInsets.all(20.0),
                              child: CircularPercentIndicator(
                                backgroundColor: Colors.transparent,
                                radius: 70.0,
                                lineWidth: 12.0,
                                percent: 0.5,
                                linearGradient: const LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: <Color>[
                                      Color(0xff0000ff),
                                      Color(0xff008000),
                                      Color(0xffffff00),
                                    ]),
                              )),
                        ),
                        Container(
                            padding: const EdgeInsets.all(20.0),
                            child: CircularPercentIndicator(
                              backgroundColor: Colors.transparent,
                              radius: 70.0,
                              lineWidth: 12.0,
                              percent: 1 - 0.7,
                              center: Transform.flip(
                                  flipX: true,
                                  child: const Text(
                                    "100°C",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )),
                              progressColor: const Color(0xff141b22),
                            )),
                      ],
                    ))
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SetPoint: 50 °C",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
              child: Transform.scale(
                scale: 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: "Ingrese el SetPoint",
                                hintStyle: const TextStyle(
                                  color: Color(0x862A2D2E), 
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  fixedSize: const Size(double.infinity, 56),
                                  backgroundColor:
                                      const Color.fromARGB(250, 241, 163, 17),
                                  foregroundColor: Colors.black,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10)))),
                              child: const Text(
                                "Aceptar",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> get _cardSwitches {
    return <Widget>[
      Container(
        width: 300.0,
        decoration: const BoxDecoration(
            color: Color(0xff141b22),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Transform.scale(
                    scale: 0.7,
                    child: Padding(
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
                        onChanged: (bool position) {},
                        onDoubleTap: () {},
                        onSwipe: () {},
                        onTap: () {},
                      ),
                    ),
                  ),
                  const Text('BOMBILLO',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Transform.scale(
                    scale: 0.7,
                    child: Padding(
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
                        onChanged: (bool position) {},
                        onDoubleTap: () {},
                        onSwipe: () {},
                        onTap: () {},
                      ),
                    ),
                  ),
                  const Text('SECADOR',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Transform.scale(
                    scale: 0.7,
                    child: Padding(
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
                        onChanged: (bool position) {},
                        onDoubleTap: () {},
                        onSwipe: () {},
                        onTap: () {},
                      ),
                    ),
                  ),
                  const Text('MOTOR',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Transform.scale(
                    scale: 0.7,
                    child: Padding(
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
                        onChanged: (bool position) {},
                        onDoubleTap: () {},
                        onSwipe: () {},
                        onTap: () {},
                      ),
                    ),
                  ),
                  const Text('TOMA CORRIENTE',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    ];
  }
}
