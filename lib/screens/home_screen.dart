import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../data/task_category.dart';
import '../models/task.dart';
import '../routes/route_location.dart';
import '../widgets/display_list_of_tasks.dart';

import '../widgets/display_white_text.dart';

import '../utils/extensions.dart';

class HomeScreen extends StatefulWidget {
  static HomeScreen builder(BuildContext context, GoRouterState state) => const HomeScreen();

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            left: 20,
            right: 20,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const DisplayListOfTasks(
                    tasks: [
                      Task(
                        title: 'title',
                        category: TaskCategory.education,
                        time: '10:00',
                        date: 'date',
                        note: 'note',
                        isCompleted: false,
                      ),
                      Task(
                        title: 'title',
                        category: TaskCategory.shopping,
                        time: '10:00',
                        date: 'date',
                        note: 'note',
                        isCompleted: false,
                      ),
                    ],
                  ),
                  // CommonContainer(
                  //   width: deviceSize.width,
                  //   height: deviceSize.height * 0.3,
                  //   borderRadius: 10,
                  //   color: colors.primaryContainer,
                  //   child: ListView.builder(
                  //     padding: MediaQuery.of(context).padding.copyWith(left: 10, right: 10, bottom: 10, top: 10),
                  //     shrinkWrap: true,
                  //     itemCount: 30,
                  //     itemBuilder: (context, index) {
                  //       return Text('Home$index');
                  //     },
                  //   ),
                  // ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'completed',
                        style: context.textTheme.headlineMedium,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          showToastAndNavigate();
                        },
                        child: Text('btn'),
                      ),
                    ],
                  ),
                  const Gap(20),

                  const DisplayListOfTasks(
                    tasks: [],
                  ),

                  // CommonContainer(
                  //   width: deviceSize.width,
                  //   height: deviceSize.height * 0.3,
                  //   borderRadius: 10,
                  //   color: colors.primaryContainer,
                  //   child: ListView.builder(
                  //     padding: MediaQuery.of(context).padding.copyWith(left: 10, right: 10, bottom: 10, top: 10),
                  //     shrinkWrap: true,
                  //     itemCount: 30,
                  //     itemBuilder: (context, index) {
                  //       return Text('Home$index');
                  //     },
                  //   ),
                  // ),
                  const Gap(20),
                  ElevatedButton(
                    onPressed: () => context.push(RouteLocation.createTask),
                    child: const DisplayWhiteText(text: 'Add New Task'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///
  Future<void> showToastAndNavigate() async {
    OverlayEntry overlayEntry =
        OverlayEntry(builder: (context) => Positioned.fill(child: Container(color: Colors.redAccent.withOpacity(0.2))));

    Overlay.of(context).insert(overlayEntry);

    await Future.delayed(Duration(milliseconds: 1400));

    overlayEntry.remove();
  }
}
