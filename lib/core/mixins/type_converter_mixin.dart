mixin TypeConverterMixin {
  // Convert hectogram to gram
  String convertWeight(int weight) {
    return '${(weight * 100).toStringAsFixed(2)} g';
  }

  // Convert centimeters to height
  String convertHeight(int height) {
    return '${(height * 3.937007874).toStringAsFixed(2)} in';
  }
}
