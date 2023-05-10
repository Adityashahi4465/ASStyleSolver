import 'dart:ui';

import 'package:asstylesolver/core/common/background_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        BackGroundImage(
          image: 'assets/auth/background.jpg',
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Let\'s get Signed In',
                textAlign: TextAlign.center,
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w800,
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: size.width * 0.80,

                  height: size.height * 0.50,
                  color: Colors.transparent,
                  //we use Stack(); because we want the effects be on top of each other,
                  //  just like layer in photoshop.
                  child: Stack(
                    children: [
                      //blur effect ==> the third layer of stack
                      BackdropFilter(
                        filter: ImageFilter.blur(
                          //sigmaX is the Horizontal blur
                          sigmaX: 4.0,
                          //sigmaY is the Vertical blur
                          sigmaY: 4.0,
                        ),
                        //we use this container to scale up the blur effect to fit its
                        //  parent, without this container the blur effect doesn't appear.
                        child: Container(),
                      ),
                      //gradient effect ==> the second layer of stack
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border:
                              Border.all(color: Colors.white.withOpacity(0.13)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                //begin color
                                Color.fromARGB(255, 238, 171, 55)
                                    .withOpacity(0.15),
                                //end color
                                Color.fromARGB(255, 238, 171, 55)
                                    .withOpacity(0.05),
                              ]),
                        ),
                      ),
                      //child ==> the first/top layer of stack
                      Center(child: Text('Text')),
                    ],
                  ),
                ),
              ),
              Text('don\'t have an account click here')
            ],
          ),
        )
      ],
    ));
  }
}
