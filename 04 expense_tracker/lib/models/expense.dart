import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();
const uuid = Uuid();

enum Category { leisure, food, travel, work }

const categoryIcons = {
  Category.leisure: Icons.movie,
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.work: Icons.work,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category; // leisure Expense, food Expense, etc.

  String get formattedDate {
    return formatter.format(date);
  }
}
