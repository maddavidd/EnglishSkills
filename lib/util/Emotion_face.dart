import 'package:flutter/material.dart';

class EmotionFace extends StatelessWidget {
  final String emotionName;
  final String fb;

  const EmotionFace({
    Key? key,
    required this.emotionName,
    required this.fb,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print(fb);
      },
      child: Container(
          decoration: BoxDecoration(
              color: Colors.blue[600],
              borderRadius: BorderRadius.circular(12)),
          padding: EdgeInsets.all(16),
          child: Center(
            child: Text(emotionName, style: TextStyle(fontSize: 28),),
          ),
    ),
    );
  }
}