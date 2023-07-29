// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';




import 'add_page.dart';
import 'model/unils/mytheme.dart';
import 'page1.dart';


class HomePage extends StatefulWidget {
	const HomePage({super.key});

	@override
	State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
	int pgindex = 0;
	void selindex(int index) {
		setState(() {});
		pgindex = index;
	}
	final List<Widget> pages = [
		Home(),
		Home (),
		AddPage(),
		Home (),
		Home (),
	];

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.black,
			bottomNavigationBar: BottomNavigationBar(
					backgroundColor: Colors.black,
					type: BottomNavigationBarType.fixed,
					showSelectedLabels: false,
					showUnselectedLabels: false,
					iconSize: 30,
					onTap: selindex,
					currentIndex: pgindex,
					items: [
						BottomNavigationBarItem(
								icon: Icon(
									Icons.home,
									color: iconcolor,
								),
								label: "home"),
						BottomNavigationBarItem(
								icon: Icon(
									Icons.search,
									color: iconcolor,
								),
								label: "Search"),
						BottomNavigationBarItem(
								icon: Icon(
									Icons.add,
									color: iconcolor,
								),
								label: "Add"),
						BottomNavigationBarItem(
								icon: Icon(
									Icons.video_call_outlined,
									color: iconcolor,
								),
								label: "Reels"),
						BottomNavigationBarItem(
								icon: Icon(
									Icons.person,
									color: iconcolor,
								),
								label: "User Profile")
					]),
			body: pages[pgindex],
		);
	}
}