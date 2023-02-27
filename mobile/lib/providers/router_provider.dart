import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/router/app_router.dart';

final routerProvider = Provider<AppRouter>((_) => AppRouter());
