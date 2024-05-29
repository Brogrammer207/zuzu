import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/apptheme.dart';

class SearchTopUsers extends StatefulWidget {
  const SearchTopUsers({super.key});

  @override
  State<SearchTopUsers> createState() => _SearchTopUsersState();
}

class _SearchTopUsersState extends State<SearchTopUsers> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6, // Number of tabs
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
              child: TextFormField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFF979797).withOpacity(0.1),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search product",
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.more_horiz, color: AppTheme.primaryColor),
                ),
              ),
            ),
            const SizedBox(height: 10), // Add some space between TextFormField and TabBar
            const TabBar(
              isScrollable: true,
              indicatorColor: AppTheme.primaryColor,
              labelColor: AppTheme.primaryColor,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(text: 'Top'),
                Tab(text: 'users'),
                Tab(text: 'Videos'),
                Tab(text: 'Sound'),
                Tab(text: 'Live'),
                Tab(text: 'HashTag'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10,),
                        const Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Users',
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                          ),
                        ),
                        ListView.builder(
                            itemCount: 2,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return ListTile(
                                  leading: const CircleAvatar(
                                      minRadius: 30,
                                      maxRadius: 30,
                                      backgroundColor: AppTheme.lightColor,
                                      backgroundImage: AssetImage( 'assets/images/girl.png',),
                                     ),
                                  title: const Text(
                                    'Christopher Prajapat',
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                                  ),
                                  subtitle: const Text(
                                    '@Christopherprajapat',
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                                  ),
                                  trailing: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
                                      decoration: BoxDecoration(
                                          color: AppTheme.primaryColor, borderRadius: BorderRadius.circular(25)),
                                      child: const Text(
                                        'Follow',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ));
                            }),
                        const SizedBox(height: 10,),
                        const Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Videos',
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                              itemCount: 10,
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              physics: const AlwaysScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 200,
                                  width: 100,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    color: Colors.grey[300],
                                  ),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12.0),
                                        child: Image.network(
                                          'https://w0.peakpx.com/wallpaper/587/312/HD-wallpaper-indian-girl-beautiful-eyes-hair-insta-lips-model-smile.jpg',
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const Positioned(
                                        bottom: 8.0,
                                        left: 8.0,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.play_circle,
                                              color: AppTheme.primaryColor,
                                              size: 16.0,
                                            ),
                                            SizedBox(width: 4.0),
                                            Text(
                                              '23.7k',
                                              style: TextStyle(color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                        const SizedBox(height: 10,),
                        const Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Sounds',
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                          ),
                        ),
                        ListView.builder(
                            itemCount: 15,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: Container(
                                  height: 70,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: AppTheme.primaryColor,
                                      borderRadius: BorderRadius.circular(11),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/girl.png',
                                          ))),
                                ),
                                title: const Text(
                                  'Side to Side',
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                                ),
                                subtitle: const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Airand andesd',
                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                                    ),
                                    Text(
                                      '01:00',
                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                trailing: const Text(
                                  '938.6k',
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
                  ListView.builder(
                      itemCount: 15,
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ListTile(
                            leading: CircleAvatar(
                                minRadius: 30,
                                maxRadius: 30,
                                backgroundColor: AppTheme.lightColor,
                                child: Image.asset(
                                  'assets/images/apple.png',
                                  height: 20,
                                  width: 20,
                                )),
                            title: const Text(
                              'Christopher Prajapat',
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                            ),
                            subtitle: const Text(
                              '@Christopherprajapat',
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                            ),
                            trailing: Container(
                              padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
                              decoration:
                                  BoxDecoration(color: AppTheme.primaryColor, borderRadius: BorderRadius.circular(25)),
                              child: const Text(
                                'Follow',
                                style: TextStyle(color: Colors.white),
                              ),
                            ));
                      }),
                  GridView.builder(
                    itemCount: 10, // Number of items
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Two items per row
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        childAspectRatio: 0.66),
                    itemBuilder: (context, index) {
                      // Replace 'imageUrl' and 'followersCount' with actual data
                      return Container(
                        margin: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.grey[300],
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.network(
                                'https://w0.peakpx.com/wallpaper/587/312/HD-wallpaper-indian-girl-beautiful-eyes-hair-insta-lips-model-smile.jpg',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Positioned(
                              bottom: 8.0,
                              left: 8.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.visibility,
                                    color: Colors.white,
                                    size: 16.0,
                                  ),
                                  SizedBox(width: 4.0),
                                  Text(
                                    '23.7k',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                      itemCount: 15,
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Container(
                            height: 70,
                            width: 60,
                            decoration: BoxDecoration(
                                color: AppTheme.primaryColor,
                                borderRadius: BorderRadius.circular(11),
                                image: const DecorationImage(
                                    image: AssetImage(
                                  'assets/images/girl.png',
                                ))),
                          ),
                          title: const Text(
                            'Side to Side',
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                          ),
                          subtitle: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Airand andesd',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                              ),
                              Text(
                                '01:00',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                              ),
                            ],
                          ),
                          trailing: const Text(
                            '938.6k',
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                          ),
                        );
                      }),
                  GridView.builder(
                    itemCount: 10, // Number of items
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Two items per row
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        childAspectRatio: 0.66),
                    itemBuilder: (context, index) {
                      // Replace 'imageUrl' and 'followersCount' with actual data
                      return Container(
                        margin: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.grey[300],
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.network(
                                'https://w0.peakpx.com/wallpaper/587/312/HD-wallpaper-indian-girl-beautiful-eyes-hair-insta-lips-model-smile.jpg',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 8.0,
                              left: 8.0,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                                decoration: BoxDecoration(
                                  color: AppTheme.primaryColor,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: const Text(
                                  'Live',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              bottom: 8.0,
                              left: 8.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.visibility,
                                    color: Colors.white,
                                    size: 16.0,
                                  ),
                                  SizedBox(width: 4.0),
                                  Text(
                                    '23.7k',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                      itemCount: 15,
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return const Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                  minRadius: 30,
                                  maxRadius: 30,
                                  backgroundColor: AppTheme.lightColor,
                                  child: Icon(
                                    Icons.tag,
                                    color: AppTheme.primaryColor,
                                  )),
                              title: Text(
                                'Christopher Prajapat',
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                              ),
                              trailing: Text(
                                '92.97 M',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
