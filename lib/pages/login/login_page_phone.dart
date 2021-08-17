import 'package:flutter/material.dart';
import 'package:serveezy/pages/login/login_page.dart';
import 'package:serveezy/widgets/widgets.dart';
import 'package:serveezy/widgets/styles/text_styles.dart';

class LoginPagePhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
            child: BackgroundImageWidget(
              'assets/images/login_background_white.jpeg',
            ),
          ),
          Container(
            child: CustomBackButton(
              LoginPage(),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.width * 0.4,
              horizontal: MediaQuery.of(context).size.width * 0.05,
            ),
            child: HeadingText('Your number is:'),
          ),
          SeparatorBar(
            MediaQuery.of(context).size.height * 1.0,
            40.0,
          ),
        ],
      ),
    );
  }
}
