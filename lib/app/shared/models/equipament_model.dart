class EquipamentModel {
  final List<Item> items;

  EquipamentModel({this.items});
  static EquipamentModel fromJson(Map<String, dynamic> json) {
    return EquipamentModel(
        items: List.from(json['items']).map((e) => Item.fromJson(e)).toList());
  }

  @override
  String toString() {
    return """
{
  items: $items
}    
    
    """;
  }
}

class Item {
  final int itemHash;
  final String itemInstanceId;

  Item({this.itemHash, this.itemInstanceId});

  static Item fromJson(Map<String, dynamic> json) {
    return Item(
        itemHash: json['itemHash'], itemInstanceId: json['itemInstanceId']);
  }

  @override
  String toString() {
    return """
  {
    itemHash: $itemHash
    itemInstanceId: $itemInstanceId
  }
    """;
  }
}
