import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minhlostudio_page/home/engine_list.dart';
import 'package:minhlostudio_page/home/game_list_widget.dart';
import 'package:minhlostudio_page/home/social_media_widget.dart';
import 'package:minhlostudio_page/l10n/l10n.dart';
import 'package:minhlostudio_page/model/app_model.dart';
import 'package:minhlostudio_page/repository/app_repository.dart';
import 'package:minhlostudio_page/utils/images.dart';
import 'package:minhlostudio_page/utils/responsive_widget.dart';
import 'package:minhlostudio_page/utils/themes.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final appRepository = AppRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ResponsiveWidget(
          tabletLayout: _buildTabletWidget(context),
          mobileLayout: _buildMobileWidget(context),
        ),
      ),
    );
  }

  Widget _buildTabletWidget(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Expanded(
          flex: 2,
          child: _homePage(context),
        ),
        const Spacer(),
      ],
    );
  }

  Widget _buildMobileWidget(BuildContext context) {
    return _homePage(context);
  }

  Widget _homePage(BuildContext context) {
    final language = context.l10n;
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 50.sp),
      children: [
        SizedBox(height: 10.sp,),
        Text(
          language.minh_lo_studio,
          style: AppTextStyle.t50w400(Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            language.about_me,
            style: AppTextStyle.t20w700(Colors.white),
          ),
        ),
        Text(
          language.about_me_desc,
          style: AppTextStyle.t20w700(Colors.white),
        ),
        SizedBox(height: 10.sp),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            language.game_list,
            style: AppTextStyle.t20w700(Colors.white),
          ),
        ),
        const GameListWidget(),
        SizedBox(height: 10.sp),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            language.contact,
            style: AppTextStyle.t20w700(Colors.white),
          ),
        ),
        const SocialMediaWidget(),
        SizedBox(height: 10.sp),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.sp),
          child: Text(
            language.tools,
            style: AppTextStyle.t20w700(Colors.white),
          ),
        ),
        const EngineListWidget(),
        SizedBox(height: 20.sp),
        _buildInfo(),
        SizedBox(height: 100.sp,),
      ],
    );
  }

  Widget _buildInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Email: nguyenvanminh12081999@gmail.com", style: AppTextStyle.t20w700(),),
        Text("Phone: 0977051541", style: AppTextStyle.t15w700(),),
        Text("Address: Chuong My - Ha Noi", style: AppTextStyle.t15w700(),)
      ],
    );
  }
}
