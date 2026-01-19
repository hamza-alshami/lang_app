import 'package:flutter/material.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({
    required this.name,
    required this.color,
    required this.onTap,
  });
  final String name;
  final Color color;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color,
              ),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15),

              width: 400,
              height: 50,

              child: Text(
                "$name",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
