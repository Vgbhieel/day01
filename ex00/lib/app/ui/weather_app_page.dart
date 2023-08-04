import 'package:ex00/app/ui/widget/wheather_app_bar.dart';
import 'package:ex00/app/ui/widget/wheather_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class WeatherAppPage extends StatefulWidget {
  const WeatherAppPage({super.key});

  @override
  State<WeatherAppPage> createState() => _WeatherAppPageState();
}

class _WeatherAppPageState extends State<WeatherAppPage> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: const WheatherAppBar().build(context),
          body: TabBarView(
            children: [
              Center(
                child: Text(
                  "Currently",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.displayLarge,
                ),
              ),
              Center(
                child: Text(
                  "Today",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.displayLarge,
                ),
              ),
              Center(
                child: Text(
                  "Weekly",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.displayLarge,
                ),
              ),
            ],
          ),
          bottomNavigationBar: const WeatherBottomNavigationBar(),
        ));
  }
}
