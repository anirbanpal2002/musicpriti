import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:flutter/material.dart';

class MyFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.deepPurpleAccent.shade700,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(children: [
            Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  width: 275,
                  height: 390,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 20),
                          blurRadius: 30,
                          spreadRadius: 0,
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(200),
                        bottomLeft: Radius.circular(200),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/priti.jpegr'),
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned(
                  bottom: -45,
                  left: -40,
                  child: SleekCircularSlider(
                    min: 0,
                    max: 4,
                    initialValue: 2,
                    appearance: CircularSliderAppearance(
                      size: 360,
                      counterClockwise: true,
                      startAngle: 150,
                      angleRange: 120,
                      customWidths: CustomSliderWidths(
                        trackWidth: 3,
                        progressBarWidth: 10,
                        shadowWidth: 0,
                      ),
                      customColors: CustomSliderColors(
                        trackColor: Colors.black12,
                        progressBarColor: Colors.black,
                      ),
                      infoProperties: InfoProperties(
                        mainLabelStyle: TextStyle(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Small talk"), Text("2:90")],
            )
          ]),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      actions: [
        Transform.rotate(
            angle: (270 / (180 / pi)),
            child: IconButton(
              icon: Icon(
                Icons.bar_chart,
                color: Colors.black,
                size: 35,
              ),
              onPressed: () {},
            )),
      ],
    );
  }
}
