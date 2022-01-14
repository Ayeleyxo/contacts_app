import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class loadingPage extends StatelessWidget {
  const loadingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitRotatingCircle(
          color: Color.fromARGB(255, 0, 0, 0),
          size: 50.0,
        ),
      ),
    );
  }
}
