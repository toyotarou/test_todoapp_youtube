import 'package:flutter/material.dart';

import '../widgets/display_white_text.dart';

import '../utils/extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DisplayWhiteText(text: 'Aug 7, 2023', fontSize: 20, fontWeight: FontWeight.normal),
                      DisplayWhiteText(text: 'My Todo List', fontSize: 40),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    width: deviceSize.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colors.primaryContainer,
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Text('Home');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
