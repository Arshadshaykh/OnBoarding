import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:on_boarding/img.dart';
import 'package:on_boarding/ob_image_widget.dart';

void main() {
  runApp(MaterialApp(home: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MyPageView()));
        },
        child: Text('Animation'),
      )),
    );
  }
}

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  Animation<double>? animation;
  bool hasAnimated = false;
  Animation<double>? animationtwo;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween<double>(begin: 10, end: 250).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOutBack,
      // reverseCurve: Curves.bounceIn,
    ));
    animationtwo = Tween<double>(begin: 200, end: 10).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOutBack,
      // reverseCurve: Curves.bounceIn,
    ));
    if (!hasAnimated) {
      controller.forward();
      hasAnimated = true;
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  final List<OnboardingItem> onboardingItems = [
    OnboardingItem(
      title: 'Welcome to MyApp',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      imagePath: 'assets/onboarding1.png',
    ),
    OnboardingItem(
      title: 'Explore Features',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      imagePath: 'assets/onboarding2.png',
    ),
    OnboardingItem(
      title: 'Get Started',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      imagePath: 'assets/onboarding3.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyHomePage(),
        // PageView.builder(
        //   itemCount: 4,
        //   itemBuilder: (context, index) {
        // return MyHomePage(index: index);
        // },
        //   children: [
        //   MyHomePage(),
        //   Center(child: Text('2 nd')),
        //   Center(child: Text('3 nd')),
        // ],
      ),
      // ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  int index;
  MyHomePage({super.key, this.index = 0});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  Animation<double>? animation;
  bool hasAnimated = false;
  // Animation<double>? animationtwo;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween<double>(begin: 0, end: 250).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOutBack,
      // reverseCurve: Curves.bounceIn,
    ));
    // animationtwo = Tween<double>(begin: 200, end: 10).animate(CurvedAnimation(
    //   parent: controller,
    //   curve: Curves.easeInOutBack,
    //   // reverseCurve: Curves.bounceIn,
    // ));
    if (!hasAnimated) {
      controller.forward();
      hasAnimated = true;
    }
    // controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    animation;
  }

  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          PageView.builder(
            controller: _controller,
            itemCount: 4,
            itemBuilder: (context, index) {
              return OnboardingImage(context, index);
            },
          ),
        ],
      ),
    );
  }
}



