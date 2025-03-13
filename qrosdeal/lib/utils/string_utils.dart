extension StringExtensions on String {
  String plus(String other) {
    return this + other;
  }

  bool equalsIgnoreCase(String secondString) => toLowerCase() == secondString.toLowerCase();

  String getAssetsPath() {
    return "assets/images/$this";
  }

  String refreshBase64() {
    return replaceAll("\r\n", "");
  }

  String toUpperCaseFirstLetter() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  String getFlagAssetsPath() {
    return "assets/flag/$this.png";
  }

  String getBankLogoAssetsPath() {
    return "assets/bank/$this.svg";
  }
}
