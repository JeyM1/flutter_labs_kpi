import 'package:flutter/material.dart';
import '../components/video.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: VideoPreview(
              previewImage: '../resources/images/videos/papich1.jpg',
              description:
              'папич злобно рычит. Вся Винница в шоке aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadgdfgdfgdgfddgdfaa',
              length: '0:31',
              channelAvatarImage:
              '../resources/images/channels/stul_papicha.jpg',
              channelName: 'Стул Папича',
              views: '7,6 тыс. просмотров',
              uploadedAt: '3 часа назад',
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: VideoPreview(
              previewImage: '../resources/images/videos/papich1.jpg',
              description:
              'папич злобно рычит. Вся Винница в шоке aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadgdfgdfgdgfddgdfaa',
              length: '0:31',
              channelAvatarImage:
              '../resources/images/channels/stul_papicha.jpg',
              channelName: 'Стул Папича',
              views: '7,6 тыс. просмотров',
              uploadedAt: '3 часа назад',
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: VideoPreview(
              previewImage: '../resources/images/videos/papich1.jpg',
              description:
              'папич злобно рычит. Вся Винница в шоке aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadgdfgdfgdgfddgdfaa',
              length: '0:31',
              channelAvatarImage:
              '../resources/images/channels/stul_papicha.jpg',
              channelName: 'Стул Папича',
              views: '7,6 тыс. просмотров',
              uploadedAt: '3 часа назад',
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: VideoPreview(
              previewImage: '../resources/images/videos/papich1.jpg',
              description:
              'папич злобно рычит. Вся Винница в шоке aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadgdfgdfgdgfddgdfaa',
              length: '0:31',
              channelAvatarImage:
              '../resources/images/channels/stul_papicha.jpg',
              channelName: 'Стул Папича',
              views: '7,6 тыс. просмотров',
              uploadedAt: '3 часа назад',
            ),
          ),
        ],
      ),
    );
  }
}