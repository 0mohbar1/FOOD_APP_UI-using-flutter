import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:  EdgeInsets.all(12.0.r),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildContainer(Icons.arrow_back_sharp),
                    Text(
                      'Details',
                      style: TextStyle(fontSize: 22.sp, color: Colors.black),
                    ),
                    Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onTertiary,
                          borderRadius: BorderRadius.circular(30.r),
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.6))),
                      child: Image.asset('assets/Vector.png'),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Container(
                  height: 296.h,
                  width: 380.w,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onTertiary,
                      borderRadius: BorderRadius.circular(15.r),
                      border: Border.all(color: Colors.grey.withOpacity(0.2))),
                  child: Image.asset(
                    'assets/Rectangle 25.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 73.h,
                  width: 380.w,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15.r),
                      border: Border.all(color: Colors.grey.withOpacity(0.2))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildColumn(
                          'Delivery', '15mins', Icons.access_time_outlined),
                      buildVerticalDivider(),
                      buildColumn('Review', '32+', Icons.messenger_outline),
                      buildVerticalDivider(),
                      buildColumn('Rating', '4.2', Icons.star_border),
                    ],
                  ),
                ),
                 SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cheese burgers',
                          style: TextStyle(fontSize: 26.sp, color: Colors.black),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '&8.09',
                            style: TextStyle(
                                fontSize: 26.sp,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 50.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.tertiary,
                          borderRadius: BorderRadius.circular(30.r),
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.6))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const Icon(Icons.remove),
                          ),
                          Text(
                            '1',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                 SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Add extra Ingredient',
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    const Icon(Icons.keyboard_arrow_down)
                  ],
                ),
                SizedBox(height: 20.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Description',
                    style: TextStyle(color: Colors.black, fontSize: 15.sp),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Our classic cheesburger is mode with a fresh, never-frozen beef patty that is cooked to ',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onSecondary,
                        fontSize: 15.sp),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: 350.w,
                  height: 64.h,
                  child: ElevatedButton(
                      onPressed: () {
                        //Navigator.of(context).pushNamed('/home');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            'Add to Cart',
                            style:
                                TextStyle(fontSize: 20.sp, color: Colors.white),
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column buildColumn(String des, String num, IconData icon) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 20.r,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            Text(
              num,
              style: TextStyle(fontSize: 14.sp),
            ),
          ],
        ),
        Text(
          des,
          style: TextStyle(
              fontSize: 13.sp,
              color: Theme.of(context).colorScheme.onSecondary),
        ),
      ],
    );
  }

  VerticalDivider buildVerticalDivider() {
    return const VerticalDivider(
      color: Colors.grey,
      width: 1,
      thickness: 1,
      indent: 10,
      endIndent: 10,
    );
  }

  InkWell buildContainer(IconData icon) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/home');
      },
      child: Container(
        height: 40.h,
        width: 40.w,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onTertiary,
            borderRadius: BorderRadius.circular(30.r),
            border: Border.all(color: Colors.grey.withOpacity(0.6))),
        child: Icon(icon),
      ),
    );
  }
}
