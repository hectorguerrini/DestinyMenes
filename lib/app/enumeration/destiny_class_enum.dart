enum DestinyClassEnum { Titan, Hunter, Warlock, Unknown }

extension ParseToString on DestinyClassEnum {
  String toShortString() {
    return this.toString().split('.').last;
  }
}
