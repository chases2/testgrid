// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app/main.dart';

Widget createConfigWidget() =>
    MaterialApp(home: ConfigReader(title: 'Config Reader Test'));

void main() {
  group('Config Example Tests', () {
    testWidgets('Widget contains controls on init',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(createConfigWidget());

      expect(find.text('Config Reader Test'), findsOneWidget);
      expect(find.text('Press Button to call API'), findsOneWidget);
      expect(find.byTooltip("Call API"), findsOneWidget);
    });

    testWidgets('Widget displays error if API is unavailable',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(createConfigWidget());

      expect(find.byTooltip("Call API"), findsOneWidget);

      await tester.tap(find.byTooltip("Call API"));
      await tester.pumpAndSettle(Duration(seconds: 1));
      expect(find.text('Error with API call: 400'), findsOneWidget);
    });

    testWidgets('Widget displays info', (WidgetTester tester) async {
      // Generally state should be private
      // TODO(chases2): Decouple the API-calling logic and the widget-reading
      //   logic so we can "mock an API" instead of mocking data
      await tester.pumpWidget(createConfigWidget());
      var state = tester.state(find.byType(ConfigReader)) as ConfigReaderState;
      state.setState(() {
        state.list = ["foo", "bar"];
      });

      await tester.pump();

      expect(find.text("foo"), findsOneWidget);
      expect(find.text("bar"), findsOneWidget);
    });
  });
}
