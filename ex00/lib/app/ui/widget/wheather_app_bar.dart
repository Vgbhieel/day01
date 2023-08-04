import 'package:flutter/material.dart';

class WheatherAppBar extends StatelessWidget {
  const WheatherAppBar({
    super.key,
  });

  @override
  AppBar build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return AppBar(backgroundColor: theme.colorScheme.inversePrimary, actions: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    icon: Icon(
                      Icons.search,
                      color: theme.colorScheme.primary,
                    ),
                    hintText: "Search location...",
                  ),
                ),
              ),
              Flexible(
                flex: 0,
                child: Center(
                  child: VerticalDivider(
                    thickness: 2,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
              Flexible(
                flex: 0,
                child: RotationTransition(
                  turns: const AlwaysStoppedAnimation(45 / 360),
                  child: IconButton(
                    icon: Icon(Icons.navigation,
                        color: theme.colorScheme.primary),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
