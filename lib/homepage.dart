import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task3/cartscreen.dart';
import 'package:task3/user_screen.dart';

import 'generated/l10n.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedItem = 'Al forkan';
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        body: <Widget>[
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(10.0.r),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildContainer(Icons.grid_view_outlined),
                        Column(
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.maps_ugc_outlined),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  'Del. Address',
                                  style: TextStyle(
                                      fontSize: 15.sp, color: Colors.grey),
                                ),
                              ],
                            ),
                            DropdownButton<String>(
                                value: _selectedItem,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: const [
                                  DropdownMenuItem(
                                    value: 'Al forkan',
                                    child: Text('Al forkan'),
                                  ),
                                  DropdownMenuItem(
                                      value: 'Al mohamza',
                                      child: Text('Al mohamza'))
                                ],
                                onChanged: (val) {
                                  setState(() {
                                    _selectedItem = val!;
                                  });
                                }),
                          ],
                        ),
                        buildContainer(Icons.add_alert_sharp),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      width: 380.w,
                      height: 195.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 16.r, top: 16.r),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Get Up To %60',
                                    style: TextStyle(
                                        fontSize: 25.sp,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSecondary),
                                  ),
                                  Text(
                                    'Off your next order now with our mobile app',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSecondary),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  SizedBox(
                                    width: 142.w,
                                    height: 44.h,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        //Navigator.of(context).pushNamed('/home');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                      child: Text(
                                        'Claim Voucher',
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondary,
                                            fontSize: 14.sp),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // SizedBox(height: 100.h,),
                          Expanded(
                            child: Container(
                                alignment: Alignment.bottomRight,
                                width: 200.w,
                                height: 100.h,
                                child: Image.asset('assets/Group 64.png')),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    TextFormField(
                      enabled: true,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          label: const Text('what will to like to eat'),
                          labelStyle: TextStyle(
                              fontSize: 15.sp,
                              color: Theme.of(context).colorScheme.onSecondary),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(35.r),
                          )),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.r, right: 8.r),
                            child: Column(
                              children: [
                                Container(
                                  height: 60.h,
                                  width: 60.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onTertiary,
                                     // borderRadius: BorderRadius.circular(30.r),
                                      border: Border.all(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onTertiary)),
                                  child: Image.asset('assets/Rectangle 28.png'),
                                ),
                                const Text(
                                  'All',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          buildPadding('assets/Rectangle 24.png', 'Pizza'),
                          buildPadding('assets/Rectangle 25.png', 'Burger'),
                          buildPadding('assets/Rectangle 35.png', 'drinks'),
                          buildPadding('assets/Rectangle 38.png', 'Fruits'),
                          buildPadding('assets/Rectangle 38.png', 'Fruits'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          S.of(context).recommended_items,
                          style:
                              TextStyle(color: Colors.black, fontSize: 18.sp),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            S.of(context).view_all,
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 15.sp),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20.h),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _buildpad(context, 'assets/Rectangle 25.png',
                              'Cheese burgers'),
                          _buildpad(context, 'assets/Rectangle 25.png',
                              'Blonde Roast'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h)
                  ],
                ),
              ),
            ),
          ),
          const Center(child: Text('Favori')),
          const CartScreen(),
          const UserScreen(),
        ][_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          // selectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.home),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_pin_circle_outlined), label: '')
          ],
        ));
  }

  Container buildContainer(IconData icon) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onTertiary,
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(color: Colors.grey.withOpacity(0.6))),
      child: Icon(icon),
    );
  }

  InkWell _buildpad(BuildContext context, String image, String title) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('detailscreen');
      },
      child: Padding(
        padding: EdgeInsets.only(left: 8.r, right: 8.r),
        child: Container(
          width: 318.w,
          height: 170.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 16.r, top: 16.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 136.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(15.r),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.3))),
                        child: Image.asset(
                          image,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(top: 12.0.r),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Theme.of(context).colorScheme.onSecondary),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0.r),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '&8.09',
                            style: TextStyle(
                                fontSize: 20.sp,
                                color:
                                    Theme.of(context).colorScheme.onSecondary),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 17.0.r,
                              ),
                              Text(
                                '4.2',
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0.r),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.onTertiary,
                                borderRadius: BorderRadius.circular(30.r),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.6))),
                            child: Image.asset('assets/Vector.png'),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.onTertiary,
                                borderRadius: BorderRadius.circular(30.r),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.6))),
                            child: const Icon(Icons.shopping_bag_outlined),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildPadding(String image, String title) {
    return Padding(
      padding: EdgeInsets.only(left: 8.r, right: 8.r),
      child: Column(
        children: [
          Container(
            height: 60.h,
            width: 60.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.onPrimary,
              //  borderRadius: BorderRadius.circular(30.r),
                border: Border.all(color: Colors.grey.withOpacity(0.6))),
            child: Image.asset(image),
          ),
          Text(
            title,
            style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
          ),
        ],
      ),
    );
  }
}
