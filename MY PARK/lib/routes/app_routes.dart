import 'package:hassan_s_application15/presentation/start_screen/start_screen.dart';
import 'package:hassan_s_application15/presentation/start_screen/binding/start_binding.dart';
import 'package:hassan_s_application15/presentation/sign_screen/sign_screen.dart';
import 'package:hassan_s_application15/presentation/sign_screen/binding/sign_binding.dart';
import 'package:hassan_s_application15/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:hassan_s_application15/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:hassan_s_application15/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:hassan_s_application15/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:hassan_s_application15/presentation/home_page_screen/home_page_screen.dart';
import 'package:hassan_s_application15/presentation/home_page_screen/binding/home_page_binding.dart';
import 'package:hassan_s_application15/presentation/maps_screen/maps_screen.dart';
import 'package:hassan_s_application15/presentation/maps_screen/binding/maps_binding.dart';
import 'package:hassan_s_application15/presentation/keterswedian_screen/keterswedian_screen.dart';
import 'package:hassan_s_application15/presentation/keterswedian_screen/binding/keterswedian_binding.dart';
import 'package:hassan_s_application15/presentation/pengurangan_two_screen/pengurangan_two_screen.dart';
import 'package:hassan_s_application15/presentation/pengurangan_two_screen/binding/pengurangan_two_binding.dart';
import 'package:hassan_s_application15/presentation/hasil_one_screen/hasil_one_screen.dart';
import 'package:hassan_s_application15/presentation/hasil_one_screen/binding/hasil_one_binding.dart';
import 'package:hassan_s_application15/presentation/profile_settings_screen/profile_settings_screen.dart';
import 'package:hassan_s_application15/presentation/profile_settings_screen/binding/profile_settings_binding.dart';
import 'package:hassan_s_application15/presentation/change_password_screen/change_password_screen.dart';
import 'package:hassan_s_application15/presentation/change_password_screen/binding/change_password_binding.dart';
import 'package:hassan_s_application15/presentation/edit_profile_sucsess_screen/edit_profile_sucsess_screen.dart';
import 'package:hassan_s_application15/presentation/edit_profile_sucsess_screen/binding/edit_profile_sucsess_binding.dart';
import 'package:hassan_s_application15/presentation/start_one_screen/start_one_screen.dart';
import 'package:hassan_s_application15/presentation/start_one_screen/binding/start_one_binding.dart';
import 'package:hassan_s_application15/presentation/stop_screen/stop_screen.dart';
import 'package:hassan_s_application15/presentation/stop_screen/binding/stop_binding.dart';
import 'package:hassan_s_application15/presentation/list_kendaraan_screen/list_kendaraan_screen.dart';
import 'package:hassan_s_application15/presentation/list_kendaraan_screen/binding/list_kendaraan_binding.dart';
import 'package:hassan_s_application15/presentation/regis_plat_screen/regis_plat_screen.dart';
import 'package:hassan_s_application15/presentation/regis_plat_screen/binding/regis_plat_binding.dart';
import 'package:hassan_s_application15/presentation/registrasi_kendaraan_berhasil_screen/registrasi_kendaraan_berhasil_screen.dart';
import 'package:hassan_s_application15/presentation/registrasi_kendaraan_berhasil_screen/binding/registrasi_kendaraan_berhasil_binding.dart';
import 'package:hassan_s_application15/presentation/history_screen/history_screen.dart';
import 'package:hassan_s_application15/presentation/history_screen/binding/history_binding.dart';
import 'package:hassan_s_application15/presentation/history_empty_screen/history_empty_screen.dart';
import 'package:hassan_s_application15/presentation/history_empty_screen/binding/history_empty_binding.dart';
import 'package:hassan_s_application15/presentation/notification_screen/notification_screen.dart';
import 'package:hassan_s_application15/presentation/notification_screen/binding/notification_binding.dart';
import 'package:hassan_s_application15/presentation/notification_kososng_screen/notification_kososng_screen.dart';
import 'package:hassan_s_application15/presentation/notification_kososng_screen/binding/notification_kososng_binding.dart';
import 'package:hassan_s_application15/presentation/cari_screen/cari_screen.dart';
import 'package:hassan_s_application15/presentation/cari_screen/binding/cari_binding.dart';
import 'package:hassan_s_application15/presentation/pengurangan_one_screen/pengurangan_one_screen.dart';
import 'package:hassan_s_application15/presentation/pengurangan_one_screen/binding/pengurangan_one_binding.dart';
import 'package:hassan_s_application15/presentation/pengurangan_screen/pengurangan_screen.dart';
import 'package:hassan_s_application15/presentation/pengurangan_screen/binding/pengurangan_binding.dart';
import 'package:hassan_s_application15/presentation/hasil_screen/hasil_screen.dart';
import 'package:hassan_s_application15/presentation/hasil_screen/binding/hasil_binding.dart';
import 'package:hassan_s_application15/presentation/summary_screen/summary_screen.dart';
import 'package:hassan_s_application15/presentation/summary_screen/binding/summary_binding.dart';
import 'package:hassan_s_application15/presentation/summary_not_found_screen/summary_not_found_screen.dart';
import 'package:hassan_s_application15/presentation/summary_not_found_screen/binding/summary_not_found_binding.dart';
import 'package:hassan_s_application15/presentation/logout_screen/logout_screen.dart';
import 'package:hassan_s_application15/presentation/logout_screen/binding/logout_binding.dart';
import 'package:hassan_s_application15/presentation/konfirmasi_logout_screen/konfirmasi_logout_screen.dart';
import 'package:hassan_s_application15/presentation/konfirmasi_logout_screen/binding/konfirmasi_logout_binding.dart';
import 'package:hassan_s_application15/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:hassan_s_application15/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String startScreen = '/start_screen';

  static const String signScreen = '/sign_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String mapsScreen = '/maps_screen';

  static const String keterswedianScreen = '/keterswedian_screen';

  static const String penguranganTwoScreen = '/pengurangan_two_screen';

  static const String hasilOneScreen = '/hasil_one_screen';

  static const String profileSettingsScreen = '/profile_settings_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String editProfileSucsessScreen = '/edit_profile_sucsess_screen';

  static const String startOneScreen = '/start_one_screen';

  static const String stopScreen = '/stop_screen';

  static const String listKendaraanScreen = '/list_kendaraan_screen';

  static const String regisPlatScreen = '/regis_plat_screen';

  static const String registrasiKendaraanBerhasilScreen =
      '/registrasi_kendaraan_berhasil_screen';

  static const String historyScreen = '/history_screen';

  static const String historyEmptyScreen = '/history_empty_screen';

  static const String notificationScreen = '/notification_screen';

  static const String notificationKososngScreen =
      '/notification_kososng_screen';

  static const String cariScreen = '/cari_screen';

  static const String penguranganOneScreen = '/pengurangan_one_screen';

  static const String penguranganScreen = '/pengurangan_screen';

  static const String hasilScreen = '/hasil_screen';

  static const String summaryScreen = '/summary_screen';

  static const String summaryNotFoundScreen = '/summary_not_found_screen';

  static const String logoutScreen = '/logout_screen';

  static const String konfirmasiLogoutScreen = '/konfirmasi_logout_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: startScreen,
      page: () => StartScreen(),
      bindings: [
        StartBinding(),
      ],
    ),
    GetPage(
      name: signScreen,
      page: () => SignScreen(),
      bindings: [
        SignBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: homePageScreen,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: mapsScreen,
      page: () => MapsScreen(),
      bindings: [
        MapsBinding(),
      ],
    ),
    GetPage(
      name: keterswedianScreen,
      page: () => KeterswedianScreen(),
      bindings: [
        KeterswedianBinding(),
      ],
    ),
    GetPage(
      name: penguranganTwoScreen,
      page: () => PenguranganTwoScreen(),
      bindings: [
        PenguranganTwoBinding(),
      ],
    ),
    GetPage(
      name: hasilOneScreen,
      page: () => HasilOneScreen(),
      bindings: [
        HasilOneBinding(),
      ],
    ),
    GetPage(
      name: profileSettingsScreen,
      page: () => ProfileSettingsScreen(),
      bindings: [
        ProfileSettingsBinding(),
      ],
    ),
    GetPage(
      name: changePasswordScreen,
      page: () => ChangePasswordScreen(),
      bindings: [
        ChangePasswordBinding(),
      ],
    ),
    GetPage(
      name: editProfileSucsessScreen,
      page: () => EditProfileSucsessScreen(),
      bindings: [
        EditProfileSucsessBinding(),
      ],
    ),
    GetPage(
      name: startOneScreen,
      page: () => StartOneScreen(),
      bindings: [
        StartOneBinding(),
      ],
    ),
    GetPage(
      name: stopScreen,
      page: () => StopScreen(),
      bindings: [
        StopBinding(),
      ],
    ),
    GetPage(
      name: listKendaraanScreen,
      page: () => ListKendaraanScreen(),
      bindings: [
        ListKendaraanBinding(),
      ],
    ),
    GetPage(
      name: regisPlatScreen,
      page: () => RegisPlatScreen(),
      bindings: [
        RegisPlatBinding(),
      ],
    ),
    GetPage(
      name: registrasiKendaraanBerhasilScreen,
      page: () => RegistrasiKendaraanBerhasilScreen(),
      bindings: [
        RegistrasiKendaraanBerhasilBinding(),
      ],
    ),
    GetPage(
      name: historyScreen,
      page: () => HistoryScreen(),
      bindings: [
        HistoryBinding(),
      ],
    ),
    GetPage(
      name: historyEmptyScreen,
      page: () => HistoryEmptyScreen(),
      bindings: [
        HistoryEmptyBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: notificationKososngScreen,
      page: () => NotificationKososngScreen(),
      bindings: [
        NotificationKososngBinding(),
      ],
    ),
    GetPage(
      name: cariScreen,
      page: () => CariScreen(),
      bindings: [
        CariBinding(),
      ],
    ),
    GetPage(
      name: penguranganOneScreen,
      page: () => PenguranganOneScreen(),
      bindings: [
        PenguranganOneBinding(),
      ],
    ),
    GetPage(
      name: penguranganScreen,
      page: () => PenguranganScreen(),
      bindings: [
        PenguranganBinding(),
      ],
    ),
    GetPage(
      name: hasilScreen,
      page: () => HasilScreen(),
      bindings: [
        HasilBinding(),
      ],
    ),
    GetPage(
      name: summaryScreen,
      page: () => SummaryScreen(),
      bindings: [
        SummaryBinding(),
      ],
    ),
    GetPage(
      name: summaryNotFoundScreen,
      page: () => SummaryNotFoundScreen(),
      bindings: [
        SummaryNotFoundBinding(),
      ],
    ),
    GetPage(
      name: logoutScreen,
      page: () => LogoutScreen(),
      bindings: [
        LogoutBinding(),
      ],
    ),
    GetPage(
      name: konfirmasiLogoutScreen,
      page: () => KonfirmasiLogoutScreen(),
      bindings: [
        KonfirmasiLogoutBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => StartScreen(),
      bindings: [
        StartBinding(),
      ],
    )
  ];
}
