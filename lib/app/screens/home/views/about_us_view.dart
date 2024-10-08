import '../../../../common/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/ui/my_list_view.dart';
import '../../../components/ui/rounded_container.dart';
import '../../../components/ui/text_view.dart';
import '../controllers/home_controller.dart';

import '../../../../../../../common/transalations/translation_keys.dart'
    as translations;

// ignore: must_be_immutable
class AboutUsView extends GetView<HomeController> {
  const AboutUsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    // double ffem = fem * 0.97;
    return Scaffold(
      extendBody: true,
      backgroundColor: ColorPallete.primary,
      body: SafeArea(
        child: Scaffold(
          backgroundColor: ColorPallete.theme,
          appBar: AppBar(
            iconTheme: const IconThemeData(color: ColorPallete.theme),
            backgroundColor: ColorPallete.primary,
            title: TextView(
              text: translations.aboutUs.tr,
              color: ColorPallete.theme,
              fontSize: 18,
              weight: FontWeight.bold,
            ),
            centerTitle: true,
          ),
          body: RoundedContainer(
            radius: 0,
            // height: MediaQuery.of(context).size.height,
            child: Container(
              color: ColorPallete.primary,
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0 * fem, vertical: 10),
                      child: RoundedContainer(
                        radius: 10,
                        color: ColorPallete.theme,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(
                            child: MyListView(
                              children: [
                                Center(
                                  child: Image.asset(
                                    "assets/ui/logo.png",
                                    height: 150,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: TextView(
                                    text: translations.appName.tr,
                                    fontSize: 20,
                                    color: ColorPallete.primary,
                                    weight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: TextView(
                                    text: translations.allRightsReserved.tr,
                                    fontSize: 14,
                                    color: ColorPallete.secondary,
                                    weight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Center(
                                  child: TextView(
                                    text: "Version 1.0.0 v1",
                                    fontSize: 14,
                                    color: ColorPallete.secondary,
                                    weight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextView(
                                        text: "${translations.contactUs.tr} :",
                                        fontSize: 14,
                                        color: ColorPallete.secondary,
                                        weight: FontWeight.w400,
                                      ),
                                      const TextView(
                                        text: "info@bouddhamatrimony.com",
                                        fontSize: 14,
                                        color: ColorPallete.primary,
                                        weight: FontWeight.w600,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextView(
                                        text: "${translations.website.tr} :",
                                        fontSize: 14,
                                        color: ColorPallete.secondary,
                                        weight: FontWeight.w400,
                                      ),
                                      const TextView(
                                        text: "https://bouddhamatrimony.com",
                                        fontSize: 14,
                                        color: ColorPallete.primary,
                                        weight: FontWeight.w600,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: TextView(
                                    text: translations.address.tr,
                                    fontSize: 16,
                                    color: ColorPallete.secondary,
                                    weight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Center(
                                  child: TextView(
                                    text:
                                        "Bouddha Matrimony\n\n505 Vilasini Society, Shivaji Path,\nAbove gupta sandwich,\nThane West, Thane, Maharashtra 400601\n\n +91 8108109238",
                                    fontSize: 14,
                                    color: ColorPallete.secondary,
                                    weight: FontWeight.w600,
                                    alignment: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
