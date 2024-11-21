import 'package:flutter/material.dart';
import 'package:notsapp/constant.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.ontap});
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: kprimarycolor),
        width: MediaQuery.of(context).size.width,
        height: 40,
        child: const Center(
          child: Text(
            'Add',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
