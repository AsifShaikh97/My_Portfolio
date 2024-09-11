const _basePath = 'assets/images';

abstract class AppAssets {
  static const devImg = '$_basePath/dev_img.jpg';
  static const boyImg = '$_basePath/boy_img.jpg';
  static const androidLogo = '$_basePath/android.svg';
  static const scrappingLogo = '$_basePath/slider.svg';
  static const uiDesignLogo = '$_basePath/ruler.svg';
  static const playStoreLogo = '$_basePath/playstore.png';
  static const marathiquran = '$_basePath/marathiquran.png';
  static const indianikah = '$_basePath/indianikah.png';
  static const drmohan = '$_basePath/drmohan.png';
  static const staffofy = '$_basePath/staffofy.png';
  static const ivvp = '$_basePath/ivvp.png';
  static const lightBulb = '$_basePath/light-bulb.png';
  static const rocket = '$_basePath/rocket.png';
  static const mobile = '$_basePath/smartphone.png';
}

Map<String, String> techStackImages = {
  'Flutter': 'assets/icons/flutter.svg',
  'Android': 'assets/images/android-studio.svg',
  'Firebase': 'assets/icons/firebase.svg',
  'MongoDB': 'assets/icons/mongo.svg',
  'NodeJS': 'assets/icons/node.svg',
  // 'Docker': 'assets/icons/docker.svg',
  // 'Linux': 'assets/icons/linux.png',
  'Git': 'assets/icons/git.png',
  'AWS': 'assets/icons/aws.svg',
};

class AppAnimations {
  static const String introAnimation = 'assets/animations/laptop-turn.riv';
}
