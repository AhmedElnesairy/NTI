part of 'lap_cubit.dart';

@immutable
sealed class LapState {}

final class LapInitial extends LapState {}
final class LapLoading extends LapState {}
final class LapSuccess extends LapState {
  final List<LapModel> lap;
  LapSuccess({required this.lap});
}




