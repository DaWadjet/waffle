import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/generated/assets.gen.dart';
import 'package:mobile/generated/locale_keys.g.dart';

class DummyScreen extends StatelessWidget {
  const DummyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(LocaleKeys.bonjour.tr()),
          const SizedBox(height: 20),
          Image.asset(Assets.images.dummyImage.path),
          const SizedBox(height: 20),
          Assets.icons.dummySvg.svg(height: 40, width: 40)
        ],
      ),
    );
  }
}
