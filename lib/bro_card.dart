import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class Bro {
  Bro(
      {this.name,
      this.social,
      this.coolness,
      this.power,
      this.smart,
      this.fingers,
      this.nipples,
      this.cylinders});

  final String name;
  final int social, coolness, power, smart, fingers, nipples, cylinders;
  String get getName => name;
  int get getCoolness => coolness;
}

class BroCard extends StatelessWidget {
  BroCard({this.bro});
  final Bro bro;
  RandomColor _randomColor = RandomColor();
  @override
  Widget build(BuildContext context) {
    return Card(
      color:
          _randomColor.randomColor(colorBrightness: ColorBrightness.veryLight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 15,
      child: SizedBox(
        height: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              bro.getName,
              style: Theme.of(context).textTheme.display2,
            ),
            Text(
              "Coolness: " + bro.getCoolness.toString(),
              style: Theme.of(context).textTheme.body1,
            ),
          ],
        ),
      ),
    );
  }
}
