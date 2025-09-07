part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}
final class CartDeleteState extends CartState {}

final class CartSuccessState extends CartState {}

final class CartGetState extends CartState {
  final List<LapModel> product;

  CartGetState({required this.product});
}
