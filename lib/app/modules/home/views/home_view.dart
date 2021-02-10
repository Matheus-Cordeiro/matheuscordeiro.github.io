import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:portifolio/app/components/custom_colors.dart';
import '../controllers/home_controller.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class HomeView extends GetView<HomeController> {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Banner(
            message: "Dev. ver.",
            location: BannerLocation.topEnd,
            textStyle: GoogleFonts.quicksand(
                color: CustomColors.darkColor, fontSize: 12),
            color: Colors.white,
            child: Container(
                width: Get.width,
                height: Get.height,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Opacity(
                              opacity: 0.5,
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('images/logo.png'))),
                              ),
                            )),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              padding: EdgeInsets.only(top: 30),
                              width: Get.width,
                              height: 80,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 25),
                                          // ignore: deprecated_member_use
                                          child: HoverButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            padding: EdgeInsets.all(0),
                                            textColor:
                                                Colors.white.withOpacity(0.8),
                                            hoverTextColor: CustomColors.red,
                                            onpressed: (() => {
                                                  html.window.open(
                                                      "https://github.com/Matheus-Cordeiro",
                                                      'GitHub - Matheus Cordeiro')
                                                }),
                                            child: Text("GitHub",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  letterSpacing: 2,
                                                )),
                                          )),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 25),
                                          // ignore: deprecated_member_use
                                          child: HoverButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            padding: EdgeInsets.all(0),
                                            textColor:
                                                Colors.white.withOpacity(0.8),
                                            hoverTextColor: CustomColors.red,
                                            onpressed: (() => {
                                                  html.window.open(
                                                      "https://www.linkedin.com/in/matheus-cordeiro-0904a617b",
                                                      'LinkedIn - Matheus Cordeiro')
                                                }),
                                            child: Text("LinkedIn",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  letterSpacing: 2,
                                                )),
                                          )),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 25),
                                          // ignore: deprecated_member_use
                                          child: HoverButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            padding: EdgeInsets.all(0),
                                            textColor:
                                                Colors.white.withOpacity(0.8),
                                            hoverTextColor: CustomColors.red,
                                            onpressed: (() => {
                                                  controller
                                                      .buttonCarouselController
                                                      .nextPage(
                                                          duration: Duration(
                                                              milliseconds:
                                                                  450),
                                                          curve: Curves.easeOut)
                                                }),
                                            child: Text("About",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  letterSpacing: 2,
                                                )),
                                          )),
                                    ],
                                  ),
                                ],
                              )),
                        )
                      ],
                    ),
                    CarouselSlider(
                      carouselController: controller.buttonCarouselController,
                      options: CarouselOptions(
                        autoPlay: false,
                        viewportFraction: 1.0,
                        height: MediaQuery.of(context).size.height - 110,
                      ),
                      items: [1, 2].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            if (i == 1) {
                              return SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      width: Get.width,
                                      height:
                                          MediaQuery.of(context).size.height -
                                              80,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(8),
                                            height: context.heightTransformer(
                                                dividedBy: 4),
                                            width: context.heightTransformer(
                                                dividedBy: 4),
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    Colors.purple,
                                                    Colors.redAccent,
                                                  ]),
                                              shape: BoxShape.circle,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.purple
                                                      .withOpacity(0.2),
                                                  spreadRadius: 6,
                                                  blurRadius: 10,
                                                  offset: Offset(0, 1),
                                                ),
                                              ],
                                            ),
                                            child: Container(
                                              height: context.heightTransformer(
                                                  dividedBy: 4),
                                              width: context.heightTransformer(
                                                  dividedBy: 4),
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'images/perfil.jpg'),
                                                      fit: BoxFit.cover),
                                                  shape: BoxShape.circle),
                                            ),
                                          ),
                                          Divider(
                                            height: 8,
                                            color: Colors.transparent,
                                          ),
                                          Padding(
                                              padding: EdgeInsets.all(0),
                                              child: Text("Matheus Cordeiro",
                                                  style:
                                                      GoogleFonts.dancingScript(
                                                          textStyle: TextStyle(
                                                              fontSize: 38)))),
                                          Text("Mobile / Web Dev",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  letterSpacing: 2)),
                                          Divider(
                                            height: 18,
                                            color: Colors.transparent,
                                          ),
                                          Text(
                                            "Mobile lover. Web lover. Front-end lover.\n A beautiful app / website is like a masterpiece.",
                                            style: TextStyle(),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            } else {
                              return Container(
                                width: context.widthTransformer(dividedBy: 2),
                                height:
                                    MediaQuery.of(context).size.height - 110,
                                child: Center(
                                    child: Text(loremIpsum(
                                  paragraphs: 1,
                                  initWithLorem: true,
                                ))),
                              );
                            }
                          },
                        );
                      }).toList(),
                    ),
                    Container(
                      width: Get.width,
                      height: 30,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 10),
                              child: Text(
                                  "Made with ${controller.parser.get('heart').code} using Flutter"))
                        ],
                      ),
                    )
                  ],
                ))));
  }
}
