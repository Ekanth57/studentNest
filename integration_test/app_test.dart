import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studentnest/admin/propertyCards/presentation/adminPropertyDetailsPage.dart';
import 'package:studentnest/authentication/authentication_file.dart';
import 'package:studentnest/authentication/otp_page.dart';
import 'package:studentnest/homepage.dart';
import 'package:studentnest/main.dart' as app_main;
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // group('Phone Authentication Integration Test', () {
  //   late FirebaseAuth auth;
  //
  //   setUpAll(() async {
  //     // Initialize Firebase
  //     await Firebase.initializeApp();
  //     auth = FirebaseAuth.instance;
  //   });
  //
  //   testWidgets('Phone Authentication Test', (WidgetTester tester) async {
  //     // Replace with your app's main function
  //     app_main.main();
  //     await Future.delayed(const Duration(seconds: 3));
  //
  //     // Wait for the main screen to load
  //     await tester.pumpAndSettle();
  //
  //     // Enter a valid phone number in the text field
  //     final phoneNumberFieldFinder = find.byKey(Key('otp_field'));
  //     expect(phoneNumberFieldFinder, findsOneWidget);
  //     await tester.enterText(phoneNumberFieldFinder, '7498070777'); // Replace with a valid phone number
  //     await Future.delayed(const Duration(seconds: 3));
  //     // Find and tap the "Login with Phone" button
  //     final phoneButtonFinder = find.byKey(Key('otp'));
  //     expect(phoneButtonFinder, findsOneWidget);
  //     await tester.tap(phoneButtonFinder);
  //     await tester.pumpAndSettle();
  //     // await Future.delayed(const Duration(seconds: 15));
  //
  //
  //     // Tap the "Send OTP" button
  //     // final sendOtpButtonFinder = find.byKey(Key('otp'));
  //     // expect(sendOtpButtonFinder, findsOneWidget);
  //     // await tester.tap(sendOtpButtonFinder);
  //     // await tester.pumpAndSettle();
  //
  //     // Check if OTP input field appears
  //     final otpFieldFinder = find.byKey(Key('otp_field'));
  //     expect(otpFieldFinder, findsOneWidget);
  //
  //     // Enter the OTP code (simulated OTP)
  //     await tester.enterText(otpFieldFinder, '777777'); // Replace with the OTP code you want to test
  //
  //     // Tap the "Verify OTP" button
  //     // final verifyOtpButtonFinder = find.text('Verify OTP');
  //     // expect(verifyOtpButtonFinder, findsOneWidget);
  //     // await tester.tap(verifyOtpButtonFinder);
  //     // await tester.pumpAndSettle();
  //
  //     // Check if the user is navigated to the home screen (or any screen indicating successful login)
  //     final homeScreenFinder = find.byType(HomePage);
  //     expect(homeScreenFinder, findsOneWidget);
  //
  //     // Check if the user is successfully authenticated
  //     expect(auth.currentUser, isNotNull);
  //   });
  // });


  group('admin login', () {
    testWidgets('verify admin user name and password and sign out',
            (widgetTester) async{
      app_main.main();
      await Future.delayed(const Duration(seconds: 3));
      await widgetTester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      await widgetTester.tap(find.byKey(Key('admin')));
      await Future.delayed(const Duration(seconds: 2),);
      await widgetTester.enterText(find.byKey(Key('email')),'admin@studentnest.com');
      await Future.delayed(const Duration(seconds: 2));
      await widgetTester.enterText(find.byKey(Key('password')),'Studentnest@123');
      await Future.delayed(const Duration(seconds: 2));
      await widgetTester.tap(find.byKey(Key('button')));
      await Future.delayed(const Duration(seconds: 2));
      await widgetTester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      expect(find.byType(AdminPropertiesListPage), findsOneWidget);
      await Future.delayed(const Duration(seconds: 3));
      await widgetTester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      await widgetTester.tap(find.byKey(Key('signout')));
      await Future.delayed(const Duration(seconds: 2));
      await widgetTester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      expect(find.byType(AuthenticationPage), findsOneWidget);
            });
  });
}




