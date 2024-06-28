import 'package:flutter/material.dart';

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
            children: <Widget>[
              Container(
                width: 300.0,
                height: 400.0,
                color: const Color(0xff141b22),
                margin:
                  const EdgeInsets.symmetric(vertical: 40.0, horizontal: 0.0),
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
            ],
          ),
          Row(
            children: <Widget>[],
          )
        ],
      ),
    );
  }
}
