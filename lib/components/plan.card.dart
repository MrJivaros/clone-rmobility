import 'package:flutter/material.dart';
import 'package:rmobility/themes/colors.dart';

class PlanCard extends StatelessWidget {
  final String _title;
  final String _content;
  final String _imageUrl;

  const PlanCard(
      {required String title,
      required String content,
      required String imageUrl,
      Key? key})
      : _title = title,
        _content = content,
        _imageUrl = imageUrl,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      width: double.infinity / 2,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                _imageUrl,
                fit: BoxFit.contain,
                height: 82,
              ),
              Flexible(
                child: Text(
                  _title,
                  style: const TextStyle(
                    color: CustumColors.primary,
                    fontWeight: FontWeight.w500,
                    fontSize: 8,
                  ),
                ),
              ),
              Text(
                _content,
                style: const TextStyle(
                  color: CustumColors.secondary,
                  fontWeight: FontWeight.w500,
                  fontSize: 8,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
