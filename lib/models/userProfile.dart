class UserProfile {
  String userId;
  String username;
  String name;
  String profileImage;

  UserProfile({this.userId, this.username, this.name, this.profileImage});
  UserProfile.newuser(userId, username, name, profileImage, emailId) {
    this.userId = userId;
    this.username = username;
    this.name = name;
    this.profileImage = profileImage;
  }
  Map<String, dynamic> toJson() => {
        'userId': userId,
        'username': username,
        'name': name,
        'profileImage': profileImage,
      };
}

String generateusername(String email) {
  String result = email.replaceAll(new RegExp(r'@.+'), "");
  result = result.replaceAll(new RegExp(r'\\W+'), " ");
  return result;
}
