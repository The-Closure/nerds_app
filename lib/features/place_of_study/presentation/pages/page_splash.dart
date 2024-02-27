import 'package:dashbord_cafe/features/place_of_study/presentation/pages/pages_walkthroght.dart';
import 'package:flutter/material.dart';

class PageSplash extends StatefulWidget {
  const PageSplash({super.key});

  @override
  State<PageSplash> createState() => _PageSplashState();
}

PageController controller = PageController();

class _PageSplashState extends State<PageSplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2400))
        .then((value) => setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PagesWalkthroght()));
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Image.asset('assets/images/cosel logo.png'),
                const Text(
                  'COSEL',
                  style: TextStyle(fontSize: 72, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Image.asset('assets/images/Capture.PNG'),
          ],
        ),
      ),
    );
  }
}
