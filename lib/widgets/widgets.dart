import 'package:flutter/material.dart';
import 'package:serveezy/widgets/styles/text_styles.dart';

class BackgroundImageWidget extends StatelessWidget {
  final imgLink;
  const BackgroundImageWidget(this.imgLink);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imgLink),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class LinkedOutlinedButton extends StatelessWidget {
  final icon;
  final msg;
  final routeTo;
  const LinkedOutlinedButton(this.icon, this.msg, this.routeTo);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 275,
      child: OutlinedButton.icon(
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        label: LinkedButtonText(msg),
        onPressed: () {
          print('button pressed');
          // TODO: Route to destination page
        },
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            width: 1.0,
            color: Colors.white,
          ),
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
      ),
    );
  }
}
