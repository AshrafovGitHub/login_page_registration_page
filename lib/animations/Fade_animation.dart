import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:flutter/cupertino.dart';


class Fade_animation extends StatelessWidget {
  static final String id="Fade_animation";


   final Widget bobo;
  Fade_animation(this.bobo);



  @override
  Widget build(BuildContext context) {

    return MirrorAnimationBuilder<double>(
      tween: Tween(begin: -100.0, end: 100.0), // value for offset x-coordinate
      duration: const Duration(seconds: 2),
      curve: Curves.easeInOutSine, // non-linear animation
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(value, 0), // use animated value for x-coordinate
          child: child,
        );
      },
      child: bobo,
    );



  }


}

