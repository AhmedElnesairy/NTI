part of 'fav_cubit.dart';

@immutable
sealed class FavState {}

final class FavInitial extends FavState {}
final class FavLoadingState extends FavState {}
final class FavAddSuccessState extends FavState {}
final class FavDeleteSuccessState extends FavState {}
final class FavGetSuccessState extends FavState {

  final List<LapModel> product;

  FavGetSuccessState({required this.product});
}

