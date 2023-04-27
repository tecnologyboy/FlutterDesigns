import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: const [
        //Header Image
        Image(image: AssetImage('assets/landscape.jpg')),

        //Ttile
        Title(),

        //Button Section
        ButtonSection()
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Swtzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

//TODO: mover los botones a un widget separado y agregar la descripcion.

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CustomButton(
            buttonName: 'CALL',
            buttonColor: Colors.blue,
            buttonicon: Icons.phone,
          ),
          CustomButton(
            buttonName: 'ROUTE',
            buttonColor: Colors.blue,
            buttonicon: Icons.directions,
          ),
          CustomButton(
            buttonName: 'SHARE',
            buttonColor: Colors.blue,
            buttonicon: Icons.share,
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String buttonName;
  final IconData buttonicon;
  final Color buttonColor;

  const CustomButton({
    super.key,
    required this.buttonName,
    required this.buttonicon,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.phone,
            color: buttonColor,
          ),
        ),
        Text(buttonName, style: TextStyle(color: buttonColor))
      ],
    );
  }
}
