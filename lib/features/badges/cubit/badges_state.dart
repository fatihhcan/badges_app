part of 'badges_cubit.dart';

class BadgesState {
  final bool loading;

  const BadgesState(
      {this.loading = false,

      });
  @override
  List<Object?> get props => [loading];

  BadgesState copyWith({
    bool? loading,

  }) {
    return BadgesState(
      loading: loading ?? this.loading,

    );
  }
}
