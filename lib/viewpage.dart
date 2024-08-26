import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task3/generated/l10n.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  late PageController controller;
  int currentPage = 0;

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controller,
          onPageChanged: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              color: Theme.of(context).colorScheme.primary,
              child: Padding(
                padding:  EdgeInsets.only(top: 10.0.r),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //  crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        buildContainer(0),
                        SizedBox(
                          width: 10.w,
                        ),
                        buildContainer1(),
                        SizedBox(
                          width: 10.w,
                        ),
                        buildContainer1(),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildAlign('assets/burger.png'),
                          buildPadding(
                              'The best food, delivered right to your name home.'),
                          SizedBox(
                            height: 50.h,
                          ),
                          buildSizedBox(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              color: Theme.of(context).colorScheme.primary,
              child: Padding(
                padding:  EdgeInsets.only(top: 10.0.r),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //  crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        buildContainer2(1),
                        SizedBox(
                          width: 10.w,
                        ),
                        buildContainer2(1),
                        SizedBox(
                          width: 10.w,
                        ),
                        buildContainer1(),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildAlign('assets/burger.png'),
                          buildPadding(
                              'The best food, delivered right to your name home.'),
                          SizedBox(
                            height: 50.h,
                          ),
                          buildSizedBox(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              color: Theme.of(context).colorScheme.primary,
              child: Padding(
                padding:  EdgeInsets.only(top: 10.0.r),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //  crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        buildContainer3(2),
                        SizedBox(
                          width: 10.w,
                        ),
                        buildContainer3(2),
                        SizedBox(
                          width: 10.w,
                        ),
                        buildContainer3(2),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildAlign('assets/burger.png'),
                          buildPadding(
                              'The best food, delivered right to your name home.'),
                          SizedBox(
                            height: 50.h,
                          ),
                          buildSizedBox2(context),
                        ],
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

  Padding buildPadding(String title) {
    return Padding(
      padding:  EdgeInsets.only(left: 8.0.r),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 38.sp, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  Align buildAlign(String image) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(width: 325.w, height: 250.h, child: Image.asset(image)),
    );
  }

  SizedBox buildSizedBox2(BuildContext context) {
    return SizedBox(
      height: 80.h,
      width: 380.w,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/home');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
        ),
        child: Text(
          S.of(context).order_now,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Container buildContainer3(int i) {
    return Container(
      width: 100.w,
      height: 5.h,
      decoration: BoxDecoration(
        color: currentPage == 2 ? Colors.black : Colors.white,
        borderRadius:  BorderRadius.all(Radius.circular(5.r)),
      ),
    );
  }

  Container buildContainer(int i) {
    return Container(
      width: 100.w,
      height: 5.h,
      decoration: BoxDecoration(
        color: currentPage == i ? Colors.black : Colors.white,
        borderRadius:  BorderRadius.all(Radius.circular(5.r)),
      ),
    );
  }

  Container buildContainer2(int i) {
    return Container(
      width: 100.w,
      height: 5.h,
      decoration: BoxDecoration(
        color: currentPage == i ? Colors.black : Colors.white,
        borderRadius:  BorderRadius.all(Radius.circular(5.r)),
      ),
    );
  }

  SizedBox buildSizedBox() {
    return SizedBox(
      height: 80.h,
      width: 380.w,
      child: ElevatedButton(
        onPressed: () {
          controller.nextPage(
              duration: const Duration(milliseconds: 300), curve: Curves.ease);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
        ),
        child: const Text(
          'Next',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Container buildContainer1() {
    return Container(
      width: 100.w,
      height: 5.h,
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5.r)),
      ),
    );
  }
}
