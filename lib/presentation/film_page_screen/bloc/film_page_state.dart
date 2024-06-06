part of 'film_page_bloc.dart';

/// Represents the state of FilmPage in the application.
// ignore: must_be_immutable
class FilmPageState extends Equatable {
  FilmPageState({
    this.searchController,
    this.synopsisvalueController,
    this.filmPageModelObj,
  });

  TextEditingController? searchController;
  TextEditingController? synopsisvalueController;
  FilmPageModel? filmPageModelObj;

  @override
  List<Object?> get props =>
      [searchController, synopsisvalueController, filmPageModelObj];

  FilmPageState copyWith({
    TextEditingController? searchController,
    TextEditingController? synopsisvalueController,
    FilmPageModel? filmPageModelObj,
  }) {
    return FilmPageState(
      searchController: searchController ?? this.searchController,
      synopsisvalueController:
          synopsisvalueController ?? this.synopsisvalueController,
      filmPageModelObj: filmPageModelObj ?? this.filmPageModelObj,
    );
  }
}
