import 'package:brawn_app_test/presentation/utility/dimensions.dart';
import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    required this.errorMessage,
    required this.onRetryPressed,
    super.key,
  });

  final String errorMessage;
  final VoidCallback onRetryPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Oops! There's an issue",
            style: TextStyle(
              fontSize: Dimensions.fontSizeExtraExtraLarge,
              color: theme.colorScheme.error,
            ),
          ),
          Text(
            errorMessage,
            maxLines: 5,
            style: TextStyle(
              fontSize: Dimensions.fontSizeMedium,
              color: theme.colorScheme.error,
            ),
          ),
          TextButton(
            onPressed: onRetryPressed,
            child: Text(
              'Retry',
            ),
          ),
        ],
      ),
    );
  }
}
