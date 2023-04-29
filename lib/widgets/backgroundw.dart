import 'dart:math';

import 'package:flutter/material.dart';

class BackGroundw extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
        0.2,
        0.8
      ],
          colors: [
        Color(0XFF2E305F),
        Color(0XFF202333),
      ]));

  const BackGroundw({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          //Purple gradiant
          decoration: boxDecoration,
        ),

        //Pink box
        const Positioned(
          // El positiones parea colocar la figura en la posicion exacta deseada.
          top: -70,
          left: -30,
          child: _PinkBox(),
        ),
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      //Usamos el Transform para girar la figura
      angle: -pi / 4,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          // El boxdecoration es el Widget para generar los colores gradiantes
          gradient: const LinearGradient(colors: [
            Color.fromRGBO(236, 98, 188, 1),
            Color.fromRGBO(241, 142, 172, 1),
          ]),
          borderRadius: BorderRadius.circular(80),
        ),
      ),
    );
  }
}
