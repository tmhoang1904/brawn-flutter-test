import 'package:brawn_app_test/data/repository/posts/posts_repository.dart';
import 'package:brawn_app_test/domain/posts/usecases/get_posts.usecase.dart';
import 'package:brawn_app_test/models/posts/response/post.model.dart';
import 'package:brawn_app_test/presentation/modules/home/widgets/error_view.dart';
import 'package:brawn_app_test/presentation/modules/home/widgets/post_item_view.dart';
import 'package:brawn_app_test/presentation/utility/dimensions.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isFetching = false;
  Error? _error;
  List<PostModel> _data = [];

  @override
  void initState() {
    super.initState();
    // For the demo purpose, only using state instead of BLoC here
    _fetchData();
  }

  void _fetchData() async {
    // To simplify, inject repository directly here.
    // Should be using getIt to inject repository into BLoC.
    final usecase = GetPostsUsecase(const PostsRepositoryImpl());

    try {
      setState(() {
        _isFetching = true;
      });
      final posts = await usecase.execute();
      setState(() {
        _data = posts;
        _error = null;
      });
    } catch (error) {
      // To simplify the code, casting without check.
      // Should always check type before casting.
      setState(() {
        _error = error as Error;
      });
    } finally {
      setState(() {
        _isFetching = false;
      });
    }
  }

  Widget _buildLoading() {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(
        top: Dimensions.spacingMedium,
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: CircularProgressIndicator(
          color: theme.colorScheme.primary,
        ),
      ),
    );
  }

  Widget _buildList() {
    return ListView.separated(
      itemBuilder: (context, index) {
        final item = _data[index];
        return PostItemView(
          id: item.id,
          title: item.title,
          authorName: item.author,
          createdDate: item.createdDate,
          content: item.content,
          postURL: item.url,
          previewURL: item.previewURL,
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      padding: EdgeInsets.only(
        left: Dimensions.spacingLarge,
        right: Dimensions.spacingLarge,
        top: Dimensions.spacingMedium,
        bottom: Dimensions.spacingGiant,
      ),
      itemCount: _data.length,
    );
  }

  Widget _buildContent() {
    if (_isFetching) {
      return _buildLoading();
    }
    if (_error != null) {
      return ErrorView(
        errorMessage: _error.toString(),
        onRetryPressed: _fetchData,
      );
    }

    return _buildList();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BrawnTestApp',
          style: TextStyle(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        backgroundColor: theme.colorScheme.primary,
      ),
      body: _buildContent(),
    );
  }
}
