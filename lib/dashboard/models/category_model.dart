import 'package:flutter/material.dart';

class MedicalCategory {
  final String id;
  final String name;
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;

  MedicalCategory({
    required this.id,
    required this.name,
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
  });
}