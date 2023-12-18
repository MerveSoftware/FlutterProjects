mixin StudentValidationMixin {
  String? validateFirstName(String value) {
    if (value.length < 2) {
      return "İsim en az iki karakter olmalıdır";
    }
    return null;
  }

  String? validateLastName(String value) {
    if (value.length < 2) {
      return "Soyad en az iki karakter olmalıdır";
    }
    return null;
  }

  String? validateGrade(String value) {
    var grade = int.tryParse(value);
    if (grade == null || grade < 0 || grade > 100) {
      return "Not 0-100 arasında olmalıdır";
    }
    return null;
  }
}
