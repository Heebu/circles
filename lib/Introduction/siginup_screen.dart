import 'package:flutter/material.dart';

import '../Widgets/icons.dart';
import '../Widgets/input_text.dart';
import '../Widgets/profile_picture.dart';
import '../Widgets/sizedBoxs.dart';
import '../Widgets/text.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, leading: const BackNavigationIcon()),
      backgroundColor: Colors.purpleAccent.shade100,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 20,
          right: 20,
          bottom: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox20(),
              Header2Text(
                text: "Create an Account",
                color: Colors.white54,
              ),
              const SizedBox20(),
              Container(
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withOpacity(0.09),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const ProfilePicture(),
                    InputDetails(
                      text: 'Full Name',
                      icon: Icons.person,
                      obscured: false,
                    ),
                    InputDetails(
                      text: 'User Name',
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
                    InputDetails(
                      text: 'Password',
                      icon: Icons.password,
                      obscured: false,
                    ),
                  ],
                ),
              ),
              const SizedBox50(),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Create Account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
