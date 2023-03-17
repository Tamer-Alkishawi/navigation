import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/out_boarding_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient:  LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Colors.black12,
              Colors.white,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'TAMER',
                style: GoogleFonts.palanquinDark(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 38,
                  letterSpacing: 15,
                ),
              ),
              Text(
                'FASHION',
                style: GoogleFonts.palanquinDark(
                  height: 1,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  letterSpacing: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
