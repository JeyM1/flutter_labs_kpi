import 'package:flutter/material.dart';
import '../components/video_preview.dart';

class MainPage extends StatelessWidget {
  static final double _videoMargin = 15.0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, _videoMargin),
            child: VideoPreview(
              tag: '1',
              previewImage: '../resources/images/videos/papich1.jpg',
              description:
              'папич злобно рычит. ',
              length: '0:31',
              channelAvatarImage:
              '../resources/images/channels/stul_papicha.jpg',
              channelName: 'Стул Папича',
              views: '7,6K views',
              uploadedAt: '3 hours ago',
            ),
          ),
        ],
      ),
    );
  }
}