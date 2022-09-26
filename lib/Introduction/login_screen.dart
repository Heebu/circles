import 'package:circles/Introduction/forgotten_password.dart';
import 'package:circles/Introduction/siginup_screen.dart';
import 'package:circles/Widgets/size.dart';
import 'package:circles/Widgets/sizedBoxs.dart';
import 'package:circles/home_page.dart';
import 'package:flutter/material.dart';

import '../Widgets/colors.dart';
import '../Widgets/input_text.dart';
import '../Widgets/text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.introductionBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: Sizes.sidePadding, horizontal: Sizes.topPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox50(),
              const Header1Text(
                text: 'Circles',
              ),
              const SizedBox50(),
              Header2Text(
                text: "Hey, we've missed you!",
                color: AppColor.fadeTextColor,
              ),
              const SizedBox20(),
              Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.bodyBackgroundColor
                      .withOpacity(AppColor.opacity),
                ),
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InputDetails(
                      text: 'Username',
                      icon: Icons.person,
                      obscured: false,
                    ),
                    InputDetails(
                      text: 'Email',
                      icon: Icons.mail,
                      obscured: false,
                      inputType: TextInputType.emailAddress,
                    ),
                    InputDetails(
                      text: 'Password',
                      icon: Icons.password,
                      obscured: true,
                    ),
                  ],
                ),
              ),
              const SizedBox50(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
                child: const Text('Login'),
              ),
              const SizedBox20(),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotPassword(),
                        ),
                      );
                    },
                    child: const Text('Forgot Password?'),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    },
                    child: const Text('Create an account'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
