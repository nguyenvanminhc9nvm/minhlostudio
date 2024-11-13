import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minhlostudio_page/home/game_list_widget.dart';
import 'package:minhlostudio_page/home/home.dart';
import 'package:minhlostudio_page/l10n/l10n.dart';
import 'package:minhlostudio_page/model/app_model.dart';
import 'package:minhlostudio_page/repository/app_repository.dart';
import 'package:minhlostudio_page/utils/themes.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaWidget extends StatefulWidget {
  const SocialMediaWidget({super.key});

  @override
  State<SocialMediaWidget> createState() => _SocialMediaWidgetState();
}

class _SocialMediaWidgetState extends State<SocialMediaWidget> {
  final socialList = AppRepository().getListSocial();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: socialList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 2 / 1
      ),
      itemBuilder: (context, index) {
        return _buildItemSocialMedia(socialList[index]);
      },
    );
  }

  Widget _buildItemSocialMedia(SocialModel social) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100.sp),
                  child: Image.asset(social.iconSocial, width: 50.sp, height: 50.sp,),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100.sp),
                  child: Image.asset(social.image, width: 50.sp, height: 50.sp),
                )
              ],
            ),
          ),
          Text(
            social.name,
            textAlign: TextAlign.center,
            style: AppTextStyle.t15w700(),
          ),
          TextButton(
            onPressed: () async {
              if (social.link.isEmpty) {
                return;
              }
              if (await canLaunchUrl(Uri.parse(social.link))) {
                await launchUrl(Uri.parse(social.link));
              }
            },
            child: Text(
              context.l10n.view,
              style: AppTextStyle.t15w700(),
            ),
          )
        ],
      ),
    );
  }
}
