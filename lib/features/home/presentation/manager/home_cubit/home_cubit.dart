import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm_architecture_template/features/home/presentation/manager/home_cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit():super (HomeInitialState());
}