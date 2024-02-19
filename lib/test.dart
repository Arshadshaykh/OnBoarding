
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:on_boarding/img.dart';

class CircularLoader extends StatefulWidget {
  const CircularLoader({Key? key,}) : super(key: key);

  @override
  State<CircularLoader> createState() => _CircularLoaderState();
}

 AnimationController? controller;
 Animation<double>? animation;

class _CircularLoaderState extends State<CircularLoader>
    with TickerProviderStateMixin {
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    animation = CurvedAnimation(
      parent: AnimationController(vsync: this, duration: Duration(seconds: 10))
        ..repeat(),
      curve: Curves.easeInOut,
    );
    super.initState();
  }
  @override
  void dispose() {
    controller!.dispose();
    animation;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation!,
      builder: (context, child) {
        return RotationTransition(
          turns: animation!,
          child: Image.asset(
            'assets/images/png/circularLoader.png',
          ),
        );
      },
    );
  }
}

class AvailableCreditComponent extends StatefulWidget {
int index;
  AvailableCreditComponent({Key? key,required this.index}) : super(key: key);

  @override
  State<AvailableCreditComponent> createState() =>
      _AvailableCreditComponentState();
}

class _AvailableCreditComponentState extends State<AvailableCreditComponent> {
  @override
  Widget build(BuildContext context) {
    switch (widget.index) {
      case 0:
        return  
    Stack(
      fit: StackFit.loose,
      children: [
        Center(
          child: Image.asset(
            OBcircle,
            height: 325,
          ),
        ),
        Positioned(
          top: 25,left: 28,
          child: Image.asset(OBmesseges,
            height: 270,
          ),
        ).animate()
          .slide(
              duration: Duration(seconds:  0),
              begin:  Offset(0, 1))
          .fade(delay: Duration(milliseconds: 400))
          .scale(duration: Duration(seconds: 1 )),
    
           Center(
             child: Image.asset(OBphone,
              height: 270,
                     ),
           ) .animate()
                      .fade(duration: Duration(seconds: 1))
                      .slide(
                          duration: Duration(seconds: 1),
                          begin: Offset(0, -0.3)),
        
        Positioned(
          left: 25,
          top: 230,
          height: 158,
          child: Image.asset(OBwoman,
          ),
        )
        .animate().slide(duration: Duration(seconds: 1)).fade(delay: Duration(milliseconds: 100)),

        Positioned(
          right: 20,
          top: 110,
          height: 275,
          child:  Image.asset(OBman,
            height: 275,
          ),
        ),
      ],
    );
        case 1: 
        return  
    Stack(
      fit: StackFit.loose,
      children: [
        Center(
          child: Image.asset(
            OBcircle,
            height: 325,
          ),
        ),
        Positioned(
          bottom: 10,left:38,height: 168,width: 300,
          child: Image.asset(OBmobile2,
          ),
        ).animate()
          .slide(
              duration: Duration(seconds: 1),
              begin:Offset(-1, 0))
          .fade(delay: Duration(milliseconds: 400))
          .scale(duration: Duration(seconds: 0)),
    
           Positioned(bottom: 119,left:82,
            height: 206,width: 240,
             child: Image.asset(OBman2,
                     ),
           ).animate()
          .slide(
            duration: Duration(seconds: 1),
          ),
        
        Positioned(
          right: 0,
          bottom: 10,
          height: 118,
          // width: 90,
          child: Image.asset(OBflowerPot,
            // height: 158,
          ),
        )
        .animate()
          .slide(duration: Duration(seconds: 1),begin: Offset(1 ,0),)
          .fade(delay: Duration(milliseconds: 400)),
      ],
    );
    case 2: return  
    Stack(
      fit: StackFit.loose,
      children: [
        Center(
          child: Image.asset(
            OBcircle,
            height: 325,
          ),
        ),
        Positioned(
          bottom: 0,left: 20,
          height: 180,
          child: Image.asset(OBbook,
            
          ),
        ).animate()
          .slide(
              duration: Duration(seconds: 1),
              begin:  Offset(0, 1))
          .fade(delay: Duration(milliseconds: 400)),
    
           Positioned(bottom: 114,left: 72, height: 139,
             child: Image.asset(OBbook2,
                     ),
           ).animate()
          .slide(
            duration: Duration(seconds: 1),
          ),
        
        Positioned(
          left: 195,
          top: 83,
          height: 245,
          // width: 90,
          child: Image.asset(OBwoman2,
            // height: 158,
          ),
        )
        .animate().slide(duration: Duration(seconds: 1)).fade(delay: Duration(milliseconds: 400)),
      ],
    );
    case 3:
    return Stack(
      fit: StackFit.loose,
      children: [
        Center(
          child: Image.asset(
            OBcircle,
            height: 325,
          ),
        ),
        Positioned(
          bottom: 0,left: 20,
          height: 320,
          child: Image.asset(OBmobile4,
            
          ),
        ).animate()
          .slide(
              duration: Duration(seconds: 1),
              begin:  Offset(0, 1))
          .fade(delay: Duration(milliseconds: 400)),
    
           Positioned(bottom: 20,left:20, height: 230,
             child: Image.asset(OBman4,
                     ),
           )..animate()
          .slide(
            duration: Duration(seconds:0),
          ),
        
        Positioned(
          right:0,
          bottom: 53,
          height: 224,
          // width: 90,
          child: Image.asset(OBwoman4,
            // height: 158,
          ),
        )
        .animate()
          .slide(duration: Duration(seconds: 1))
          .scale(
              begin: Offset(
                 0,
                 0,
              ),
              duration: Duration(seconds: 1))
          .fade(delay: Duration(milliseconds:100)),
      ],
    );
      default:return  
    Stack(
      fit: StackFit.loose,
      children: [
        Center(
          child: Image.asset(
            OBcircle,
            height: 325,
          ),
        ),
        Positioned(
          top: 18,left: 28,
          child: Image.asset(OBmesseges,
            height: 270,
          ),
        ),
    
           Center(
             child: Image.asset(OBphone,
              height: 270,
                     ),
           ),
        
        // Top right Coin
        Positioned(
          left: 20,
          top: 210,
          height: 158,
          // width: 90,
          child: Image.asset(OBwoman,
            // height: 158,
          ),
        )
        .animate().slide(duration: Duration(seconds: 1)).fade(delay: Duration(milliseconds: 400)),

        // Center Right Coin
        Positioned(
          right: 20,
          top: 140,
          height: 275,
          child:  Image.asset(OBman,
            height: 275,
          ),
        ),
      ],
    );
    }
    
  }
}

