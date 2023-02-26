import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/app.dart';
import 'package:mobile/utils/localization_provider_widget.dart';
import 'package:mobile/utils/riverpod_logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    const ProviderScope(
      observers: [if (!kReleaseMode) Logger()],
      child: LocalizationProviderWidget(child: App()),
    ),
  );
}
