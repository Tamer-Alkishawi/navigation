import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

late TapGestureRecognizer _tapgestureRecognizer;

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    _tapgestureRecognizer = TapGestureRecognizer();
    _tapgestureRecognizer.onTap = navigateToReisterScreen;
  }

  void navigateToReisterScreen() {
    Navigator.pushNamed(context, '/register_screen');
  }

  @override
  void dispose() {
    _tapgestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'LOGIN',
          style: GoogleFonts.palanquinDark(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              'Welcome back...',
              style: GoogleFonts.nunito(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(
              'Enter your email & password..,',
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.grey,
                height: 1,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              style: GoogleFonts.nunito(),
              keyboardType: TextInputType.emailAddress,

              // onTap: () => print('CLICKED'),
              // onChanged: (String value) {
              //   print('value $value');
              // },
              // onSubmitted: (String value) {
              //   print('value $value');
              // },
              textCapitalization: TextCapitalization.none,
              textInputAction: TextInputAction.send,
              enabled: true,
              readOnly: false,
              cursorColor: Colors.black,
              cursorHeight: 30,
              cursorWidth: 3,
              showCursor: true,
              obscureText: false,
              textAlign: TextAlign.start,
              textDirection: TextDirection.ltr,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal.shade500),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Email',
                hintStyle: GoogleFonts.nunito(),
                hintMaxLines: 1,
                hintTextDirection: TextDirection.ltr,
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.teal.shade500,
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                // labelText: 'Email',
                // labelStyle: GoogleFonts.nunito(),
                // label: Icon(Icons.circle),
                // floatingLabelBehavior: FloatingLabelBehavior.auto,
                // floatingLabelAlignment: FloatingLabelAlignment.start,
                // floatingLabelStyle: GoogleFonts.nunito(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              style: GoogleFonts.nunito(),
              keyboardType: TextInputType.visiblePassword,
              // onTap: () => print('CLICKED'),
              // onChanged: (String value) {
              //   print('value $value');
              // },
              // onSubmitted: (String value) {
              //   print('value $value');
              // },
              textCapitalization: TextCapitalization.none,
              textInputAction: TextInputAction.send,
              enabled: true,
              readOnly: false,
              cursorColor: Colors.black,
              cursorHeight: 30,
              cursorWidth: 3,
              showCursor: true,
              obscureText: true,
              textAlign: TextAlign.start,
              textDirection: TextDirection.ltr,

              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal.shade500),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Password',
                hintStyle: GoogleFonts.nunito(),
                hintMaxLines: 1,
                hintTextDirection: TextDirection.ltr,
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.teal.shade500,
                  ),
                  onPressed: () {},
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.teal.shade500,
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                // labelText: 'Email',
                // labelStyle: GoogleFonts.nunito(),
                // label: Icon(Icons.circle),
                // floatingLabelBehavior: FloatingLabelBehavior.auto,
                // floatingLabelAlignment: FloatingLabelAlignment.start,
                // floatingLabelStyle: GoogleFonts.nunito(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                primary: Colors.teal.shade500,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home_screen');
              },
              child: Text(
                'LOGIN',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Don\'t have an account',
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      recognizer: _tapgestureRecognizer,
                      text: ' Creat Now !',
                      style: GoogleFonts.nunito(
                        color: Colors.teal.shade700,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
