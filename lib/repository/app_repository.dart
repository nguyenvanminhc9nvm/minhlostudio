import 'package:minhlostudio_page/model/app_model.dart';
import 'package:minhlostudio_page/utils/images.dart';

class AppRepository {
  List<AppModel> getListApp() {
    return [
      AppModel(
        name: "Battleship Multiplayer (MLS)",
        image: AppImages.icLogoBattleShip,
        linkPlayStore: "",
        linkAppStore: "",
        downloadCount: 0,
      ),
      AppModel(
        name: "Sword And Shield (MLS)",
        image: AppImages.icSas,
        linkPlayStore: "",
        linkAppStore: "",
        downloadCount: 0,
      ),
    ];
  }

  List<SocialModel> getListSocial() {
    return [
      SocialModel(
        name: "(Tiktok) Minh Lo Studio",
        link: "http://tiktok.com/@minhlo_studio_game",
        image: AppImages.icLogoMLS,
        count: 0,
        iconSocial: AppImages.icTiktok,
      ),
      SocialModel(
        name: "(MLS) Group trao đổi, phản hồi ý kiến về Game",
        link: "https://www.facebook.com/groups/minhlostudogroups",
        image: AppImages.icLogoMLS,
        count: 0,
        iconSocial: AppImages.icFbGroup,
      ),
      SocialModel(
        name: "Fanpage Minh Lo Studio",
        link: "https://www.facebook.com/minhlostudio/",
        image: AppImages.icLogoMLS,
        count: 0,
        iconSocial: AppImages.icFbFanPage,
      ),
      SocialModel(
        name: "My facebook",
        link: "https://www.facebook.com/nguyenvanminh12081999/",
        image: AppImages.icLogoMLS,
        count: 0,
        iconSocial: AppImages.icFb,
      ),
    ];
  }
}
