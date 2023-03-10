class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance {
    return _instance ??= ImageConstants._init();
  }

  ImageConstants._init();

  String get iconFlag => toPng( 'images', 'icons','icon_flag');
  String get badge3 => toPng( 'images', 'badges','adding_value');
  String get badge4 => toPng( 'images', 'badges','creative');
  String get badge5 => toPng( 'images', 'badges','gratitude');
  String get badge6 => toPng( 'images', 'badges','innovative');
  String get badge7 => toPng( 'images', 'badges','lead');
  String get badge8 => toPng( 'images', 'badges','mastering_his_job');
  String get badge9 => toPng( 'images', 'badges','open_to_change');
  String get badge10 => toPng( 'images', 'badges','problem_solver');
  String get badge11 => toPng( 'images', 'badges','team_player');



  String toPng(String path, String folder, String name) => 'assets/$path/$folder/$name.png';
  String toSvg(String path, String folder, String name) => 'assets/$path/$folder/$name.svg';
}
