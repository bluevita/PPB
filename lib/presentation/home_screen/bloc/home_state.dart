part of 'home_bloc.dart';

/// Represents the state of Home in the application.
class HomeState extends Equatable {
  final TextEditingController? searchController;
  final HomeModel? homeModelObj;

  const HomeState({
    this.searchController,
    this.homeModelObj,
  });

  @override
  List<Object?> get props => [searchController, homeModelObj];

  /// Creates a copy of the current HomeState with the specified changes.
  /// Returns a new HomeState instance with the updated values.
  HomeState copyWith({
    TextEditingController? searchController,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      searchController: searchController ?? this.searchController,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}
