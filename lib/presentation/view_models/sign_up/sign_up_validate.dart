import 'package:lnsp/utils/validation/validate_util.dart';
import 'package:lnsp/utils/validation/validation_result.dart';

class SignUpValidationResults {
  static ValidationResult validateEmail(String email) {
    if (ValidateUtil.isNullEmptyOrWhitespace(email)) {
      return ValidationResult.error("");
    } else if (!ValidateUtil.validateEmail(email)) {
      return ValidationResult.error("");
    }
    return ValidationResult.ok();
  }

  static ValidationResult validatePassword(String password) {
    if (ValidateUtil.isNullEmptyOrWhitespace(password)) {
      return ValidationResult.error("");
    }
    if (password.length < 8) {
      return ValidationResult.error("");
    }
    return ValidationResult.ok();
  }

  static ValidationResult validatePhoneNumber(String phoneNumber) {
    if (!ValidateUtil.validatePhone(phoneNumber)) {
      return ValidationResult.error("");
    }
    return ValidationResult.ok();
  }
}
