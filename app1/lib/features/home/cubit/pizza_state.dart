part of 'pizza_cubit.dart';

@immutable
sealed class PizzaState {}

final class PizzaInitial extends PizzaState {}
final class PizzaLoading extends PizzaState {}
final class PizzaSuccess extends PizzaState {
  final List <PizzaModel> pizza ;
  PizzaSuccess ({required this.pizza});
}












