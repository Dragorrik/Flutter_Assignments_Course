import 'package:flutter/material.dart';

class HomePageWidgets {
  static Widget appBarWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/images/menu.png', width: 25, height: 25),
        Column(
          children: [
            Image.asset('assets/images/basket.png', width: 45, height: 45),
            Text(
              'My Basket',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        )
      ],
    );
  }

  static Widget titleWidget() {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "Hello Aarik, ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
          TextSpan(
            text: "What fruit salad\ncombo do you want today?",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  static Widget searchBarFilterWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: 70,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: const Color(0Xffff3f4f9),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                const Icon(Icons.search, color: Colors.grey, size: 25),
                const SizedBox(width: 10),
                const Text('Search for fruit salad combos',
                    style: TextStyle(fontSize: 15, color: Colors.grey)),
              ],
            ),
          ),
        ),
        const SizedBox(width: 20),
        Image.asset('assets/images/filter.png', width: 25, height: 25),
      ],
    );
  }

  static Widget recommendedComboListWidget() {
    return SizedBox(
      height: 225,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(right: 20, left: 5, top: 5, bottom: 5),
            child: Stack(
              children: [
                // Main Container
                Container(
                  height: 215,
                  width: 185,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: const Color(0XffF3F4F9),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        //spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(3, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image
                      Center(
                        child: Image.asset(
                          'assets/images/recommended.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Honey lime combo',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '2,000',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.deepOrange,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 241, 227, 206),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              '+',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.deepOrange,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                // Heart Icon
                Positioned(
                  top: 15,
                  right: 15,
                  child: const Icon(
                    Icons.favorite_border,
                    size: 22,
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

  static Widget hottestItemListWidget() {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Stack(
              children: [
                // Main Container
                Container(
                  height: 195,
                  width: 185,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFFAEB),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        //spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(3, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image
                      Center(
                        child: Image.asset(
                          'assets/images/recommended.png',
                          width: 80,
                          height: 80,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Honey lime combo',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '2,000',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.deepOrange,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 229, 189),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              '+',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.deepOrange,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                // Heart Icon
                Positioned(
                  top: 15,
                  right: 15,
                  child: const Icon(
                    Icons.favorite_border,
                    size: 22,
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
