import 'package:circles/Widgets/colors.dart';
import 'package:flutter/material.dart';

import '../Widgets/icons.dart';
import '../Widgets/input_text.dart';
import '../Widgets/size.dart';
import '../Widgets/sizedBoxs.dart';
import '../Widgets/text.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const BackNavigationIcon(),
      ),
      backgroundColor: AppColor.introductionBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: Sizes.sidePadding, horizontal: Sizes.topPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox20(),
              Header2Text(
                text: "Reset Password",
                color: Colors.white54,
              ),
              SizedBox20(),
              Container(
                height: 120,
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
                      text: 'Email',
                      icon: Icons.mail,
                      obscured: false,
                      inputType: TextInputType.emailAddress,
                    ),
                  ],
                ),
              ),
              const SizedBox50(),
              ElevatedButton(
                onPressed: () {},
                child: Text('Reset'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
