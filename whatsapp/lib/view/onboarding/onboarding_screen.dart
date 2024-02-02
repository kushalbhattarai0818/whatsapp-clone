
import 'package:flutter/material.dart';
import 'package:whatsapp/view/home_Screen.dart';
import 'package:whatsapp/widgets/onboarding_page.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                OnboardingPage(
                  image: 'assets/signup.svg',
                  title: "Join HamroPalika",
                  description: ": User-friendly signup for efficient complaint registration system.",
                ),
                OnboardingPage(
                  image: 'assets/collectworks.svg',
                  title: "Collect Complaints ",
                  description: "Efficiently collect user complaints for prompt issue resolution and feedback",
                ),
                OnboardingPage(
                  image: 'assets/working.svg',
                  title: "Swift Resolution",
                  description: "Streamlining user complaints for swift resolution and improved service",
                ),
                OnboardingPage(
                  image: 'assets/deliver.svg',
                  title: "Deliver Updates",
                  description: "Deliver timely updates on complaint resolutions and provide effective solutions",
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        4,
                        (index) => buildPageIndicator(index),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_currentPage == 3) {
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>home_Screen()));
                          // Navigator.pushReplacementNamed(context, Routes.login);
                        } else {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        }
                      },
                      child: Text(
                        _currentPage == 3 ? 'Get Started' : 'Next',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        minimumSize: Size(350, 50.0), // Adjust the width
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPageIndicator(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      height: 8.0,
      width: _currentPage == index ? 24.0 : 8.0,
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.green : Colors.grey,
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }
}
