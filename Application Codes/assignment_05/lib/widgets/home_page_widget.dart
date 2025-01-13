import 'package:flutter/material.dart';

class HomePageWidgets {
  static Widget appBarWidget(BuildContext context, double screenHeight) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/images/menu.png',
            width: screenHeight * 0.03, height: screenHeight * 0.03),
        Column(
          children: [
            Image.asset('assets/images/basket.png',
                width: screenHeight * 0.06, height: screenHeight * 0.06),
            Text(
              'My Basket',
              style: TextStyle(
                fontSize: screenHeight * 0.015,
              ),
            ),
          ],
        ),
      ],
    );
  }

  static Widget titleWidget(double screenHeight) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "Hello Aarik, ",
            style: TextStyle(
              fontSize: screenHeight * 0.025,
              fontWeight: FontWeight.normal,
            ),
          ),
          TextSpan(
            text: "What fruit salad\ncombo do you want today?",
            style: TextStyle(
              fontSize: screenHeight * 0.025,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  static Widget searchBarFilterWidget(
      BuildContext context, double screenHeight) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: screenHeight * 0.08,
            padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.02),
            decoration: BoxDecoration(
              color: const Color(0Xffff3f4f9),
              borderRadius: BorderRadius.circular(screenHeight * 0.02),
            ),
            child: Row(
              children: [
                const Icon(Icons.search, color: Colors.grey),
                SizedBox(width: screenHeight * 0.015),
                Text(
                  'Search for fruit salad combos',
                  style: TextStyle(
                      fontSize: screenHeight * 0.018, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: screenHeight * 0.02),
        Image.asset('assets/images/filter.png',
            width: screenHeight * 0.03, height: screenHeight * 0.03),
      ],
    );
  }

  static Widget recommendedComboListWidget(
      double screenWidth, double screenHeight) {
    return SizedBox(
      height: screenHeight * 0.285,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              right: screenWidth * 0.05,
              left: screenWidth * 0.01,
              top: screenHeight * 0.01,
              bottom: screenHeight * 0.012,
            ),
            child: Stack(
              children: [
                Container(
                  height: screenHeight * 0.28,
                  width: screenWidth * 0.47,
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05,
                    vertical: screenHeight * 0.02,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0XffF3F4F9),
                    borderRadius: BorderRadius.circular(screenHeight * 0.02),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 10,
                        offset: const Offset(3, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/images/recommended.png',
                          width: screenWidth * 0.25,
                          height: screenHeight * 0.15,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.001),
                      Text(
                        'Honey lime combo',
                        style: TextStyle(
                          fontSize: screenHeight * 0.02,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.005),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '2,000',
                            style: TextStyle(
                              fontSize: screenHeight * 0.02,
                              color: Colors.deepOrange,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.03,
                              vertical: screenHeight * 0.005,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 241, 227, 206),
                              borderRadius:
                                  BorderRadius.circular(screenHeight * 0.02),
                            ),
                            child: Text(
                              '+',
                              style: TextStyle(
                                fontSize: screenHeight * 0.02,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: screenHeight * 0.02,
                  right: screenWidth * 0.03,
                  child: Icon(
                    Icons.favorite_border,
                    size: screenHeight * 0.03,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  static Widget hottestItemListWidget(double screenWidth, double screenHeight) {
    return SizedBox(
      height: screenHeight * 0.235,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              right: screenWidth * 0.05,
              //left: screenWidth * 0.05,
            ),
            child: Stack(
              children: [
                Container(
                  height: screenHeight * 0.223,
                  width: screenWidth * 0.47,
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05,
                    vertical: screenHeight * 0.02,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFFAEB),
                    borderRadius: BorderRadius.circular(screenHeight * 0.02),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 10,
                        offset: const Offset(3, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/images/recommended.png',
                          width: screenWidth * 0.2,
                          height: screenHeight * 0.12,
                        ),
                      ),
                      //SizedBox(height: screenHeight * 0.0005),
                      Text(
                        'Honey lime combo',
                        style: TextStyle(
                          fontSize: screenHeight * 0.018,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.001),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '2,000',
                            style: TextStyle(
                              fontSize: screenHeight * 0.018,
                              color: Colors.deepOrange,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.03,
                              vertical: screenHeight * 0.005,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 229, 189),
                              borderRadius:
                                  BorderRadius.circular(screenHeight * 0.02),
                            ),
                            child: Text(
                              '+',
                              style: TextStyle(
                                fontSize: screenHeight * 0.018,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: screenHeight * 0.02,
                  right: screenWidth * 0.03,
                  child: Icon(
                    Icons.favorite_border,
                    size: screenHeight * 0.03,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
