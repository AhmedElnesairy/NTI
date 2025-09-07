
import 'package:equatable/equatable.dart';

class TasbeehState extends Equatable {
  final int count;
  final int phaseIndex;
  final int imageIndex;

  const TasbeehState({
    this.count = 0,
    this.phaseIndex = 0,
    this.imageIndex = 0,
  });

  TasbeehState copyWith({
    int? count,
    int? phaseIndex,
    int? imageIndex,
  }) {
    return TasbeehState(
      count: count ?? this.count,
      phaseIndex: phaseIndex ?? this.phaseIndex,
      imageIndex: imageIndex ?? this.imageIndex,
    );
  }

  @override
  List<Object?> get props => [count, phaseIndex, imageIndex];
}
