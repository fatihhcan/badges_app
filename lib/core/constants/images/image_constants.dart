class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance {
    return _instance ??= ImageConstants._init();
  }

  ImageConstants._init();

  String get iconFlag => toPng( 'images', 'icons','icon_flag');
  String get addingValue => toPng( 'images', 'badges','adding_value');
  String get creative => toPng( 'images', 'badges','creative');
  String get gratitude => toPng( 'images', 'badges','gratitude');
  String get innovative => toPng( 'images', 'badges','innovative');
  String get lead => toPng( 'images', 'badges','lead');
  String get masteringHisJob => toPng( 'images', 'badges','mastering_his_job');
  String get openToChange => toPng( 'images', 'badges','open_to_change');
  String get problemSolver => toPng( 'images', 'badges','problem_solver');
  String get teamPlayer => toPng( 'images', 'badges','team_player');


  String get iconBack => toSvg( 'images', 'icons','back_icon');



  String toPng(String path, String folder, String name) => 'assets/$path/$folder/$name.png';
  String toSvg(String path, String folder, String name) => 'assets/$path/$folder/$name.svg';
}
