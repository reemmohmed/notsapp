import 'package:flutter/material.dart';
import 'package:notsapp/constant.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.ontap, this.islooding = false});
  final void Function()? ontap;
  final bool islooding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: kprimarycolor),
        width: MediaQuery.of(context).size.width,
        height: 40,
        child: Center(
          child: islooding
              ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : const Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}
