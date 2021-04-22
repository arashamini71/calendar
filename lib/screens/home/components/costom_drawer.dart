import 'package:calendar_project/constants.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final Function onIndexChanged;
  final int selectedItem;
  const CustomDrawer({
    Key key,
    this.onIndexChanged,
    this.selectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
              child: Center(
                child: Image.asset('assets/icons/drawer_header.png'),
              ),
            ),
            buildListTile(
              onIndexChanged: onIndexChanged,
              context: context,
              isSelected: selectedItem == 0,
              imgSrc: 'assets/icons/Dashboard.png',
              title: 'Dashboard',
              index: 0,
            ),
            buildListTile(
              onIndexChanged: onIndexChanged,
              context: context,
              isSelected: selectedItem == 1,
              imgSrc: 'assets/icons/Folder.png',
              title: 'My Courses',
              index: 1,
            ),
            buildListTile(
              onIndexChanged: onIndexChanged,
              context: context,
              isSelected: selectedItem == 2,
              imgSrc: 'assets/icons/Calendar.png',
              title: 'Schedules',
              index: 2,
            ),
            buildListTile(
              onIndexChanged: onIndexChanged,
              context: context,
              isSelected: selectedItem == 3,
              imgSrc: 'assets/icons/Homework.png',
              title: 'Homework',
              index: 3,
            ),
            buildListTile(
              onIndexChanged: onIndexChanged,
              context: context,
              isSelected: selectedItem == 4,
              imgSrc: 'assets/icons/Document.png',
              title: 'Quizes',
              index: 4,
            ),
            buildListTile(
              onIndexChanged: onIndexChanged,
              context: context,
              isSelected: selectedItem == 5,
              imgSrc: 'assets/icons/Wallet.png',
              title: 'Transactions',
              index: 5,
            ),
            buildListTile(
              onIndexChanged: onIndexChanged,
              context: context,
              isSelected: selectedItem == 6,
              imgSrc: 'assets/icons/Chat.png',
              title: 'Support',
              index: 6,
            ),
            buildListTile(
              onIndexChanged: onIndexChanged,
              context: context,
              isSelected: selectedItem == 7,
              imgSrc: 'assets/icons/Activity.png',
              title: 'Mark',
              index: 7,
            ),
            buildListTile(
              onIndexChanged: onIndexChanged,
              context: context,
              isSelected: selectedItem == 8,
              imgSrc: 'assets/icons/Setting.png',
              title: 'Setting',
              index: 8,
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildListTile({
  @required Function onIndexChanged,
  @required BuildContext context,
  @required bool isSelected,
  @required String imgSrc,
  @required String title,
  @required int index,
}) {
  return InkWell(
    onTap: () {
      onIndexChanged(index);
      Navigator.of(context).pop();
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isSelected ? selectedNavBar : Colors.transparent,
      ),
      child: ListTile(
        leading: ShaderMask(
          child: Image.asset(imgSrc),
          shaderCallback: (Rect bounds) => isSelected
              ? kPraimeryGradientColor.createShader(bounds)
              : kGradientColor.createShader(bounds),
          blendMode: BlendMode.srcATop,
        ),
        title: ShaderMask(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          shaderCallback: (Rect bounds) => isSelected
              ? kPraimeryGradientColor.createShader(bounds)
              : kGradientColor.createShader(bounds),
          blendMode: BlendMode.srcATop,
        ),
      ),
    ),
  );
}
