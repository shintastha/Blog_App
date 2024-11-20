import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/auth/domain/repositary/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserSignOut implements UseCase<void, NoParams> {
  final AuthRepository authRepositary;

  const UserSignOut(this.authRepositary);

  @override
  Future<Either<Failure, void>> call(NoParams params) async {
    return await authRepositary.signOut();
  }
}
