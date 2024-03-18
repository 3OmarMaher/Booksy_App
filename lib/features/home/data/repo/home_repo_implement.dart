import 'package:booksy/core/api_services.dart';
import 'package:booksy/core/errors/faliures.dart';
import 'package:booksy/features/home/data/models/book_model/book_model.dart';
import 'package:booksy/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplement(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          point:
              "volumes?Filtering=free-ebooks&sorting=newest &q=subject:programming");
      List<BookModel> books = [];
      for (var items in data['items']) {
        books.add(BookModel.fromJson(items));
      }
      return right(books);
    } catch (e) {
       if(e is DioException)
       {
         return left(ServerFailure.fromDioError(e));
       }


      return left(ServerFailure(
         e.toString(),
      ));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          point:
              "volumes?Filtering=free-ebooks&sorting=newest &q=subject:programming");
      List<BookModel> books = [];
      for (var items in data['items']) {
        books.add(BookModel.fromJson(items));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(
        e.toString(),
      ));
    }
  }
}
