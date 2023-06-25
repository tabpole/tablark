import 'package:flutter/material.dart';

import '../../../../core/util/color_manager.dart';
import '../../../../widgets/atoms/texts.dart';
import '../widgets/color_card.dart';

class Secondary extends StatelessWidget {
  const Secondary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const XXLargeText('30%'),
        const SizedBox(height: 16),
        const LargeText('Secondary '),
        const SizedBox(height: 16),
        const Wrap(
          alignment: WrapAlignment.start,
          spacing: 16,
          children: [
            ColorCard(
              color: ColorManager.SECONDARY,
              name: 'Main',
            ),
            ColorCard(
              color: ColorManager.SECONDARY_ALT,
              name: 'Alternative',
            ),
          ],
        ),
        const SizedBox(height: 16),
        const LargeText('Brand Light'),
        const SizedBox(height: 16),
        Wrap(
          alignment: WrapAlignment.start,
          spacing: 16,
          children: [
            // Example : Icon Color
            ColorCard(
              color: ColorManager.BRAND_ALPHA_LIGHT,
              name: 'Alpha',
            ),
            ColorCard(
              color: ColorManager.BRAND_BETA_LIGHT,
              name: 'Beta',
            ),
            ColorCard(
              color: ColorManager.BRAND_GAMMA_LIGHT,
              name: 'Gamma',
            ),
            ColorCard(
              color: ColorManager.BRAND_DELTA_LIGHT,
              name: 'Delta',
            ),
          ],
        ),
      ],
    );
  }
}
