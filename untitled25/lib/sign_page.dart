

import 'package:flutter/material.dart';

import 'homepage.dart';
import 'login_page.dart';



class SignupPage extends StatefulWidget {
	@override
	SignupPageState createState() => SignupPageState();
}
class SignupPageState extends State<SignupPage> {
	TextEditingController nameController = TextEditingController();
	TextEditingController emailController = TextEditingController();
	TextEditingController passwordController = TextEditingController();
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: SafeArea(
				child: Center(
					child: Padding(
						padding: const EdgeInsets.all(16.0),
						child: Column(
							mainAxisAlignment: MainAxisAlignment.center,
							children: [
								Text(
									'إنشاء حساب',
									style: TextStyle(
										fontSize: 30,
										fontWeight: FontWeight.bold,
									),
								),
								SizedBox(height: 20),
								TextFormField(
									controller: nameController,
									decoration: InputDecoration(
										hintText: 'الاسم الكامل',
										border: OutlineInputBorder(),
									),
								),
								SizedBox(height: 20),
								TextFormField(
									controller: emailController,
									decoration: InputDecoration(
										hintText: 'البريد الإلكتروني',
										border: OutlineInputBorder(),
									),
								),
								SizedBox(height: 20),
								TextFormField(
									controller: passwordController,
									obscureText: true,
									decoration: InputDecoration(
										hintText: 'كلمة المرور',
										border: OutlineInputBorder(),
									),
								),
								SizedBox(height: 20),
								ElevatedButton(
									onPressed: () {
										Navigator.push(context, MaterialPageRoute(builder: (context)
										{


											return HomePage();
										}));
										// إضافة الأكواد التي تريد تنفيذها عند النقر على الزر
									},
									child: Text('تسجيل'),
								),
								SizedBox(height: 20),
								TextButton(
									onPressed: () {
										// إضافة الأكواد التي تريد تنفيذها عند النقر على الزر
										Navigator.push(context, MaterialPageRoute(builder: (context)
										{
											return LoginPage();
										}));
									},
									child: Text('لديك حساب؟ تسجيل الدخول'),
								),
							],
						),
					),
				),
			),
		);
	}
}
