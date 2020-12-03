class CharacterModel {
  final String characterId;
  final String minutesPlayedTotal;
  final int light;
  final String emblemPath;
  final String emblemBackgroundPath;
  final int classType;
  final int raceType;

  CharacterModel(
      {this.characterId,
      this.minutesPlayedTotal,
      this.light,
      this.emblemPath,
      this.emblemBackgroundPath,
      this.classType,
      this.raceType});

  static CharacterModel fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      characterId: json['characterId'],
      minutesPlayedTotal: json['minutesPlayedTotal'],
      light: json['light'],
      emblemPath: json['emblemPath'],
      emblemBackgroundPath: json['emblemBackgroundPath'],
      classType: json['classType'],
      raceType: json['raceType'],
    );
  }

  @override
  String toString() {
    return """
{
  characterId: $characterId
  minutesPlayedTotal: $minutesPlayedTotal
  light: $light
  emblemPath: $emblemPath
  emblemBackgroundPath: $emblemBackgroundPath
  classType: $classType
  raceType: $raceType
}
    """;
  }
}
