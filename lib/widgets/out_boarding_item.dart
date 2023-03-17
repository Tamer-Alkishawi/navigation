import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OutBoardingItem extends StatelessWidget {
  const OutBoardingItem({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 400,
          child: Image.asset(
              imageUrl),
        ),
        const SizedBox(
          height: 36,
        ),
        Text(
          title,
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 20.8,
        ),
        Text(
          'josad sdiojfaiosd  usadif usdf isdnf asdfuas fsidfasiusf iuasfiu asfuasu fsu vi a da viha viasiuv isd,fdkm',
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w300,
            fontSize: 17,
            color: const Color(0xFF716F87),
          ),
        )
      ],
    );
  }
}
