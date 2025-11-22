class ValidationUtils {

  static bool validateEmail(String value) 
    => value.isNotEmpty 
      && RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);

  static bool validateLength(String value, int length) 
    => value.isNotEmpty && value.length >= length;

  static bool validateValue(String value, int minValue) 
    => value.isNotEmpty &&int.parse(value)  >= minValue;

  static bool validateMatch(String value, String otherValue) 
    => value.isNotEmpty && value == otherValue;

  static bool validatePhone(String value) {
    if (value.isNotEmpty) {
      return RegExp(r"^(?:[+0]8)?[0-9]{10,13}$")
        .hasMatch(value);
    }
    return false;
  }

  static bool validateGreaterThan(int value, int expected) 
    => value > expected;

  static bool validateEmpty(String value) => value.isNotEmpty;
  static bool isEmpty(String value) => value.isEmpty;
}