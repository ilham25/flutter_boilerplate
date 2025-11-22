class HelperUtils {
  static final HelperUtils _instance = HelperUtils._internal();

  // Private constructor
  HelperUtils._internal();

  // Public getter for accessing the instance
  static HelperUtils get instance => _instance;

  String removeHtmlTag(String text) {
    return text.replaceAll(RegExp(r'<[^>]*>'), '');
  }
}