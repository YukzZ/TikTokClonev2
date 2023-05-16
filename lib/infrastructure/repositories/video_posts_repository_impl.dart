

import 'package:tiktok_clonev2/domain/datasources/video_posts_datasource.dart';
import 'package:tiktok_clonev2/domain/entities/video_post.dart';
import 'package:tiktok_clonev2/domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository{

  final VideoPostsDatasource videosDatasource;

  VideoPostsRepositoryImpl({ required this.videosDatasource});

  
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }


}