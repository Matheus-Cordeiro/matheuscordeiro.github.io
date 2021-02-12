import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreenView extends StatefulWidget {
  @override
  _SplashScreenViewState createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((_) {
      Get.offAllNamed(
        "/home",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: context.heightTransformer(dividedBy: 5),
        width: context.heightTransformer(dividedBy: 5),
        child: SvgPicture.asset(
          "images/logo.svg",
          semanticsLabel: 'Acme Logo',
          fit: BoxFit.cover,
        ),
      )),
    );
  }
}
