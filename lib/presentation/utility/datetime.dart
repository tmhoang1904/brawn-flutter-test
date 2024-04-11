class DateTimeHelper {
  static final shared = DateTimeHelper();

  String formatPostDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays >= 1) {
      // If more than a day, format like "X days ago"
      return '${difference.inDays} ${difference.inDays == 1 ? 'day' : 'days'} ago';
    } else if (difference.inHours >= 1) {
      // If more than an hour, format like "X hours ago"
      return '${difference.inHours} ${difference.inHours == 1 ? 'hour' : 'hours'} ago';
    } else if (difference.inMinutes >= 1) {
      // If more than a minute, format like "X minutes ago"
      return '${difference.inMinutes} ${difference.inMinutes == 1 ? 'minute' : 'minutes'} ago';
    } else {
      // Otherwise, format like "Just now"
      return 'Just now';
    }
  }
}
