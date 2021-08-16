import 'package:flutter/material.dart';
import 'package:serveezy/widgets/widgets.dart';
import 'package:serveezy/widgets/styles/text_styles.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
            child: new BackgroundImageWidget(
              "assets/images/login_background.jpeg",
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: CompanyName('Serveezy'),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: LinkedOutlinedButton(
                Icons.mail,
                'LOGIN WITH EMAIL',
                '',
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 300.0),
              child: LinkedOutlinedButton(
                Icons.phone,
                'LOGIN WITH PHONE',
                '',
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 400.0),
              child: LinkedOutlinedButton(
                Icons.facebook_outlined,
                'LOGIN WITH FACEBOOK',
                '',
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 475.0),
              child: MiscButtons(
                'Trouble logging in?',
                '',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
