import 'package:flutter_test/flutter_test.dart';
import 'package:restau_app/main.dart';

void main() {
  testWidgets('Menu screen loads correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(RestaurantApp());

    // Verify that the "Menu" title is displayed.
    expect(find.text('Menu'), findsOneWidget);

    // Check if menu items exist.
    expect(find.text('Kimchi Stew'), findsOneWidget);
    expect(find.text('Dumplings'), findsOneWidget);
    expect(find.text('Mul Naengmyeon'), findsOneWidget);
    expect(find.text('Bibimbap'), findsOneWidget);
  });
}
