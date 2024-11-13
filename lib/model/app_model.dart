class AppModel {
  final String name;
  final String image;
  final String linkPlayStore;
  final String linkAppStore;
  final int downloadCount;

  AppModel({
    required this.name,
    required this.image,
    required this.linkPlayStore,
    required this.linkAppStore,
    required this.downloadCount,
  });
}

class SocialModel {
  final String name;
  final String link;
  final String image;
  final int count;
  final String iconSocial;

  SocialModel({
    required this.name,
    required this.link,
    required this.image,
    required this.count,
    required this.iconSocial,
  });
}
