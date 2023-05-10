import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  Animate.restartOnHotReload=true;
  runApp(const AnimateDemo());
}

class AnimateDemo extends StatelessWidget {
  const AnimateDemo({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animate Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: AnimatedCollectible(),
    );
  }
}

class AnimatedCollectible extends StatelessWidget {
  const AnimatedCollectible({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/curtains.png"),
            fit: BoxFit.cover),
      ),
      child: Center(
          child: Image.asset('assets/vase.png').
          animate()
          .shimmer(delay : 400.ms, duration: 1800.ms)
          .shake(hz:4, curve: Curves.easeInOutCubic)
          .scaleXY(end: 1.3, duration: 600.ms)
          .then(delay: 600.ms)
          .scaleXY(end: 1/1.1)

      ),
    ));
  }
}


class Collectible extends StatelessWidget {
  const Collectible({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/vase.png');
  }
}
