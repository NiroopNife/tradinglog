import 'package:intl/intl.dart';

class Formatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatDateTime(DateTime? dateTime) {
    dateTime ??= DateTime.now();
    return DateFormat('d MMMM y hh:mm a').format(dateTime);
  }
}
