import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../screens/widgets/apptheme.dart';
import '../screens/widgets/commanButton.dart';


class AllMediaScreen extends StatefulWidget {
  const AllMediaScreen({super.key});

  @override
  State<AllMediaScreen> createState() => _AllMediaScreenState();
}

class _AllMediaScreenState extends State<AllMediaScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.cancel_outlined),
          title: const Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [Text('All Media'), Icon(Icons.keyboard_arrow_down_outlined)],
            ),
          ),
          actions: [
            const Icon(Icons.more_horiz),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add some space between TextFormField and TabBar
            const TabBar(
              indicatorColor: AppTheme.primaryColor,
              labelColor: AppTheme.primaryColor,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(text: 'All'),
                Tab(text: 'Videos'),
                Tab(text: 'Photos'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    itemCount: 12,
                    itemBuilder: (BuildContext context, int index) {
                      // Here you can replace 'yourDataList[index]' with your actual data model
                      return Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: GridTile(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Image.network(
                              'https://static.vecteezy.com/system/resources/thumbnails/025/284/015/small_2x/close-up-growing-beautiful-forest-in-glass-ball-and-flying-butterflies-in-nature-outdoors-spring-season-concept-generative-ai-photo.jpg', // Replace with your image URL
                              fit: BoxFit.cover,
                            ),
                          ),
                          header: GridTileBar(
                            backgroundColor: Colors.transparent,
                            leading: const SizedBox(
                              width: 25,
                            ),
                            trailing: Checkbox(
                              value: true, // Replace with your checkbox value
                              onChanged: (bool? value) {
                                // Handle checkbox state change
                                // You can update your data model here
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15.0).copyWith(bottom: 10),
            child: CommonButton(
              text: 'Continue',
              textColor: Colors.white,
              color: AppTheme.primaryColor,
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
