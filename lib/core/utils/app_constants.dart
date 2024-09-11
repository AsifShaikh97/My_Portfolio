import '../../data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const List<Project> projects = [
    Project(
      name: 'India Nikah',
      imageUrl:
          AppAssets.indianikah,
      description:
          'free matrimony app for Indian Muslims, where user can see profile download bio data and developed with Getx state management and firebase for crashlytics analytic & google analytic.',
      googlePlay: 'https://play.google.com/store/search?q=india%20nikah&c=apps'
    ),
    Project(
      name: 'IVVP',
      imageUrl:
      AppAssets.ivvp,
      description:
          'ITI Academic Courses Hub, a cutting-edge Flutter app that serves as a leading destination for online ITI academic courses with developed with Bloc state management & Firebase for push notification',
      googlePlay: 'https://play.google.com/store/search?q=ivvp&c=apps'
    ),
    Project(
      name: 'Marathi Quran',
      imageUrl: AppAssets.marathiquran,
      description:
          'an quran app with marathi audio & text translation where every & random ayat can download,search & bookmark. used provider state management & firebase for push notification & random ayat.',
      googlePlay: 'https://play.google.com/store/apps/details?id=marathiquran.marathiquranapp'
    ),
    Project(
      name: 'Dr.Mohans DiaLA',
      imageUrl:
      AppAssets.drmohan,
      description: 'diabetes Lifestyle Assistant a flutter app designed to enhance the experience for registered patients with features Book Appointment,Find the Nearest Dr. Mohans Clinic etc.',
      googlePlay: 'https://play.google.com/store/apps/details?id=com.drmohan.drmohan'
    ),
    Project(
      name: 'Staffofy & Staffofy Worker',
      imageUrl:
      AppAssets.staffofy,
      description: 'a home service app for different kinds of home service such as AC repair,pulmber etc. Application (user & technician) are developed with fultter and firebase for auth & push notification.',
      googlePlay: 'https://play.google.com/store/apps/details?id=com.staffofyuser.staffofyuser'
    ),
  ];
}
