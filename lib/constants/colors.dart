import 'package:flutter/material.dart';

class AColors {
  // Primary Medical Center Colors (from Figma)
  static const Color primary = Color(0xFF0D6EFD); // Blue
  static const Color secondary = Color(0xFF00D9F5); // Cyan
  static const Color accent = Color(0xFFb0c7ff);
  
  // Background Colors
  static const Color background = Color(0xFFF8F9FA);
  static const Color cardBackground = Colors.white;
  static const Color lightContainer = Color(0xFFF6F6F6);
  
  // Text Colors
  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;
  static const Color textLight = Color(0xFF9E9E9E);
  
  // Button Colors
  static const Color buttonPrimary = Color(0xFF0D6EFD);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);
  
  // Status Colors
  static const Color success = Color(0xFF10B981);
  static const Color warning = Color(0xFFFFC107);
  static const Color error = Color(0xFFDC3545);
  static const Color info = Color(0xFF17A2B8);
  
  // Category Background Colors
  static const Color categoryBlue = Color(0xFFE3F2FD);
  static const Color categoryPink = Color(0xFFFCE4EC);
  static const Color categoryGreen = Color(0xFFE8F5E9);
  static const Color categoryPurple = Color(0xFFF3E5F5);
  static const Color categoryYellow = Color(0xFFFFF9C4);
  static const Color categoryOrange = Color(0xFFFFE0B2);
  
  // Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
  
  // Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);
  
  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF0D6EFD), Color(0xFF00D9F5)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  // Shadow
  static const Color shadow = Color(0x1A000000);
}