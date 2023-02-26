import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LocalizationProviderWidget extends StatelessWidget {
  const LocalizationProviderWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('hu')],
      path: 'assets/translations',
      useFallbackTranslations: true,
      fallbackLocale: const Locale('en'),
      child: child,
    );
  }
}
