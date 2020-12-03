class ProfileModel {
  final List<String> characterIds;
  final UserInfo userInfo;

  ProfileModel({this.characterIds, this.userInfo});

  static ProfileModel fromJson(Map<String, dynamic> json) {
    return ProfileModel(
        characterIds: List<String>.from(json['characterIds']),
        userInfo: UserInfo.fromJson(json['userInfo']));
  }

  @override
  String toString() {
    return """ 
{
  characterIds: $characterIds
  userInfo: $userInfo
}
    """;
  }
}

class UserInfo {
  final int membershipType;
  final String membershipId;
  final String displayName;

  UserInfo({this.membershipType, this.membershipId, this.displayName});

  static UserInfo fromJson(Map<String, dynamic> json) {
    return UserInfo(
        displayName: json['displayName'],
        membershipType: json['membershipType'],
        membershipId: json['membershipId']);
  }

  @override
  String toString() {
    return """
{
  displayName: $displayName,
  membershipType: $membershipType,
  membershipId: $membershipId
}
    """;
  }
}
