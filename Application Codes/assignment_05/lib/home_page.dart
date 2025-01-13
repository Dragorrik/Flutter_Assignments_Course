import 'package:assignment_05/widgets/home_page_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.03,
          left: screenWidth * 0.08,
          right: screenWidth * 0.08,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // App bar
            HomePageWidgets.appBarWidget(context, screenHeight),
            SizedBox(height: screenHeight * 0.03),
            // Title
            HomePageWidgets.titleWidget(screenHeight),
            SizedBox(height: screenHeight * 0.03),
            // Search bar and Filter
            HomePageWidgets.searchBarFilterWidget(context, screenHeight),
            SizedBox(height: screenHeight * 0.022),
            // Recommended text
            Text(
              'Recommended Combo',
              style: TextStyle(
                fontSize: screenHeight * 0.025,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.015),
            // Recommended combo list
            HomePageWidgets.recommendedComboListWidget(
                screenWidth, screenHeight),
            SizedBox(height: screenHeight * 0.013),
            // Hottest text
            Text(
              'Hottest',
              style: TextStyle(
                fontSize: screenHeight * 0.025,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.015),
            // Hottest item list
            HomePageWidgets.hottestItemListWidget(screenWidth, screenHeight),
          ],
        ),
      ),
    );
  }
}
