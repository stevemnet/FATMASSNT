var this_year = DateTime.now().year.toString();

class AppConfig {
  static String copyright_text =
      "@ FATMASS NT INVESTMENT " + this_year; //this shows in the splash screen
  static String app_name =
      "FATMASS NT INVESTMENT"; //this shows in the splash screen

  static String purchase_code =
      "ebf81a27-3a37-408a-9815-0d16b38dd491"; //enter your purchase code for the app from codecanyon
  static String system_key =
      r"$2y$10$djzYKc3A9Qw50hTY6.X6seqUMhPXzTRTEigHnTe7JRI4yFC6R.pp2"; //enter your purchase code for the app from codecanyon

  //Default language config
  static String default_language = "en";
  static String mobile_app_code = "en";
  static bool app_language_rtl = false;

  //configure this
  static const bool HTTPS = true;

  static const DOMAIN_PATH = "fatmassnt.co.tz"; //localhost
  //do not configure these below
  static const String API_ENDPATH = "api/v2";
  static const String PROTOCOL = HTTPS ? "https://" : "http://";
  static const String RAW_BASE_URL = "${PROTOCOL}${DOMAIN_PATH}";
  static const String BASE_URL = "${RAW_BASE_URL}/${API_ENDPATH}";

  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}
