// in future would be replaced by requests
List videos = [
  {
    'id': '1',
    'previewImage': 'resources/images/videos/1.jpg',
    'description': 'Верстка мобільного застосунку. Flutter. Лекція 3',
    'length': '1:09:26',
    'channelAvatarImage': 'resources/images/channels/serhiy_tytenko.jpg',
    'channelName': 'Сергій Титенко | Web-development',
    'views': '476 views',
    'shortUploadedAt': '2 years ago',
    'uploadedAt': 'Sep 21, 2019',
    'likes': '8',
    'dislikes': '0',
    'subscribers': '344'
  },
  {
    'id': '2',
    'previewImage': 'resources/images/videos/2.jpg',
    'description': 'Material design. Scaffold widget. Flutter. Лекція 4',
    'length': '46:55',
    'channelAvatarImage': 'resources/images/channels/serhiy_tytenko.jpg',
    'channelName': 'Сергій Титенко | Web-development',
    'views': '317 views',
    'shortUploadedAt': '2 years ago',
    'uploadedAt': 'Nov 25, 2019',
    'likes': '9',
    'dislikes': '0',
    'subscribers': '344'
  },
  {
    'id': '3',
    'previewImage': 'resources/images/videos/papich1.jpg',
    'description': 'папич злобно рычит. ',
    'length': '0:31',
    'channelAvatarImage': 'resources/images/channels/stul_papicha.jpg',
    'channelName': 'Стул Папича',
    'views': '7,6K views',
    'shortUploadedAt': '3 hours ago',
    'uploadedAt': 'Nov 11, 2021',
    'likes': '1.1K',
    'dislikes': '0',
    'subscribers': '81.6K'
  }
];

Map getVideoById(dynamic id) {
  return videos.firstWhere((element) => element['id'] == id);
}

List getVideos() {
  return videos;
}
