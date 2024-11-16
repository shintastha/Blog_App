import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/blog/domain/repositaries/blog_repositary.dart';
import 'package:fpdart/src/either.dart';

import '../entities/blog.dart';

class GetAllBlogs implements UseCase<List<Blog>, NoParams> {
  final BlogRepositary blogRepositary;
  GetAllBlogs(this.blogRepositary);
  @override
  Future<Either<Failure, List<Blog>>> call(NoParams params) async {
    return await blogRepositary.getAllBlogs();
  }
}
