import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation/widgets/out_boarding_indicator.dart';
import 'package:navigation/widgets/out_boarding_item.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  int _currentPageIndex = 0;
  late PageController _pagecontroller;

  @override
  void initState() {
    super.initState();
    _pagecontroller = PageController();
  }

  @override
  void dispose() {
    _pagecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Visibility(
              visible: _currentPageIndex != 2,
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
              child: TextButton(
                onPressed: () {
                  _pagecontroller.animateToPage(2,
                      duration: const Duration(seconds: 2),
                      curve: Curves.easeOutCirc);
                },
                child: Text(
                  'SKIP',
                  style: GoogleFonts.quicksand(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: _pagecontroller,
                scrollDirection: Axis.horizontal,
                onPageChanged: (int currentPageIndex) {
                  setState(
                    () {
                      _currentPageIndex = currentPageIndex;
                    },
                  );
                },
                children: const [
                  OutBoardingItem(
                    title: 'Welcome!',
                    imageUrl: 'images/ob_1.jpg',
                  ),
                  OutBoardingItem(
                    title: 'Add to cart',
                    imageUrl: 'images/ob_2.jfif',
                  ),
                  OutBoardingItem(
                    title: 'Enjoy purchase!',
                    imageUrl: 'images/ob_3.jpg',
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutBoardingIndicator(
                  Selected: _currentPageIndex == 0,
                  EndMargin: 5,
                ),
                OutBoardingIndicator(
                  Selected: _currentPageIndex == 1,
                  EndMargin: 5,
                ),
                OutBoardingIndicator(
                  Selected: _currentPageIndex == 2,
                  EndMargin: 5,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    if (_currentPageIndex != 0) {
                      _pagecontroller.previousPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeOutCirc);
                    }
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                  color: _currentPageIndex == 0 ? Colors.black26 : Colors.black,
                  enableFeedback: false,
                ),
                Visibility(
                  visible: _currentPageIndex != 2,
                  maintainState: true,
                  maintainSize: true,
                  maintainAnimation: true,
                  child: IconButton(
                    onPressed: () {
                      _pagecontroller.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeOutCirc);
                    },
                    enableFeedback: false,
                    icon: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Visibility(
                visible: _currentPageIndex == 2,
                maintainState: true,
                maintainSize: true,
                maintainAnimation: true,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login_screen');
                  },
                  child: const Text('START'),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
