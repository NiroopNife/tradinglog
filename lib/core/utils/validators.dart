class Validators {

  static String? validateField(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field is empty';
    }
    return null;
  }

  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    }

    final emailRegExp = RegExp(r'');

    if (!emailRegExp.hasMatch(email)) {
      return 'Invalid email address';
    }

    return null;
  }
}