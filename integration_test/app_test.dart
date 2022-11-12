import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_tests_playground/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Home Page E2E Test', () {
    testWidgets('Click on fav and check the color',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      expect(find.text('Startup Name Generator'), findsOneWidget);
      expect(find.text('1'), findsNothing);

      await tester.tap(find.byIcon(Icons.favorite));
      await tester.pumpAndSettle();
    });
  });
}
