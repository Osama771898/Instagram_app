import 'package:flutter/material.dart';
import 'login_page.dart';

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
				debugShowCheckedModeBanner: false,
				title: 'instgram',
				theme: ThemeData.dark(),

				home: LoginPage()
		);
	}
}