import 'package:flutter/material.dart';

class TabBarMaterial extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;

  const TabBarMaterial(@required this.index, @required this.onChangedTab);

  @override
  State<TabBarMaterial> createState() => _TabBarMaterialState();
}

class _TabBarMaterialState extends State<TabBarMaterial> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildTabItem(0, Icon(Icons.home)),
          buildTabItem(1, Icon(Icons.people)),
          buildTabItem(2, Icon(Icons.headset_mic)),
          buildTabItem(3, Icon(Icons.settings)),
        ],
      ),
    );
  }

  Widget buildTabItem(@required int index, @required Icon icon) {
    final isSelected = index == widget.index;
    return IconTheme(
        data: IconThemeData(
          color: isSelected ? Colors.red : Colors.black,
        ),
        child: IconButton(
            icon: icon, onPressed: () => widget.onChangedTab(index)));
  }
}
