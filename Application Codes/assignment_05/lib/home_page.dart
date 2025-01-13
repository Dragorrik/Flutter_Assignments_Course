import 'package:assignment_05/widgets/home_page_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 35, right: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //App bar
            HomePageWidgets.appBarWidget(context),
            const SizedBox(height: 20),
            //Title
            HomePageWidgets.titleWidget(),
            const SizedBox(height: 20),
            //Search bar and Filter
            HomePageWidgets.searchBarFilterWidget(),
            const SizedBox(height: 35),
            //Recommended text
            Text(
              'Recommended Combo',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            //Recommended combo list
            HomePageWidgets.recommendedComboListWidget(),
            const SizedBox(height: 30),
            //Hottest text
            Text(
              'Hottest',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            //Hottest item list
            HomePageWidgets.hottestItemListWidget(),
          ],
        ),
      ),
    );
  }
}
