import 'package:flutter/material.dart';
import 'package:sbase/app.dart';
import 'package:sbase/utils/env.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: AppEnv.sbUrl,
    anonKey: AppEnv.sbAnonKey,
  );

  // await GetStorage.init();

  runApp(const App());
}
