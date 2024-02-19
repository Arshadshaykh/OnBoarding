import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:on_boarding/img.dart';
import 'package:on_boarding/ob_image_widget.dart';
import 'package:on_boarding/test.dart';

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
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyHomePage(),
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
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: 4,
              itemBuilder: (context, index) {
                return OnboardingImage(context,index);
              },
            ),
          ),
        ],
      ),
    );
  }
}



Widget OnboardingImage(context, index) {
  return Center(child: SizedBox(height: 426,width: 380,child: AvailableCreditComponent(index: index,)));
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