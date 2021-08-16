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
      width: 300,
      child: OutlinedButton(
        onPressed: () {
          print('button pressed');
          // TODO: Route to destination page
        },
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Icon(icon),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlinedLinkedButtonText(msg),
              ],
            ),
          ],
        ),
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

class MiscButtons extends StatelessWidget {
  final msg;
  final routeTo;
  const MiscButtons(this.msg, this.routeTo);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextButton(
        style: ButtonStyle(splashFactory: NoSplash.splashFactory),
        onPressed: () => {
          print('other button clicked'),
          // TODO: Route to destination page
        },
        child: LinkedButtonText(msg),
      ),
    );
  }
}
