import 'package:flutter/material.dart';
import 'constants/colors.dart';
import 'constants/text_strings.dart';
import 'dashboard/screens/dashboard_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ATexts.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'PublicSans',
        scaffoldBackgroundColor: AColors.background,
        primaryColor: AColors.primary,

        // AppBar Theme
        appBarTheme: AppBarTheme(
          backgroundColor: AColors.background,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontFamily: 'PublicSans',
            fontSize: 23,
            letterSpacing: 0.5,
            height: 1,
            fontWeight: FontWeight.w500,
            color: AColors.white,
          ),
        ),

        // Text Theme
        textTheme: TextTheme(
          // Display styles
          displayLarge: TextStyle(
            fontFamily: 'PublicSans',
            fontSize: 16,
            fontWeight: FontWeight.w600,
            height: 1.4,
            letterSpacing: 0,
            color: AColors.textPrimary,
          ),
          displayMedium: TextStyle(
            fontFamily: 'PublicSans',
            fontSize: 14,
            height: 1.4,
            letterSpacing: 0,
            fontWeight: FontWeight.w400,
            color: AColors.textSecondary,
          ),
          displaySmall: TextStyle(
            fontFamily: 'PublicSans',
            fontSize: 12,
            height: 1.3,
            letterSpacing: 0.2,
            fontWeight: FontWeight.w500,
            color: AColors.textSecondary,
          ),

          // Headline styles
          headlineLarge: TextStyle(
            fontFamily: 'PublicSans',
            fontSize: 16,
            height: 1.2,
            letterSpacing: 0.2,
            fontWeight: FontWeight.w700,
            color: AColors.textPrimary,
          ),
          headlineMedium: TextStyle(
            fontFamily: 'PublicSans',
            fontSize: 14,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w400,
            color: AColors.textSecondary,
          ),
          headlineSmall: TextStyle(
            fontFamily: 'PublicSans',
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AColors.textPrimary,
          ),

          // Title styles
          titleLarge: TextStyle(
            fontFamily: 'PublicSans',
            fontSize: 16,
            height: 2.4,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w600,
            color: AColors.textPrimary,
          ),
          titleMedium: TextStyle(
            fontFamily: 'PublicSans',
            fontSize: 14,
            height: 2.8,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w500,
            color: AColors.background,
          ),
          titleSmall: TextStyle(
            fontFamily: 'PublicSans',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AColors.textPrimary,
          ),

          // Body styles
          bodyLarge: TextStyle(
            fontFamily: 'PublicSans',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AColors.textPrimary,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'PublicSans',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AColors.textPrimary,
          ),
          bodySmall: TextStyle(
            fontFamily: 'PublicSans',
            fontSize: 12,
            height: 1.4,
            letterSpacing: 0,
            fontWeight: FontWeight.w400,
            color: AColors.textSecondary,
          ),

          // Label styles
          labelLarge: TextStyle(
            fontFamily: 'PublicSans',
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AColors.textPrimary,
          ),
          labelMedium: TextStyle(
            fontFamily: 'PublicSans',
            fontSize: 12,
            height: 2.7,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w500,
            color: AColors.textWhite,
          ),
          labelSmall: TextStyle(
            fontFamily: 'PublicSans',
            fontSize: 11,
            fontWeight: FontWeight.w400,
            color: AColors.textSecondary,
          ),
        ),

        // Button Theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(
              fontFamily: 'PublicSans',
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: TextStyle(
              fontFamily: 'PublicSans',
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      home: const DashboardScreen(),
    );
  }
}
