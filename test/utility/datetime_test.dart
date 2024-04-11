import 'dart:math';

import 'package:brawn_app_test/presentation/utility/datetime.dart';
import 'package:test/test.dart';

void main() {
  group('Test Post Date Format', () {
    final dateTimeHelper = DateTimeHelper.shared;
    test('Given date diff is under 1 min, format "Just now"', () {
      var date = DateTime.now();
      date = date.subtract(const Duration(seconds: 59));
      expect(dateTimeHelper.formatPostDate(date), 'Just now');
    });

    test('Given date diff equals 1 min, format "1 minute ago"', () {
      var date = DateTime.now();
      date = date.subtract(const Duration(seconds: 60));
      expect(dateTimeHelper.formatPostDate(date), '1 minute ago');
    });

    test('''
Given date diff is more than 1 min but under 60 mins, format "X minutes ago"''',
        () {
      var date = DateTime.now();
      const diffMinute = 30;
      date = date.subtract(const Duration(minutes: diffMinute));
      expect(dateTimeHelper.formatPostDate(date), '$diffMinute minutes ago');
    });

    test('Given date diff equals 1 hour, format "1 hour ago"', () {
      var date = DateTime.now();
      const diffHour = 1;
      date = date.subtract(const Duration(hours: diffHour));
      expect(dateTimeHelper.formatPostDate(date), '1 hour ago');
    });

    test('''
Given date diff is more 1 hour but under 24 hours, format "X hours ago"''', () {
      var date = DateTime.now();
      const diffHour = 23;
      date = date.subtract(const Duration(hours: diffHour));
      expect(dateTimeHelper.formatPostDate(date), '$diffHour hours ago');
    });

    test('Given date diff equals 1 day, format "1 day ago"', () {
      var date = DateTime.now();
      const diffDays = 1;
      date = date.subtract(const Duration(days: diffDays));
      expect(dateTimeHelper.formatPostDate(date), '$diffDays day ago');
    });

    test('Given date diff is more than 1 day, format "X days ago"', () {
      var date = DateTime.now();
      final diffDays = Random().nextInt(100) + 2;
      date = date.subtract(Duration(days: diffDays));
      expect(dateTimeHelper.formatPostDate(date), '$diffDays days ago');
    });
  });
}
