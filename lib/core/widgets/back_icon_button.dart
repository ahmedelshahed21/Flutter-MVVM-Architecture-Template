import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BackIconButton extends StatelessWidget {
  const BackIconButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        GoRouter.of(context).pop();
      },
      iconSize: 20,
      icon: const Icon(
        Icons.arrow_back_ios,
      ),
    );
  }
}
