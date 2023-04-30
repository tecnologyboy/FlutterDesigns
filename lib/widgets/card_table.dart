import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            icon: Icons.dialpad_rounded,
            color: Colors.blue.shade300,
            text: "General",
          ),
          _SingleCard(
            icon: Icons.car_crash_sharp,
            color: Colors.deepPurpleAccent.shade100,
            text: "Transport",
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.card_giftcard_outlined,
            color: Colors.pink.shade200,
            text: "Shopping",
          ),
          _SingleCard(
            icon: Icons.offline_share_outlined,
            color: Colors.yellow.shade900,
            text: "Bills",
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.card_giftcard_outlined,
            color: Colors.pink.shade200,
            text: "Shopping",
          ),
          _SingleCard(
            icon: Icons.offline_share_outlined,
            color: Colors.yellow.shade900,
            text: "Bills",
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.movie_creation_outlined,
            color: Colors.blue.shade700,
            text: "Entretenimient",
          ),
          _SingleCard(
            icon: Icons.local_grocery_store,
            color: Colors.green.shade400,
            text: "Bills",
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {super.key, required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 35,
          child: Icon(
            icon,
            size: 40,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.blue, fontSize: 18),
        )
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 210,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 180, 0.7),
                borderRadius: BorderRadius.circular(25)),
            child: child,
          ),
        ),
      ),
    );
  }
}
