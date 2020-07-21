import 'package:intro_slider/intro_slider.dart';
import 'gsign.dart';
import 'package:flutter/material.dart';


class Intro_Slider extends StatefulWidget {
  Intro_Slider({Key key}) : super(key: key);


  @override
  _Intro_SliderState createState() => new _Intro_SliderState();
}

class _Intro_SliderState extends State<Intro_Slider> {
  List<Slide> slides = new List();


  @override
  void initState() {
    super.initState();

    slides.add(

      new Slide(
        title: "SLIDER 1",
        description: "Donate the trees to other",
        pathImage: "assets/images/pic1.png",
        backgroundColor: Colors.blueGrey,

      ),
    );
    slides.add(
      new Slide(
        title: "SLIDER 2",
        description: "Keep the things plants in your office",
        pathImage: "assets/images/pic2.png",
        backgroundColor: Color(0xff203152),
      ),
    );
    slides.add(
      new Slide(
        title: "SLIDER 3",
        description:
        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        pathImage: "assets/images/pic3.jpg",

        backgroundColor: Color(0xff9932CC),
      ),
    );
  }

  void onDonePress() {
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return LoginPage();}), ModalRoute.withName('/'));
  }

  void onSkipPress() {
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return LoginPage();}), ModalRoute.withName('/'));
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
     // onSkipPress: this.onSkipPress,
    );
  }
}
