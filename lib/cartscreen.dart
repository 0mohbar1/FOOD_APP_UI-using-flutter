import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onTertiary,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed('/home');
          },
          child: Container(
            height: 10.h,
            width: 10.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.onTertiary,
              //  borderRadius: BorderRadius.circular(30.r),
                border: Border.all(color: Colors.grey.withOpacity(0.6))),
            child: const Icon(Icons.arrow_back),
          ),
        ),
        title: const Text('Cart'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                SizedBox(height: 15.h),
                _buildpad(context, 'assets/Rectangle 25.png', 'Cheese burgers'),
                SizedBox(height: 15.h),
                _buildpad(context, 'assets/Rectangle 35.png', 'Pizza'),
                SizedBox(
                  height: 25.h,
                ),
                TextFormField(
                  enabled: true,
                  decoration: InputDecoration(
                      prefixIcon: Image.asset('assets/v.png'),
                      suffixIcon: SizedBox(
                        width: 100.w,
                        height: 55.h,
                        child: ElevatedButton(
                          onPressed: () {
                            //Navigator.of(context).pushNamed('/home');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                          ),
                          child: Text(
                            'Apply',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                        ),
                      ),
                      label: const Text('Enter promo code'),
                      labelStyle: TextStyle(
                          fontSize: 15.sp,
                          color: Theme.of(context).colorScheme.onSecondary),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.onSecondary),
                        borderRadius: BorderRadius.circular(35),
                      )),
                ),
                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subtotal',
                      style: TextStyle(
                          fontSize: 17.sp,
                          color: Theme.of(context).colorScheme.onSecondary),
                    ),
                    Text(
                      '15.39',
                      style: TextStyle(fontSize: 17.sp),
                    )
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery fee',
                      style: TextStyle(
                          fontSize: 17.sp,
                          color: Theme.of(context).colorScheme.onSecondary),
                    ),
                    Text(
                      'Free',
                      style: TextStyle(fontSize: 17.sp),
                    )
                  ],
                ),
                SizedBox(height: 15.h),
                const Divider(),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(fontSize: 17.sp),
                    ),
                    Text(
                      '15.39',
                      style: TextStyle(fontSize: 23.sp),
                    )
                  ],
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
                      child: Text(
                        'Checkout',
                        style: TextStyle(fontSize: 20.sp, color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding _buildpad(BuildContext context, String image, String title) {
    return Padding(
      padding: EdgeInsets.only(left: 8.r, right: 8.r),
      child: Container(
        width: 390.w,
        height: 170.h,
        decoration: BoxDecoration(
         // shape: BoxShape.circle,
          borderRadius: BorderRadius.circular(10.r),
          color: Theme.of(context).colorScheme.onTertiary,
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
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.3))),
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
                padding: EdgeInsets.only(top: 12.0.r,right: 10.r),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Theme.of(context).colorScheme.onSecondary),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '&8.09',
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: Theme.of(context).colorScheme.onSecondary),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.all(6.0.r),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 50.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.r),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.6))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.remove,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiary,
                                  ),
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.add,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiary,
                                  ),
                                ),
                              ],
                            ),
                          ),
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
}
