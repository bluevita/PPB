// ignore: unused_import
import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist2_item_widget] screen.
// ignore_for_file: must_be_immutable
class Userprofilelist2ItemModel {
  Userprofilelist2ItemModel({
    this.blablablablalsa,
    this.userImage,
    this.movieTitle,
    this.movieDescriptio,
    this.id,
  });

  final String? blablablablalsa;
  final String? userImage;
  final String? movieTitle;
  final String? movieDescriptio;
  final String? id;

  Userprofilelist2ItemModel copyWith({
    String? blablablablalsa,
    String? userImage,
    String? movieTitle,
    String? movieDescriptio,
    String? id,
  }) {
    return Userprofilelist2ItemModel(
      blablablablalsa: blablablablalsa ?? this.blablablablalsa,
      userImage: userImage ?? this.userImage,
      movieTitle: movieTitle ?? this.movieTitle,
      movieDescriptio: movieDescriptio ?? this.movieDescriptio,
      id: id ?? this.id,
    );
  }
}
