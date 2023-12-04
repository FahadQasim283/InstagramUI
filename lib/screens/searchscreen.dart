import 'package:flutter/material.dart';

import '../constants/widgets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Serach screen"),
        backgroundColor: Colors.amber,
        actions: [
          customIconButton(
            onpressed: () {},
            icon: const Icon(Icons.dangerous),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(121, 79, 79, 13),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false, // for back button
          title: const Text("Sliver App Bar"),
          expandedHeight: 200,
          centerTitle: true,
          floating: true,
          // collapsedHeight: 300,
          // pinned: true,
          flexibleSpace: Image.asset(
            "images/trees.jpeg",
            fit: BoxFit.fill,
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            height: 400,
            color: const Color.fromARGB(255, 132, 150, 0),
          ),
          Container(
            height: 300,
            color: const Color.fromARGB(255, 72, 0, 150),
          ),
          Container(
            height: 100,
            color: Colors.teal,
          ),
          Container(
            height: 100,
            color: const Color.fromARGB(255, 1, 5, 5),
          ),
        ])),
      ]),
    );
  }
}
