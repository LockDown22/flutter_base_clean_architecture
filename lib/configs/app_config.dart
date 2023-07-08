class AppConfig {
  static String baseUrl = '';

  static const String defaultLocale = 'en';
  static const String apiKey = '';

  static void configDev() {
    baseUrl = 'http://api.weatherapi.com/v1';
  }
}
