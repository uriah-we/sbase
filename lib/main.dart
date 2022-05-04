import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sbase/app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await DotEnv().load(fileName: '.env');

  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL'],
    anonKey: dotenv.env['SUPABASE_ANON_KEY'],
  );

  await GetStorage.init();

  runApp(const App());
}
