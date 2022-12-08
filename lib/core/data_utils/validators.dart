var regex = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

class Validators {
  static String? validateField(String? value) {
    if (value!.isEmpty) {
      return "Field cannot be empty";
    } else {
      return null;
    }
  }

  static String? validateEmail(String? email) {
    if (!regex.hasMatch(email!)) {
      return 'Invalid email address';
    } else {
      return null;
    }
  }

  static String? validatePhonenumber(String? str) {
    RegExp regExp = RegExp(
      r"^\d{10}$",
    );

    if (!regExp.hasMatch(str!)) {
      return 'Invalid phone number';
    } else {
      return null;
    }
  }

  static String? validatePhonenumber2(String? str) {
    RegExp regExp = RegExp(
      r"^\d{11}$",
    );

    if (!regExp.hasMatch(str!)) {
      return 'Invalid phone number';
    } else {
      return null;
    }
  }


  static String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return "Password field cannot be empty";
    } else if (value.length < 7) {
      return "Password must be greater than 6 characters";
    } else {
      return null;
    }
  }
}

