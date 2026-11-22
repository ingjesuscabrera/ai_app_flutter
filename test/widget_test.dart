// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ai_app_flutter/core/utils/pref_utils.dart';
import 'package:ai_app_flutter/main.dart';
import 'package:ai_app_flutter/presentation/home_one_container_screen/home_one_container_screen.dart';
import 'package:ai_app_flutter/presentation/spalash_screen/spalash_screen.dart';

void main() {
  testWidgets('App opens on the splash screen', (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({
      PrefUtils.isFirst: false,
      PrefUtils.isLogin: false,
    });

    await tester.pumpWidget(MyApp());

    expect(find.byType(SpalashScreen), findsOneWidget);

    await tester.pump(const Duration(seconds: 3));
    await tester.pumpAndSettle();

    expect(find.byType(HomeOneContainerScreen), findsOneWidget);
  });
}
