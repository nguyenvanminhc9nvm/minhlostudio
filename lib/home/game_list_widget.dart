import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minhlostudio_page/l10n/l10n.dart';
import 'package:minhlostudio_page/main.dart';
import 'package:minhlostudio_page/model/app_model.dart';
import 'package:minhlostudio_page/repository/app_repository.dart';
import 'package:minhlostudio_page/utils/images.dart';
import 'package:minhlostudio_page/utils/responsive_widget.dart';
import 'package:minhlostudio_page/utils/themes.dart';
import 'package:url_launcher/url_launcher.dart';

class GameListWidget extends StatefulWidget {
  const GameListWidget({super.key});

  @override
  State<GameListWidget> createState() => _GameListWidgetState();
}

class _GameListWidgetState extends State<GameListWidget> {
  final listApp = AppRepository().getListApp();

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      tabletLayout: _buildTableWidget(),
      mobileLayout: _buildMobileWidget(),
    );
  }

  Widget _buildMobileWidget() {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(vertical: 10.sp),
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 20.sp),
          child: _buildItemGameMobile(listApp[index], 100.sp),
        );
      },
      itemCount: listApp.length,
    );
  }

  Widget _buildTableWidget() {
    return GridView.builder(
      padding: EdgeInsets.symmetric(vertical: 10.sp),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: listApp.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20.sp,
        crossAxisSpacing: 20.sp,
        childAspectRatio: 2.5 / 1,
      ),
      itemBuilder: (context, index) {
        return _buildItemGame(listApp[index], 100.sp);
      },
    );
  }

  Widget _buildItemGame(AppModel appModel, double height) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(5.sp),
      ),
      padding: EdgeInsets.all(5.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              appModel.image,
              width: 100.sp,
              height: 100.sp,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    appModel.name,
                    style: AppTextStyle.t20w700(),
                  ),
                  Text(
                    "${context.l10n.download_count}: ${appModel.downloadCount}",
                    style: AppTextStyle.t15w700(),
                  ),
                  SizedBox(height: 10.sp),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: TextButton.icon(
                            icon: Image.asset(
                              AppImages.icPlayStore,
                              width: 20.sp,
                              height: 20.sp,
                            ),
                            onPressed: () async {
                              if (appModel.linkPlayStore.isEmpty) {
                                return;
                              }
                              if (await canLaunchUrl(
                                Uri.parse(appModel.linkPlayStore),
                              )) {
                                await launchUrl(
                                  Uri.parse(appModel.linkPlayStore),
                                );
                              }
                            },
                            label: Text(
                              context.l10n.get,
                              style: AppTextStyle.t8w700_underline(),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: TextButton.icon(
                            icon: Image.asset(
                              AppImages.icAppStore,
                              width: 20.sp,
                              height: 20.sp,
                            ),
                            onPressed: () async {
                              if (appModel.linkAppStore.isEmpty) {
                                return;
                              }
                              if (await canLaunchUrl(
                                  Uri.parse(appModel.linkAppStore))) {
                                await launchUrl(
                                    Uri.parse(appModel.linkAppStore));
                              }
                            },
                            label: Text(
                              context.l10n.get,
                              style: AppTextStyle.t8w700_underline(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemGameMobile(AppModel appModel, double height) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(5.sp),
      ),
      padding: EdgeInsets.all(5.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              appModel.image,
              width: 100.sp,
              height: 100.sp,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    appModel.name,
                    style: AppTextStyle.t20w700(),
                  ),
                  Text(
                    "${context.l10n.download_count}: ${appModel.downloadCount}",
                    style: AppTextStyle.t15w700(),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: TextButton.icon(
                    icon: Image.asset(
                      AppImages.icPlayStore,
                      width: 30.sp,
                      height: 30.sp,
                    ),
                    onPressed: () async {
                      if (appModel.linkPlayStore.isEmpty) {
                        return;
                      }
                      if (await canLaunchUrl(
                          Uri.parse(appModel.linkPlayStore))) {
                        await launchUrl(Uri.parse(appModel.linkPlayStore));
                      }
                    },
                    label: Text(
                      context.l10n.get,
                      style: AppTextStyle.t10w700(),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: TextButton.icon(
                    icon: Image.asset(
                      AppImages.icAppStore,
                      width: 30.sp,
                      height: 30.sp,
                    ),
                    onPressed: () async {
                      if (appModel.linkAppStore.isEmpty) {
                        return;
                      }
                      if (await canLaunchUrl(
                          Uri.parse(appModel.linkAppStore))) {
                        await launchUrl(Uri.parse(appModel.linkAppStore));
                      }
                    },
                    label: Text(
                      context.l10n.get,
                      style: AppTextStyle.t10w700(),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
