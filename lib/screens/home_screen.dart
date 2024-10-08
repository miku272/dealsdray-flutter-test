import 'package:flutter/material.dart';

import '../widgets/category_bubble.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController(
      viewportFraction: 0.8,
    );
    final exclusivePageController = PageController(
      viewportFraction: 0.8,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
              width: double.infinity,
              child: PageView.builder(
                controller: pageController,
                pageSnapping: true,
                itemCount: 5,
                itemBuilder: (BuildContext ctx, int index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/splash_screen_bg.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10).copyWith(bottom: 20),
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(85, 91, 205, 1),
                    Color.fromRGBO(110, 116, 223, 1),
                    Color.fromRGBO(85, 91, 205, 1)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    'KYC Pending',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'You need to provide the required\ndocuments for your account activation',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'click here',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              margin: const EdgeInsets.all(50).copyWith(top: 0, bottom: 0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CategoryBubble(
                    icon: Icons.phone,
                    label: 'Mobile',
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(85, 91, 205, 1),
                        Color.fromRGBO(110, 116, 223, 1),
                        Color.fromRGBO(85, 91, 205, 1)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  CategoryBubble(
                    icon: Icons.laptop,
                    label: 'Laptop',
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(23, 170, 137, 1),
                        Color.fromRGBO(47, 216, 129, 1),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  CategoryBubble(
                    icon: Icons.camera_alt,
                    label: 'Camera',
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(247, 88, 145, 1),
                        Color.fromRGBO(253, 89, 106, 1),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  CategoryBubble(
                    icon: Icons.light,
                    label: 'LED',
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(244, 112, 65, 1),
                        Color.fromRGBO(239, 160, 72, 1),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 600,
              width: double.infinity,
              color: const Color.fromRGBO(83, 173, 196, 1),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Exclusive for you',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 27,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_right_alt_outlined,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: PageView.builder(
                        controller: exclusivePageController,
                        itemCount: 5,
                        itemBuilder: (BuildContext ctx, int index) {
                          return Stack(
                            children: [
                              Container(
                                width: 400,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/images/phone.jpg',
                                        height: 350,
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        'Nokia 8.1 (Iron, 64 GB)',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 5,
                                right: 5,
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  // color: Colors.green,
                                  decoration: const BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20)),
                                  ),
                                  child: const Text(
                                    '32% off',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 120,
        child: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: Theme.of(context).colorScheme.primary,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          label: const Text(
            'Chat',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          icon: const Icon(
            Icons.chat_bubble_rounded,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
