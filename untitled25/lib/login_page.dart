

import 'package:flutter/material.dart';
import 'homepage.dart';
import 'sign_page.dart';
class LoginPage extends StatefulWidget {

	@override
	LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
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
									'تسجيل الدخول',
									style: TextStyle(
										fontSize: 30,
										fontWeight: FontWeight.bold,
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
										// إضافة الأكواد التي تريد تنفيذها عند النقر على الزر
										Navigator.push(context, MaterialPageRoute(builder: (context)
										{


											return HomePage();

										}));


									},
									child: Text('تسجيل الدخول'),
								),
								SizedBox(height: 20),
								TextButton(
									onPressed: () {
										Navigator.push(context, MaterialPageRoute(builder: (context)
										{

											return SignupPage();
										}));
										// إضافة الأكواد التي تريد تنفيذها عند النقر على الزر

									},
									child: Text('ليس لديك حساب؟ سجل الآن'),
								),
							],
						),
					),
				),
			),
		);
	}
}