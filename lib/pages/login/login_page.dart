import 'package:flutter/material.dart';
import 'package:serveezy/pages/login/login_page_phone.dart';
import 'package:serveezy/widgets/widgets.dart';
import 'package:serveezy/widgets/styles/text_styles.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
            child: BackgroundImageWidget(
              'assets/images/login_background_orange.jpeg',
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1),
              child: CompanyName('Serveezy'),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.25),
              child: LinkedOutlinedButton(
                Icons.mail_rounded,
                'SIGN IN WITH EMAIL',
                '',
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.37),
              child: LinkedOutlinedButton(
                Icons.facebook_rounded,
                'SIGN IN WITH FACEBOOK',
                '',
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.49),
              child: LinkedOutlinedButton(
                Icons.phone_iphone_rounded,
                'SIGN IN WITH PHONE NUMBER',
                LoginPagePhone(),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.65),
              child: MiscButtons(
                'Trouble Signing In?',
                '',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
