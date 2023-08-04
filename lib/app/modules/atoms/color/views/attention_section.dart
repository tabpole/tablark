import 'package:flutter/material.dart';

import '../../../../core/util/color_manager.dart';
import '../../../../widgets/atoms/texts.dart';
import '../widgets/color_card.dart';

class AttentionSection extends StatelessWidget {
  const AttentionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LargeTitleText('More'),
        const SizedBox(height: 16),
        const TitleText('Attention Color'),
        const SizedBox(height: 16),
        const Wrap(
          alignment: WrapAlignment.start,
          spacing: 16,
          children: [
            ColorCard(
              color: ColorManager.SUCCESS,
              name: 'Success',
            ),
            ColorCard(
              color: ColorManager.INFO,
              name: 'Info',
            ),
            ColorCard(
              color: ColorManager.WARNING,
              name: 'Warning',
            ),
            ColorCard(
              color: ColorManager.DANGER,
              name: 'Danger',
            ),
          ],
        ),
        const SizedBox(height: 16),
        const TitleText('Attention Light Color'),
        const SizedBox(height: 16),
        Wrap(
          alignment: WrapAlignment.start,
          spacing: 16,
          children: [
            ColorCard(
              color: ColorManager.INVERSE_SUCCESS,
              name: 'Success',
            ),
            ColorCard(
              color: ColorManager.INVERSE_INFO,
              name: 'Info',
            ),
            ColorCard(
              color: ColorManager.INVERSE_WARNING,
              name: 'Warning',
            ),
            ColorCard(
              color: ColorManager.INVERSE_DANGER,
              name: 'Danger',
            ),
          ],
        ),
      ],
    );
  }
}
