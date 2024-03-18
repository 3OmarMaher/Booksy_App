import 'package:booksy/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/faliures.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
   Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
}
