import 'package:dartz/dartz.dart';
import 'package:flutter_mvvm_architecture_template/core/errors/failure.dart';
import 'package:flutter_mvvm_architecture_template/features/home/data/models/home_model.dart';

abstract class HomeRepo{
  Future<Either<Failure,HomeModel>> fetchData();
}