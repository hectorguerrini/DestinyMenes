import 'dart:ui';

class ItemDefinitionModel {
  final DisplayProperties displayProperties;
  final String screenshot;
  final BackgroundColor backgroundColor;
  final int itemType;
  final int itemSubType;
  final int classType;
  ItemDefinitionModel(
      {this.displayProperties,
      this.screenshot,
      this.backgroundColor,
      this.itemType,
      this.itemSubType,
      this.classType});
  static ItemDefinitionModel fromJson(Map<String, dynamic> json) {
    return ItemDefinitionModel(
      displayProperties: DisplayProperties.fromJson(json['displayProperties']),
      screenshot: json['screenshot'],
      backgroundColor: BackgroundColor.fromJson(json['backgroundColor']),
      itemType: json['itemType'],
      itemSubType: json['itemSubType'],
      classType: json['classType'],
    );
  }

  @override
  String toString() {
    return """
{
  displayProperties: $displayProperties
  screenshot: $screenshot
}""";
  }
}

class DisplayProperties {
  final String description;
  final String name;
  final String icon;
  final bool hasIcon;

  DisplayProperties({this.description, this.name, this.icon, this.hasIcon});

  static DisplayProperties fromJson(Map<String, dynamic> json) {
    return DisplayProperties(
      description: json['description'],
      name: json['name'],
      icon: json['icon'],
      hasIcon: json['hasIcon'],
    );
  }

  @override
  String toString() {
    return """
{
  description: $description
  name: $name
  icon: $icon
  hasIcon: $hasIcon
}
    
    """;
  }
}

class BackgroundColor {
  final int red;
  final int green;
  final int blue;
  final int alpha;

  BackgroundColor({this.red, this.green, this.blue, this.alpha});

  static BackgroundColor fromJson(Map<String, dynamic> json) {
    return BackgroundColor(
      red: json['red'],
      green: json['green'],
      blue: json['blue'],
      alpha: json['alpha'],
    );
  }

  Color toRGB() {
    return Color.fromARGB(this.alpha, this.red, this.green, this.blue);
  }
}
