import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notsapp/views/edit_view_notes.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditViewNotes();
        }));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
            color: const Color(0xffffcd7a),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  'Flutter tips',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: Text(
                  'Build your Career with  Tharwat Samy',
                  style: TextStyle(
                    color: Colors.black.withOpacity(.4),
                    fontSize: 20,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 24, bottom: 24),
              child: Text('May 21, 2022',
                  style: TextStyle(color: Color(0xff996e3a), fontSize: 14)),
            )
          ],
        ),
      ),
    );
  }
}
