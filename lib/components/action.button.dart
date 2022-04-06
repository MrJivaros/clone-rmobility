import 'package:flutter/material.dart';
import 'package:rmobility/screens/exposition.dart';

class ActionButtons extends StatelessWidget {
  final String _text;
  const ActionButtons({required String text, Key? key})
      : _text = text,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, ExpositionScreen.routeName);
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF3AAA35),
              Color(0xFF77D373),
            ],
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Container(
          height: 50,
          width: 160,
          alignment: Alignment.center,
          child: Text(
            _text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
