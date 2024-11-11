import 'package:flutter/material.dart';

import '../presenter/home_presenter.dart';
import 'lang_text.dart';

class PiratedWidget extends StatelessWidget {
  HomePresenter? homeData;
  PiratedWidget({Key? key, required this.homeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        9.0,
        16.0,
        9.0,
        0.0,
      ),
      child: Container(
        height: 140,
        color: Colors.black,
        child: Stack(
          children: [
            Positioned(
                left: 20,
                top: 0,
                child: AnimatedBuilder(
                    animation: homeData!.pirated_logo_animation,
                    builder: (context, child) {
                      return Image.asset(
                        "assets/pirated_square.png",
                        height: homeData!.pirated_logo_animation.value,
                        color: Colors.white,
                      );
                    })),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 24.0, left: 24, right: 24),
                child: Text(
                  LangText(context).local.pirated_app,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
