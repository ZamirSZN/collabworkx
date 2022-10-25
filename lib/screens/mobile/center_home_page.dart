import 'package:collabworkx/screens/mobile/digital_space_details_screen.dart';
import 'package:collabworkx/services/get_spaces_requests.dart';
import 'package:collabworkx/utils/colors.dart';
import 'package:collabworkx/utils/global_variables.dart';
import 'package:collabworkx/widgets/add_space_dialog.dart';
import 'package:collabworkx/widgets/digital_space_index_widget.dart';
import 'package:collabworkx/widgets/overlapping_panels.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CenterHomePage extends StatefulWidget {
  const CenterHomePage({super.key});

  @override
  State<CenterHomePage> createState() => _CenterHomePageState();
}

class _CenterHomePageState extends State<CenterHomePage> {
  bool isFabBig = true;
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    loadAllSpaces();
  }

  loadAllSpaces() async {
    var allSpaces = await DigitalSpacesRequest().getDigitalSpaces();
    setState(() {
      allDigitalSpaces = allSpaces;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: isFabBig
            // this might be a wrong way to use the animated switcher
            // i could have just put everything in a function but hey
            // wheres the fun without maybe losing some fps
            ? AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: FloatingActionButton.extended(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    addSpaceDialog(context);
                  },
                  label: const Text("Add Space"),
                ),
              )
            : AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: FloatingActionButton(
                  child: const Icon(Icons.add),
                  onPressed: () {
                    addSpaceDialog(context);
                  },
                ),
              ),
        body: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            if (notification.direction == ScrollDirection.forward) {
              setState(() {
                isFabBig = true;
              });
            } else if (notification.direction == ScrollDirection.reverse) {
              setState(() {
                isFabBig = false;
              });
            }
            return true;
          },
          child: CustomScrollView(
            // floatHeaderSlivers: true,
            slivers: [
              SliverAppBar(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                backgroundColor: collabGrey,
                title: const Text(
                  "Digital Spaces",
                ),
                actions: [
                  IconButton(
                      onPressed: () {
                        OverlappingPanels.of(context)?.reveal(RevealSide.right);
                      },
                      icon: const Icon(Icons.people_alt_rounded))
                ],
                elevation: 1,
                leading: IconButton(
                  icon: const Icon(
                    Icons.menu,
                  ),
                  onPressed: () {
                    OverlappingPanels.of(context)?.reveal(RevealSide.left);
                  },
                ),
                bottom: PreferredSize(
                    preferredSize: const Size(10, 10),
                    child: Column(
                      children: const [
                        Chip(
                            label: Text(
                                "Platform made to manage teams and sync collaborations")),
                        SizedBox(
                          height: 5,
                        )
                      ],
                    )),
                floating: true,
                snap: true,
                expandedHeight: 100,
              ),
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  childCount: allDigitalSpaces?.length ?? 0,
                  (context, index) => Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: GestureDetector(
                      child: DigitalSpaceIndexWidget(
                        spaceTitle: allDigitalSpaces![index].spaceTitle!,
                        spaceDescription:
                            allDigitalSpaces![index].spaceDescription!,
                        spaceIndustry: allDigitalSpaces![index].spaceIndustry!,
                        spaceImage: allDigitalSpaces![index].spaceImage!,
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DigitalSpaceDetailsScreen(
                              title: allDigitalSpaces![index].spaceTitle!),
                        ));
                      },
                    ),
                  ),
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.4 / 2,
                  crossAxisCount: 2,
                ),
              ),
            ],
          ),
        ));
  }
}
