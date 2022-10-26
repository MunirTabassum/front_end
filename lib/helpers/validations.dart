String? validatepass(String? value) {
  if (value!.length == 0) {
    return 'Required Password';
  } else if (value.length < 6) {
    return 'Required Greater then 6 digits';
  } else if (value.length > 15) {
    return 'Pasword Length exceeded';
  }
  return null;
}

String? validateMobile(String? value) {
  String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = new RegExp(patttern);
  if (value!.length == 0) {
    return 'Please enter mobile number';
  } else if (!regExp.hasMatch(value)) {
    return 'Please enter valid mobile number';
  } else if (value.length < 10) {
    return 'Please enter valid mobile number';
  } else if (value.length > 10) {
    return 'Please enter valid mobile number';
  }
  return null;
}

String? validateCompany(String? value) {
  if (value!.length == 0) {
    return 'Required Name of Company';
  } else if (value.length < 3) {
    return 'Required Full Name Of Company';
  } else if (value.length > 20) {
    return 'Company name is too long';
  }
  return null;
}

String? validateContact(String? value) {
  if (value!.length == 0) {
    return 'Required Full Name';
  } else if (value.length < 6) {
    return 'Required Full Name';
  } else if (value.length > 15) {
    return 'Enter Valid Name';
  }
  return null;
}

String? ValidateEmail(String? value) {
  if (value!.length == 0) {
    return 'Required Email';
  } else if (value.length < 6) {
    return 'enter valid email';
  } else if (value.length > 15) {
    return 'Enter valid email';
  }
  return null;
}

String? validatePassword(String? value) {
  if (value!.length == 0) {
    return 'Required Password';
  } else if (value.length < 6) {
    return 'Required Greater then 6 digits Password';
  } else if (value.length > 15) {
    return 'Pasword Length exceeded';
  }
  return null;
}

String? validateConfirmPwd(String? value) {
  if (value!.length == 0) {
    return 'Required password';
  } else if (value.length < 6) {
    return 'Required Greater then 6 digits';
  } else if (value.length > 15) {
    return 'Enter same password';
  }
  return null;
}

String? validateLocation(String? value) {
  if (value!.length == 0) {
    return 'Required Location';
  } else if (value.length < 3) {
    return 'Location Name Length greater then 3 words';
  } else if (value.length > 15) {
    return 'Location name length exceded ';
  }
  return null;
}

String? validateEmail(String? value) {
  if (value!.length == 0) {
    return 'Required Email';
  } else if (value.length < 3) {
    return 'Required valid email';
  } else if (value.length > 15) {
    return 'Enter valid email ';
  }
  return null;
}

String? validateAdress(String? value) {
  if (value!.length == 0) {
    return 'Required Name of Company';
  }
  return null;
}

String? validateProductType(String? value) {
  if (value!.length == 0) {
    return 'Required Full Name';
  }
  return null;
}

String? validatePaymentMethod(String? value) {
  if (value!.length == 0) {
    return 'Required Password';
  }
  return null;
}

String? validateBankInstituteNumber(String? value) {
  if (value!.length == 0) {
    return 'Required Location';
  }
  return null;
}

String? validateBankBranchNumber(String? value) {
  if (value!.length == 0) {
    return 'Required Location';
  }
  return null;
}

String? validateBankAccountNumber(String? value) {
  if (value!.length == 0) {
    return 'Required Location';
  }
  return null;
}
