import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:portifolio/app/components/custom_colors.dart';
import '../../../components/custom_colors.dart';
import '../controllers/home_controller.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class HomeView extends GetView<HomeController> {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return
          // Banner(
          //     message: "Dev. ver.",
          //     location: BannerLocation.topEnd,
          //     textStyle: GoogleFonts.quicksand(
          //         color: CustomColors.darkColor, fontSize: 12),
          //     color: Colors.white,
          //     child:
          Scaffold(
              drawer: constraints.maxWidth <= 768
                  ? Drawer(
                      child: Container(
                        color: CustomColors.darkColor,
                        height: Get.height,
                        width: Get.width,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                                controller.buttonCarouselController
                                    .previousPage(
                                        duration: Duration(milliseconds: 450),
                                        curve: Curves.easeOut);
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.home,
                                    color: CustomColors.purple,
                                  ),
                                  AutoSizeText(
                                    "  Home  ",
                                    style: TextStyle(fontSize: 18),
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.transparent,
                              thickness: 30,
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                                html.window.open(
                                    "https://github.com/Matheus-Cordeiro",
                                    'GitHub - Matheus Cordeiro');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.code,
                                    color: CustomColors.blue,
                                  ),
                                  AutoSizeText(
                                    "  GitHub  ",
                                    style: TextStyle(fontSize: 18),
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.transparent,
                              thickness: 30,
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                                html.window.open(
                                    "https://www.linkedin.com/in/matheus-cordeiro-0904a617b",
                                    'LinkedIn - Matheus Cordeiro');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.person_pin_rounded,
                                    color: CustomColors.green,
                                  ),
                                  AutoSizeText(
                                    "  LinkedIn  ",
                                    style: TextStyle(fontSize: 18),
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.transparent,
                              thickness: 30,
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                                controller.buttonCarouselController.nextPage(
                                    duration: Duration(milliseconds: 450),
                                    curve: Curves.easeOut);
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.person_add_alt_1,
                                    color: CustomColors.yellow,
                                  ),
                                  AutoSizeText(
                                    "  About  ",
                                    style: TextStyle(fontSize: 18),
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : null,
              appBar: constraints.maxWidth <= 768
                  ? AppBar(
                      centerTitle: true,
                      title: Opacity(
                        opacity: 0.5,
                        child: Container(
                          child: SvgPicture.asset(
                            'images/logo.svg',
                            height: AppBar().preferredSize.height - 5,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ))
                  : null,
              body: Container(
                  width: Get.width,
                  height: Get.height,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      constraints.maxWidth > 768
                          ? Stack(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Opacity(
                                        opacity: 0.5,
                                        // ignore: deprecated_member_use"
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: () => {
                                            controller.buttonCarouselController
                                                .previousPage(
                                                    duration: Duration(
                                                        milliseconds: 450),
                                                    curve: Curves.easeOut)
                                          },
                                          child: Container(
                                            width: 80,
                                            height: 80,
                                            child: SvgPicture.asset(
                                              "images/logo.svg",
                                              semanticsLabel: 'Acme Logo',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ))),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 25),
                                                  // ignore: deprecated_member_use
                                                  child: HoverButton(
                                                    splashColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    padding: EdgeInsets.all(0),
                                                    textColor: Colors.white
                                                        .withOpacity(0.8),
                                                    hoverTextColor:
                                                        CustomColors.red,
                                                    onpressed: (() => {
                                                          controller
                                                              .buttonCarouselController
                                                              .previousPage(
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          450),
                                                                  curve: Curves
                                                                      .easeOut)
                                                        }),
                                                    child: Text("Home",
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
                                                    splashColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    padding: EdgeInsets.all(0),
                                                    textColor: Colors.white
                                                        .withOpacity(0.8),
                                                    hoverTextColor:
                                                        CustomColors.red,
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
                                                    splashColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    padding: EdgeInsets.all(0),
                                                    textColor: Colors.white
                                                        .withOpacity(0.8),
                                                    hoverTextColor:
                                                        CustomColors.red,
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
                                                    splashColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    padding: EdgeInsets.all(0),
                                                    textColor: Colors.white
                                                        .withOpacity(0.8),
                                                    hoverTextColor:
                                                        CustomColors.red,
                                                    onpressed: (() => {
                                                          controller
                                                              .buttonCarouselController
                                                              .nextPage(
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          450),
                                                                  curve: Curves
                                                                      .easeOut)
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
                            )
                          : Container(
                              width: 0,
                              height: 0,
                            ),
                      CarouselSlider(
                        carouselController: controller.buttonCarouselController,
                        options: CarouselOptions(
                          enableInfiniteScroll: false,
                          autoPlay: false,
                          viewportFraction: 1.0,
                          height: MediaQuery.of(context).size.height - 110,
                        ),
                        items: [1, 2].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              if (i == 1) {
                                return Column(
                                  children: [
                                    Container(
                                      width: Get.width,
                                      height:
                                          MediaQuery.of(context).size.height -
                                              110,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(8),
                                            height: constraints.maxWidth > 768
                                                ? context.heightTransformer(
                                                    dividedBy: 4)
                                                : context.heightTransformer(
                                                    dividedBy: 5),
                                            width: constraints.maxWidth > 768
                                                ? context.heightTransformer(
                                                    dividedBy: 4)
                                                : context.heightTransformer(
                                                    dividedBy: 5),
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
                                              height: constraints.maxWidth > 768
                                                  ? context.heightTransformer(
                                                      dividedBy: 4)
                                                  : context.heightTransformer(
                                                      dividedBy: 5),
                                              width: constraints.maxWidth > 768
                                                  ? context.heightTransformer(
                                                      dividedBy: 4)
                                                  : context.heightTransformer(
                                                      dividedBy: 5),
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'images/perfil.jpg'),
                                                      fit: BoxFit.fill),
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
                                );
                              } else {
                                return Container(
                                  padding: EdgeInsets.all(20),
                                  width: context.widthTransformer(dividedBy: 1),
                                  height:
                                      MediaQuery.of(context).size.height - 110,
                                  child: Center(
                                      child: Text(
                                    //       loremIpsum(
                                    //   paragraphs: 1,
                                    //   initWithLorem: true,
                                    // )
                                    "Hi, visitor! ${constraints.maxWidth > 768 ? "👋" : ""}\nI'm a Brazilian programmer,\nstudent of analysis and systems development at FATEC Mogi das Cruzes.\nLover of everything that can be considered art, from paintings to beautiful codes.\nMy goal is to do my best to please the user's eyes.\nWant to know more about me? Access my linkedIn or GitHub profile :D",
                                    style: TextStyle(
                                        fontSize: 20, letterSpacing: 2),
                                  )),
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
                          mainAxisAlignment: constraints.maxWidth <= 768
                              ? MainAxisAlignment.center
                              : MainAxisAlignment.end,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, bottom: 10),
                                child: Text("Made with ❤️ using Flutter"))
                          ],
                        ),
                      )
                    ],
                  )));
      // );
    });
  }
}
