enum DestinyRaceEnum { Human, Awoken, Exo, Unknown }

extension ParseToString on DestinyRaceEnum {
  String toShortString() {
    return this.toString().split('.').last;
  }
}
