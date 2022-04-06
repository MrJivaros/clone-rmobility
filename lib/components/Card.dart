import 'package:flutter/material.dart';
import 'package:rmobility/themes/colors.dart';

class MyCard extends StatelessWidget {
  final String _title;
  final String _imageUrl;
  final String _content;

  const MyCard(
      {required String title,
      required String image,
      required String content,
      Key? key})
      : _title = title,
        _imageUrl = image,
        _content = content,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(
          color: CustumColors.grey,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _title,
              style: const TextStyle(
                color: CustumColors.secondary,
                fontSize: 13,
              ),
            ),
            Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      _imageUrl,
                      height: 48,
                      width: 48,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  _content,
                  style: const TextStyle(
                    color: CustumColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