Widget OnboardingImage(context, index) {
  return Stack(
    children: [

      SizedBox(height: 500,width: 500,child: OBImageWidget(image: OBMobileChat, height: 150,)),
      // buildImageWidget(
      //         index: index,
      //         imagePath: index == 0
      //             ? OBmesseges
      //             : index == 1
      //                 ? OBmobile2
      //                 : index == 2
      //                     ? OBbook
      //                     : OBmobile4,
      //         top: index == 0
      //             ? MediaQuery.of(context).size.height / 5.5
      //             : index == 1
      //                 ? MediaQuery.of(context).size.height / 2.3
      //                 : index == 2
      //                     ? MediaQuery.of(context).size.height / 2.1
      //                     : MediaQuery.of(context).size.height / 3.2,
      //         left: index == 2
      //             ? MediaQuery.of(context).size.width / 21
      //             : MediaQuery.of(context).size.width / 13,
      //         height: index == 0
      //             ? 270
      //             : index == 1
      //                 ? 168
      //                 : index == 2
      //                     ? 180
      //                     : 325,
      //         context: context)
      //     .animate()
      //     .slide(
      //         duration: Duration(seconds: index == 0 ? 0 : 1),
      //         begin: index == 1 ? Offset(-1, 0) : Offset(0, 1))
      //     .fade(delay: Duration(milliseconds: 400))
      //     .scale(duration: Duration(seconds: index == 0 ? 1 : 0)),

      // /*
      // 1: mobile
      // 2: man2
      // 3: Top books
      // 4: man4
      // */
      // buildImageWidget(
      //         index: index,
      //         imagePath: index == 0
      //             ? OBphone
      //             : index == 1
      //                 ? OBman2
      //                 : index == 2
      //                     ? OBbook2
      //                     : OBman4,
      //         top: OBphone
      //             ? MediaQuery.of(context).size.height / 4.1
      //             : index == 1
      //                 ? MediaQuery.of(context).size.height / 4
      //                 : index == 2
      //                     ? MediaQuery.of(context).size.height / 2.58
      //                     : MediaQuery.of(context).size.height / 2.5,
      //         left: index == 0
      //             ? MediaQuery.of(context).size.width / 3
      //             : index == 1
      //                 ? MediaQuery.of(context).size.width / 4
      //                 : index == 2
      //                     ? MediaQuery.of(context).size.width / 6
      //                     : MediaQuery.of(context).size.width / 22,
      //         height: index == 0
      //             ? 270
      //             : index == 1
      //                 ? 208
      //                 : index == 2
      //                     ? 139
      //                     : 250,
      //         context: context)
      //     .animate()
      //     .slide(
      //       duration: Duration(seconds:index==3?0: 1),
      //     ),
      // // .fade(delay: Duration(milliseconds: 400)),
      // /*
      // 1: woman1
      // 2: Flower Pot
      // 3: woman3
      // 4: woman4
      // */
      // buildImageWidget(
      //         index: index,
      //         imagePath: index == 0
      //             ? OBwoman
      //             : index == 1
      //                 ? OBflowerPot
      //                 : index == 2
      //                     ? OBwoman2
      //                     : OBwoman4,
      //         top: index == 0
      //             ? MediaQuery.of(context).size.height / 2.33
      //             : index == 1
      //                 ? MediaQuery.of(context).size.height / 2.02
      //                 : index == 2
      //                     ? MediaQuery.of(context).size.height / 3.6
      //                     : MediaQuery.of(context).size.height / 2.7,
      //         left: index == 0
      //             ? MediaQuery.of(context).size.width / 13
      //             : index == 1
      //                 ? MediaQuery.of(context).size.width / 1.2
      //                 : index == 2
      //                     ? MediaQuery.of(context).size.width / 2.05
      //                     : MediaQuery.of(context).size.width / 2.5,
      //         height: index == 0
      //             ? 158
      //             : index == 1
      //                 ? 118
      //                 : index == 2
      //                     ? 245
      //                     : 224,
      //         context: context)
      //     .animate()
      //     .slide(duration: Duration(seconds: 1))
      //     // .scale(
      //     //     begin: Offset(
      //     //       index == 1 ? 0 : 0,
      //     //       index == 1 ? 1 : 0,
      //     //     ),
      //     //     duration: Duration(seconds: index == 2 ? 0 : 1))
      //     .fade(delay: Duration(milliseconds: 400)),

      // buildImageWidget(
      //     index: index,
      //     imagePath: index == 0 ? OBman : transparent,
      //     top: index == 0 ? MediaQuery.of(context).size.height / 3.5 : 0,
      //     left: index == 0 ? MediaQuery.of(context).size.width / 1.495 : 0,
      //     height: index == 0 ? 275 : 0,
      //     context: context),
    ],
  );
}
Widget buildImageWidget(
    {int? index,
    String? imagePath,
    double? top,
    double? left,
    double? height,
    BuildContext? context}) {
  return Positioned(
    top: top,
    left: left,
    child: Image.asset(
      imagePath ?? transparent,
      height: height,
    ),
  );
  // .animate().fade(duration: Duration(seconds: 1)).scale(duration: Duration(seconds: 1), begin: Offset(0, -0.3));
}
class OnboardingItem {
  final String title;
  final String description;
  final String imagePath;

