import 'package:flutter/material.dart';
import 'package:task2/ui/page/cilpper_path.dart';
import 'package:task2/ui/page/community_widget.dart';
import 'package:task2/ui/page/posts_widget.dart';
import 'package:task2/ui/page/profile_count_title.dart';
import 'package:task2/ui/page/stamp_book_wiget.dart';
import 'package:task2/ui/page/storis_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isfolloing = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 28, 27, 32),
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(
                  child: Column(children: [
                    Stack(
                      children: [
                        ClipPath(
                          clipper: ClipperPath(),
                          child: Container(
                            height: 110,
                            color: const Color.fromARGB(255, 64, 151, 223),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: CircleAvatar(
                              radius: 70,
                              backgroundImage:
                                  AssetImage('assets/image/profile.jpg'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, right: 20),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  isfolloing = !isfolloing;
                                });
                                // print('object');
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(100, 10),
                                backgroundColor:
                                    const Color.fromARGB(255, 28, 27, 32),
                              ),
                              child: Text(
                                isfolloing ? 'Following' : 'Follow',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 220, 207, 233),
                                    fontSize: 11),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 0),
                      child: Text(
                        "Shane Mathias",
                        style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 234, 230, 230),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text(
                      'Co founder ✨🦋',
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 15),
                      child: StorisWidget(),
                    ),
                    SizedBox(
                      height: 40,
                      // color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const ProfileCountTitle(
                                count: '2',
                                titel: 'Post',
                              ),
                              Container(
                                height: 40,
                                width: 2.5,
                                color: Colors.black,
                              ),
                              const ProfileCountTitle(
                                count: '1',
                                titel: 'Followers',
                              ),
                              Container(
                                height: 40,
                                width: 2.5,
                                color: Colors.black,
                              ),
                              const ProfileCountTitle(
                                count: '2',
                                titel: 'Following',
                              ),
                            ]),
                      ),
                    )
                  ]),
                ),
              ];
            },
            body: Column(children: [
              const SizedBox(
                height: 3,
              ),
              const TabBar(
                  indicatorColor: Color.fromARGB(255, 14, 124, 226),
                  labelColor: Color.fromARGB(208, 235, 204, 255),
                  unselectedLabelColor: Color.fromARGB(186, 255, 255, 255),
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      child: Text(
                        'Posts',
                        style: TextStyle(
                            //color: Color.fromARGB(186, 255, 255, 255),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Stamp Book',
                        style: TextStyle(
                            //color: Color.fromARGB(186, 255, 255, 255),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Community',
                        style: TextStyle(
                            //color: Color.fromARGB(186, 255, 255, 255),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ]),
              Expanded(
                child: TabBarView(children: [
                  PostsWiget(),
                  const StampBookWidget(),
                  const CommunityWidget()
                ]),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
