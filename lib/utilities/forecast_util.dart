import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class Util {
  // класс форматирует ату пришедшую в JSON
  static String getFormattedDate(DateTime dateTime) {
    return DateFormat('EEE, MMM d, y').format(dateTime); // Tue, May 5, 2020
  }
}
