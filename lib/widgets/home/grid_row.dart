import 'package:flutter/material.dart';
import 'package:fooder_app/screens/home/cheap_screen.dart';
import 'package:fooder_app/screens/home/favorite_screen.dart';
import 'package:fooder_app/screens/home/more_screen.dart';
import 'package:fooder_app/screens/home/trend_screen.dart';
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const FavoriteScreen();
                    },
                  ),
                );
              },
            ),
            GridItem(
              label: 'Cheap',
              icon: Icons.sell_outlined,
              rowWidth: rowWidth,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const CheapScreen();
                    },
                  ),
                );
              },
            ),
            GridItem(
              label: 'Trend',
              icon: Icons.trending_up,
              rowWidth: rowWidth,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const TrendScreen();
                    },
                  ),
                );
              },
            ),
            GridItem(
              label: 'More',
              icon: Icons.more_horiz,
              rowWidth: rowWidth,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const MoreScreen();
                    },
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
