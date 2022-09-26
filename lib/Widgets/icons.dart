import 'package:flutter/material.dart';

class BackNavigationIcon extends StatelessWidget {
  const BackNavigationIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back_ios),
    );
  }
}