class CoinTranslateanimation extends StatefulWidget {
  double begin;
  double end;
  String url;
  CoinTranslateanimation({Key? key, required this.begin, required this.end,  required this.url}) : super(key: key);

  @override
  _CoinTranslateanimationState createState() => _CoinTranslateanimationState();
}

class _CoinTranslateanimationState extends State<CoinTranslateanimation>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4), // Adjust duration as needed
    );

    _animation = Tween<double>(begin: widget.begin, end: widget.end)
        .animate(CurvedAnimation(parent: _controller!, curve: Curves.easeInOut));

    _controller!.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation!,
      builder: (context, child) {
        return Transform.translate(
          // scale: _animation.value,

          // origin: Offset(100, 50),
          // angle: _animation.value,
          offset: Offset(_animation!.value, 15),
          child: Image.asset(
            widget.url, // Adjust height as needed
          ),
        );
      },
    );
  }
}

  class CoinRotateAnimation extends StatefulWidget {
  double rotateBegin;
  double rotateEnd;
  double translatebegin;
  double translateEnd;
  String imageUrl;
  CoinRotateAnimation(
      {Key? key,
        required this.rotateBegin,
        required this.translateEnd,
        required this.rotateEnd,
        required this.translatebegin, required this.imageUrl}) : super(key: key);

  @override
  _CoinRotateAnimationState createState() => _CoinRotateAnimationState();
}

class _CoinRotateAnimationState extends State<CoinRotateAnimation>
    with SingleTickerProviderStateMixin {
   AnimationController? _controller;
   Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4), // Adjust duration as needed
    );

    _animation = Tween<double>(begin: widget.rotateBegin, end: widget.rotateEnd)
        .animate(CurvedAnimation(parent: _controller!, curve: Curves.easeInOut));

    _controller!.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation!,
      builder: (context, child) {
        return Transform.rotate(
          // scale: _animation.value,

          // origin: Offset(100, 50),
            angle: _animation!.value,
            // offset: Offset(_animation.value, 15),
            child: CoinTranslateanimation(begin: widget.translatebegin,end: widget.translateEnd,url: widget.imageUrl,));
      },
    );
  }
}