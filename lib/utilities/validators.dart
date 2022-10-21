validateMobileNumber(String? value) {
  if (value == null || value.isEmpty) {
    return "Please Enter Mobile Number";
    // } else if (!RegExp(r'^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$').hasMatch(value)) {
  } else if (!RegExp(r'^(\(91)?[789]\d{9}$').hasMatch(value)) {
    return "Invalid Mobile";
  } else {
    return null;
  }
}

validateMpin(String? value) {
  if (value == null || value.isEmpty) {
    return "MPin Required";
  } else if (value.length != 4) {
    return "MPin length must be 4";
  } else {
    return null;
  }
}

checkForSameMpin(mPin, mPinAgain) {
  // print('$mPin != $mPinAgain');
  return mPin != mPinAgain ? 'Enter the same Password' : null;
}

textFieldValidation(value) {
  if (value.length == 0) return 'Enter a valid Value';
}

passwordValidator(value) {
  if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
      .hasMatch(value)) {
    return "Invalid Password";
  } else {
    return null;
  }
}
