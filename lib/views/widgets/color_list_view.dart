import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/cubits/add_note/add_note_cubit.dart';

class ItemColor extends StatelessWidget {
  const ItemColor({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 30,
            backgroundColor: color,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentItem = 0;
  List<Color> colors = const [
    Color(0xff695958),
    Color(0xffB6C8A9),
    Color(0xffC8EAD3),
    Color(0xffCFFFE5),
    Color(0xffCEDADA),
    Color(0xffA7A7A9),
    Color(0xffB0C0BC),
    Color(0xffA7A7A9)
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: GestureDetector(
                onTap: () {
                  currentItem = index;
                  BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                  setState(() {});
                },
                child: ItemColor(
                  color: colors[index],
                  isActive: currentItem == index,
                ),
              ),
            );
          }),
    );
  }
}
