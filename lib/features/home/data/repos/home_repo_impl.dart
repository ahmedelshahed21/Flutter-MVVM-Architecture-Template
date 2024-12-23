import 'package:dartz/dartz.dart';
import 'package:flutter_mvvm_architecture_template/core/errors/failure.dart';
import 'package:flutter_mvvm_architecture_template/features/home/data/models/home_model.dart';
import 'package:flutter_mvvm_architecture_template/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failure, HomeModel>> fetchData() {
    // TODO: implement fetchData
    throw UnimplementedError();
  }
}