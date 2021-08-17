import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompanyName extends StatelessWidget {
  final msg;
  const CompanyName(this.msg);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        msg,
        textAlign: TextAlign.center,
        style: GoogleFonts.oleoScript(
          fontSize: 100.0,
          color: Colors.white,
        ),
      ),
    );
  }
}

class OutlinedLinkedButtonText extends StatelessWidget {
  final msg;
  const OutlinedLinkedButtonText(this.msg);
  @override
  Widget build(BuildContext context) {
    return Text(
      msg,
      style: GoogleFonts.inconsolata(
        fontSize: 18.0,
        color: Colors.white,
      ),
    );
  }
}

class LinkedButtonText extends StatelessWidget {
  final msg;
  const LinkedButtonText(this.msg);
  @override
  Widget build(BuildContext context) {
    return Text(
      msg,
      textAlign: TextAlign.center,
      style: GoogleFonts.inconsolata(
        fontSize: 15.0,
        color: Colors.white,
      ),
    );
  }
}

class HeadingText extends StatelessWidget {
  final msg;
  const HeadingText(this.msg);
  @override
  Widget build(BuildContext context) {
    return Text(
      msg,
      style: GoogleFonts.montserrat(
        fontSize: 40,
        color: Colors.black54,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
