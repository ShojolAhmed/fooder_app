import 'package:flutter/material.dart';
import 'package:fooder_app/widgets/home/grid_item.dart';

class GridRow extends StatelessWidget {
  const GridRow({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        final rowWidth = constraints.maxWidth;

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GridItem(
              label: 'Favorite',
              icon: Icons.favorite_border,
              rowWidth: rowWidth,
              onPress: () {
                print('Favorite');
              },
            ),
            GridItem(
              label: 'Cheap',
              icon: Icons.sell_outlined,
              rowWidth: rowWidth,
              onPress: () {
                print('Cheap');
              },
            ),
            GridItem(
              label: 'Trend',
              icon: Icons.trending_up,
              rowWidth: rowWidth,
              onPress: () {
                print('Trend');
              },
            ),
            GridItem(
              label: 'More',
              icon: Icons.more_horiz,
              rowWidth: rowWidth,
              onPress: () {
                print('More');
              },
            ),
          ],
        );
      },
    );
  }
}
