// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Test Env is OK', () async {
    dotenv.testLoad(fileInput: File('.env').readAsStringSync());
    final String expectedStr = dotenv.env['SUPABASE_KEY']!;

    const String actualStr =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndiZm10dHFnb3dncGZ6ZXdwdWtrIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTE2MzU0NjMsImV4cCI6MTk2NzIxMTQ2M30.3VL5zGuG3cKveqf6NNSZETUi7mVn-2aQmpEPxT0V5lY';

    expect(actualStr, expectedStr);
  });
}
