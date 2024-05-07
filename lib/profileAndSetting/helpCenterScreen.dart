import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zuzu/widgets/apptheme.dart';

class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({Key? key}) : super(key: key);

  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Help Center'),
          leading: const Icon(Icons.arrow_back_rounded),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.more_horiz),
            )
          ],
          bottom: const TabBar(
            indicatorColor: AppTheme.primaryColor,
            labelColor: AppTheme.primaryColor,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: 'Faq'),
              Tab(text: 'Contact US'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                          itemCount: 5,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: AlwaysScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              margin: EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(color: AppTheme.primaryColor, width: 2)),
                              child: Center(
                                  child: const Text(
                                'Account',
                                style: TextStyle(color: AppTheme.primaryColor),
                              )),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Search here ....",
                        hintStyle: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.5,
                            decorationThickness: 6),
                        suffixIcon: const Icon(Icons.search),
                        suffixIconColor: Colors.black,
                      ),
                    ),
                    // Contents of Tab 1
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(left: 15,right: 15),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.only(left: 15, right: 15,top: 15,bottom: 15),
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.10),
                          borderRadius: BorderRadius.circular(11),),
                      child: Row(
                        children: [
                          Center(
                              child: const Text(
                            'Customer Serivce',
                            style: TextStyle(color: Colors.black,),
                          )),
                        ],
                      ),
                    )
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