  OnboardingItem({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

// class OnBoardingScreen extends StatefulWidget {
//   const OnBoardingScreen({super.key});

//   @override
//   State<OnBoardingScreen> createState() => _OnBoardingScreenState();
// }

// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   final List<OnboardingItem> onboardingItems = [
//     OnboardingItem(
//       title: 'Welcome to MyApp',
//       description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
//       imagePath: 'assets/onboarding1.png',
//     ),
//     OnboardingItem(
//       title: 'Explore Features',
//       description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
//       imagePath: 'assets/onboarding2.png',
//     ),
//     OnboardingItem(
//       title: 'Get Started',
//       description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
//       imagePath: 'assets/onboarding3.png',
//     ),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [],
//     );
//   }
// }




// OB1: Messeges,OB2: mobile2,OB3: ,OB4: mobile4
      // index == 0
      //     ? Positioned(
      //         top: MediaQuery.of(context).size.height / 5.5,
      //         left: MediaQuery.of(context).size.width / 10,
      //         child: Image.asset(
      //           OBmesseges,
      //           height: 270,
      //         ),
      //       )
      //         .animate()
      //         .fade(duration: Duration(seconds: 1))
      //         .scale(duration: Duration(seconds: 1), begin: Offset(0, -0.3))
      //     : index == 1
      //         ? Positioned(
      //             top: MediaQuery.of(context).size.height / 4,
      //             left: MediaQuery.of(context).size.width / 10,
      //             child: Image.asset(
      //               OBmobile2,
      //               height: 270,
      //             ),
      //           )
      //             .animate()
      //             .fade(duration: Duration(seconds: 1))
      //             .scale(duration: Duration(seconds: 1), begin: Offset(0, -0.3))
      //         : index == 2
      //             ? SizedBox.shrink()
      //             : Positioned(
      //                 top: MediaQuery.of(context).size.height / 4,
      //                 left: MediaQuery.of(context).size.width / 10,
      //                 child: Image.asset(
      //                   OBmobile4,
      //                   height: 270,
      //                 ),
      //               ).animate().fade(duration: Duration(seconds: 1)).scale(
      //                 duration: Duration(seconds: 1), begin: Offset(0, -0.3)),
      // // Mobile
      // index == 0
      //     ? Positioned(
      //             top: MediaQuery.of(context).size.height / 4,
      //             left: MediaQuery.of(context).size.width / 3,
      //             child: Image.asset(
      //               OBphone,
      //               height: 277,
      //             ))
      //         .animate()
      //         .fade(duration: Duration(seconds: 1))
      //         .slide(duration: Duration(seconds: 1), begin: Offset(0, -0.3))
      //     : index == 1
      //         ? Positioned(
      //                 top: MediaQuery.of(context).size.height / 4,
      //                 left: MediaQuery.of(context).size.width / 3,
      //                 child: Image.asset(
      //                   OBphone,
      //                   height: 277,
      //                 ))
      //             .animate()
      //             .fade(duration: Duration(seconds: 1))
      //             .slide(duration: Duration(seconds: 1), begin: Offset(0, -0.3))
      //         : index == 2
      //             ? Positioned(
      //                     top: MediaQuery.of(context).size.height / 4,
      //                     left: MediaQuery.of(context).size.width / 3,
      //                     child: Image.asset(
      //                       OBphone,
      //                       height: 277,
      //                     ))
      //                 .animate()
      //                 .fade(duration: Duration(seconds: 1))
      //                 .slide(
      //                     duration: Duration(seconds: 1),
      //                     begin: Offset(0, -0.3))
      //             : Positioned(
      //                     top: MediaQuery.of(context).size.height / 4,
      //                     left: MediaQuery.of(context).size.width / 3,
      //                     child: Image.asset(
      //                       OBphone,
      //                       height: 277,
      //                     ))
      //                 .animate()
      //                 .fade(duration: Duration(seconds: 1))
      //                 .slide(
      //                     duration: Duration(seconds: 1),
      //                     begin: Offset(0, -0.3)),

      // index == 0
      //     ? Positioned(
      //         top: MediaQuery.of(context).size.height / 2.25,
      //         left: MediaQuery.of(context).size.width / 12,
      //         child: Image.asset(
      //           OBwoman,
      //           height: 157,
      //         ),
      //       )
      //         .animate()
      //         .fade(
      //             duration: Duration(seconds: 1),
      //             delay: Duration(milliseconds: 400))
      //         .slide(
      //             duration: Duration(milliseconds: 1200),
      //             begin: Offset(-0.5, 0))
      //     : SizedBox.shrink(),

      // Positioned(
      //   top: 286,
      //   left: 278,
      //   child: Image.asset(
      //     OBman,
      //     height: 275,
      //   ),
      // ),
      // Positioned(
      //   bottom: 0,
      //   right: 0,
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Navigator.of(context)
      //           .push(MaterialPageRoute(builder: (context) => MyApp()));
      //     },
      //     child: Text('Tap me'),
      //   ),
      // )