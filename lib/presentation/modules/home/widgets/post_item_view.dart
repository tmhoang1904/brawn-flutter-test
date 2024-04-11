import 'package:brawn_app_test/presentation/utility/datetime.dart';
import 'package:brawn_app_test/presentation/utility/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PostItemView extends StatelessWidget {
  const PostItemView({
    required this.id,
    required this.title,
    required this.createdDate,
    this.authorName,
    this.previewURL,
    this.postURL,
    this.content,
    super.key,
  });

  final String id;
  final String title;
  final String? authorName;
  final DateTime createdDate;
  final String? previewURL;
  final String? postURL;
  final String? content;

  Widget _buildLink() {
    return GestureDetector(
      onTap: () {
        launchUrl(Uri.parse(postURL ?? '')).catchError((error) {
          // Ignore
          return false;
        });
      },
      child: Text(
        postURL ?? '',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.blue,
          fontSize: Dimensions.fontSizeSmall,
        ),
      ),
    );
  }

  Widget _buildMainContent(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: Dimensions.fontSizeMedium,
                ),
              ),
              if (postURL != null)
                SizedBox(
                  height: Dimensions.spacingSmall,
                ),
              if (postURL != null) _buildLink(),
            ],
          ),
        ),
        // Image urls are returning status 403,
        // which can not be used from the outside world
        // if (previewURL != null)
        //   SizedBox(
        //     width: Dimensions.spacingMedium,
        //   ),
        // if (previewURL != null)
        //   ClipRRect(
        //     borderRadius: BorderRadius.circular(12),
        //     child: CachedNetworkImage(
        //       imageUrl: previewURL!,
        //       width: 120,
        //       height: 90,
        //       fit: BoxFit.cover,
        //     ),
        //   ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Flexible(
              child: Text(
                authorName ?? 'Anonymous',
                style: TextStyle(
                  fontSize: Dimensions.fontSizeSmall,
                ),
              ),
            ),
            Text(
              '  - ${DateTimeHelper.shared.formatPostDate(createdDate)}',
              style: TextStyle(
                fontSize: Dimensions.fontSizeTiny,
                color: theme.colorScheme.secondary,
              ),
            ),
          ],
        ),
        SizedBox(
          height: Dimensions.spacingSmall,
        ),
        _buildMainContent(context),
      ],
    );
  }
}
