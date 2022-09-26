import 'package:circles/Widgets/colors.dart';
import 'package:circles/Widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widgets/icons.dart';
import '../../Widgets/input_text.dart';
import '../../Widgets/profile_picture.dart';
import '../../Widgets/size.dart';
import '../../Widgets/sizedBoxs.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackNavigationIcon(),
        centerTitle: true,
        title: Header2Text(text: 'Profile', color: AppColor.fadeTextColor),
      ),
      backgroundColor: AppColor.bodyBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: Sizes.sidePadding, horizontal: Sizes.topPadding),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ProfilePicture(),
            const SizedBox10(),
            Header2Text(
              text: 'Heebu-Prime',
              color: Colors.purple.shade900,
            ),
            const SizedBox10(),
            Text('1000 Followers  | 200 Following'),
            const SizedBox30(),
            const SimpleTextField(
              iconData: Icons.person_rounded,
              text: 'About Me',
            ),
            const SizedBox10(),
            const SimpleTextField(
              iconData: Icons.work,
              text: 'Profession(s)',
            ),
            const Spacer(),
            Header2Text(
              text: 'Circles',
              color: AppColor.fadeTextColor,
            )
          ],
        ),
      ),
    );
  }
}
