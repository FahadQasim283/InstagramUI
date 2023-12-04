import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/widgets.dart';
import '../utils/routenames.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int iconIndex = 0;
  int tapped = -1;
  late int liked = 0;
  Icon tappedHeart = const Icon(CupertinoIcons.heart);
  List<String> profilePictures = [
    "images/gorila.jpg",
    "images/hill_tree.jpeg",
    "images/jungle.jpeg",
    "images/land.jpeg",
    "images/lion.jpg",
    "images/lone_tree_day.jpeg",
    "images/lone_tree_night.jpeg",
    "images/monkey.jpg",
    "images/nature.jpeg",
    "images/owl.jpg",
    "images/sunflower.jpeg",
    "images/tiger.jpg",
    "images/tree.jpeg",
    "images/trees.jpeg",
  ];

  Future<void> refreshScreen() async => Future.delayed(const Duration(seconds: 2));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: RefreshIndicator(
        onRefresh: refreshScreen,
        child: SingleChildScrollView(
          child: Column(
            children: [
              story(),
              post(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomAppBar(),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: Image.asset(
        "images/insta.png",
        height: 100,
      ),
      actions: [
        customIconButton(
          onpressed: () {},
          icon: const Icon(Icons.add_circle_outline_rounded),
        ),
        customIconButton(
          onpressed: () {},
          icon: const Icon(Icons.favorite_outline_sharp),
        ),
        customIconButton(
          onpressed: () {},
          icon: const Icon(Icons.chat_bubble_outline),
        ),
      ],
    );
  }

// post
  Widget post() {
    return Column(
      children: List.generate(
        profilePictures.length,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: const AssetImage("images/instagram_story.png"),
                  radius: 17,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage(
                      profilePictures[index],
                    ),
                  ),
                ),
                trailing: customIconButton(
                  onpressed: () {},
                  icon: const Icon(Icons.more_vert),
                ),
                title: const Text("User_28._"),
                subtitle: const Text("\t\tsponsored"),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 1.43,
                width: double.infinity,
                child: Image(
                  fit: BoxFit.fitHeight,
                  image: AssetImage(
                    profilePictures[index],
                  ),
                ),
              ),
              Row(
                children: [
                  customIconButton(
                    onpressed: () => setState(() {
                      tapped++;
                      liked = 1;
                      if (tapped % 2 == 0) {
                        tappedHeart = const Icon(
                          CupertinoIcons.heart_solid,
                          color: Color.fromARGB(255, 255, 0, 0),
                        );
                      } else {
                        liked = 0;
                        tappedHeart = const Icon(CupertinoIcons.heart);
                      }
                    }),
                    icon: tappedHeart,
                  ),
                  customIconButton(
                    onpressed: () {},
                    icon: const Icon(CupertinoIcons.chat_bubble),
                  ),
                  customIconButton(
                    onpressed: () {},
                    icon: const Icon(Icons.send),
                  ),
                  const Spacer(),
                  customIconButton(
                    onpressed: () {},
                    icon: const Icon(Icons.bookmark_border),
                  ),
                ],
              ),
              Column(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: "User28._3_\n",
                      children: [
                        TextSpan(
                          text:
                              "\nIn this updated code, I replaced the Navigator.of(context).canPop() check with Navigator.canPop(context) to determine if there are routes in the navigator's history. Additionally, I changed the predicate in pushNamedAndRemoveUntil to (route) => false to ensure all routes are removed from the stack.",
                          style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.normal),
                        ),
                        TextSpan(text: " See more..."),
                      ],
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w600),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        elevation: 2,
                        context: context,
                        builder: (context) => Container(
                          height: MediaQuery.sizeOf(context).height / 1.5,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(91, 203, 255, 246),
                          ),
                          child: const Text("Comment 1  "),
                        ),
                      );
                    },
                    child: const Text(
                      "View All 18 comments",
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // story
  Widget story() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          profilePictures.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 35,
                  backgroundImage: const AssetImage("images/instagram_story.png"),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      profilePictures[index],
                    ),
                    radius: 32,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Profile Picture",
                  style: TextStyle(fontSize: 12, color: Colors.black87),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // bottom app bar
  Widget bottomAppBar() {
    return BottomAppBar(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        customIconButton(
          onpressed: () => setState(() => iconIndex = 0),
          icon: const Icon(CupertinoIcons.home),
          iconColor: iconIndex == 0 ? const Color.fromRGBO(203, 73, 101, 1) : const Color.fromRGBO(45, 45, 45, 1),
        ),
        customIconButton(
          onpressed: () => setState(() {
            iconIndex = 1;
            Navigator.pushNamed(context, RouteNames.searchPageRoute);
          }),
          icon: const Icon(CupertinoIcons.search),
          iconColor: iconIndex == 1 ? const Color.fromRGBO(203, 73, 101, 1) : const Color.fromRGBO(45, 45, 45, 1),
        ),
        customIconButton(
          onpressed: () => setState(() => iconIndex = 2),
          icon: const Icon(Icons.ondemand_video),
          iconColor: iconIndex == 2 ? const Color.fromRGBO(203, 73, 101, 1) : const Color.fromRGBO(45, 45, 45, 1),
        ),
        customIconButton(
          onpressed: () => setState(() => iconIndex = 3),
          icon: const Icon(Icons.card_travel),
          iconColor: iconIndex == 3 ? const Color.fromRGBO(203, 73, 101, 1) : const Color.fromRGBO(45, 45, 45, 1),
        ),
        customIconButton(
          onpressed: () => setState(() => iconIndex = 4),
          icon: const Icon(CupertinoIcons.person),
          iconColor: iconIndex == 4 ? const Color.fromRGBO(203, 73, 101, 1) : const Color.fromRGBO(45, 45, 45, 1),
        ),
      ],
    ));
  }
}
