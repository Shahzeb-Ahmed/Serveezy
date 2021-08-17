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
      width: MediaQuery.of(context).size.width * 0.85,
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => routeTo),
          );
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
          backgroundColor: Colors.transparent,
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
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        style: ButtonStyle(splashFactory: NoSplash.splashFactory),
        onPressed: () => {
          print('other button clicked'),
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => routeTo,
            ),
          ),
        },
        child: LinkedButtonText(msg),
      ),
    );
  }
}

class CustomBackButton extends StatelessWidget {
  final routeTo;
  const CustomBackButton(this.routeTo);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.width * 0.1,
      ),
      onPressed: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => routeTo,
          ),
        ),
      },
      icon: Icon(
        Icons.arrow_back_ios_new_rounded,
      ),
    );
  }
}

class SeparatorBar extends StatelessWidget {
  final heightRatioNum;
  final size;
  const SeparatorBar(this.heightRatioNum, this.size);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightRatioNum,
      child: new Center(
        child: new Container(
          margin: new EdgeInsetsDirectional.only(start: size, end: size),
          height: 5.0,
          color: Colors.black54,
        ),
      ),
    );
  }
}
