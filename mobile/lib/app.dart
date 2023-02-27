import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:mobile/providers/router_provider.dart';
import 'package:mobile/router/app_router.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  Widget build(BuildContext context) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: router.delegate(
        initialRoutes: [const DummyRoute()],
      ),
      routeInformationParser: router.defaultRouteParser(),
      builder: (_, child) => _Unfocus(child: child!),
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      localizationsDelegates: [
        ...GlobalMaterialLocalizations.delegates,
        ...context.localizationDelegates,
        FormBuilderLocalizations.delegate,
      ],
    );
  }
}

class _Unfocus extends StatelessWidget {
  const _Unfocus({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: child,
    );
  }
}
