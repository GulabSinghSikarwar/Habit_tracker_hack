import 'package:flutter/material.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF311EB6),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                headline(),
                subheading(),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "images/thinking.png",
                ),
                SizedBox(
                  height: 30,
                ),
                button()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class subheading extends StatelessWidget {
  const subheading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      child: Text(
        "You're taking the first step in changing your life, Let us guide you through it.",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color.fromARGB(255, 221, 219, 219),
        ),
      ),
    );
  }
}

class headline extends StatelessWidget {
  const headline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Text(
        "The best to start is now!",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}

class button extends StatelessWidget {
  const button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              //change onboarding
              builder: (context) => OnboardingPage1(),
            ),
          ),
        },
        child: Container(
          padding: EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
              color: Color(0xFFF8BD33),
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            "LET'S DO THIS",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
