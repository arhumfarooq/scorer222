import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scorer/constants/appcolors.dart';
import 'package:scorer/controllers/filter_controller.dart';
import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer/widgets/filter_useable_container.dart';
import 'package:scorer/widgets/login_button.dart';
import 'package:scorer/widgets/main_text.dart';

class FilterDropDownContainer extends StatelessWidget {
  final controller = Get.put(FilterController()); // ✅ Controller inject

  FilterDropDownContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 4),
      height: (994 / 844) * screenHeight,
      width: (440 / 390) * screenWidth,
      child: Column(
        children: [
          const SizedBox(height: 23),

          // drag indicator
          Container(
            width: 112,
            height: 5,
            decoration: BoxDecoration(
              color: AppColors.blackColor,
              borderRadius: BorderRadius.circular(120),
            ),
          ),

          SizedBox(height: screenHeight * 0.04),

          SizedBox(
            height: (640 / 844) * screenHeight,
            width: (399 / 390) * screenWidth,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BoldText(
                        text: "Filter",
                        fontSize: 24,
                        selectionColor: AppColors.blueColor,
                      ),
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: MainText(
                          text: "Cancel",
                          fontSize: 15,
                          color: AppColors.forwardColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 34),

                  Center(
                    child: BoldText(
                      text: "By Phase",
                      fontSize: 16,
                      selectionColor: AppColors.blueColor,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Phase filters
                  Obx(() => FilterUseableContainer(
                        onTap: () => controller.select(0),
                        isSelected: controller.selectedIndex.value == 0,
                        text: "Phase 1",
                      )),
                  const SizedBox(height: 10),
                  Obx(() => FilterUseableContainer(
                        onTap: () => controller.select(1),
                        isSelected: controller.selectedIndex.value == 1,
                        text: "Phase 2",
                      )),
                  const SizedBox(height: 10),
                  Obx(() => FilterUseableContainer(
                        onTap: () => controller.select(2),
                        isSelected: controller.selectedIndex.value == 2,
                        text: "Phase 3",
                      )),

                  const SizedBox(height: 40),

                  Center(
                    child: BoldText(
                      text: "By Stage",
                      fontSize: 16,
                      selectionColor: AppColors.blueColor,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Stage filters
                  Obx(() => FilterUseableContainer(
                        onTap: () => controller.selectStage(0),
                        isSelected: controller.selectedstage.value == 0,
                        text: "Stage 1",
                      )),
                  const SizedBox(height: 10),
                  Obx(() => FilterUseableContainer(
                        onTap: () => controller.selectStage(1),
                        isSelected: controller.selectedstage.value == 1,
                        text: "Stage 2",
                      )),
                  const SizedBox(height: 10),
                  Obx(() => FilterUseableContainer(
                        onTap: () => controller.selectStage(2),
                        isSelected: controller.selectedstage.value == 2,
                        text: "Stage 3",
                      )),

                  const SizedBox(height: 40),

                  // buttons
                  LoginButton(
                    text: "Clear Filter",
                    color: AppColors.redColor,
                  ),
                  const SizedBox(height: 10),
                  LoginButton(
                    text: "Apply Filter",
                    color: AppColors.forwardColor,
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
