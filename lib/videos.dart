// in future would be replaced by requests
List videos = [
  {
    'id': '1',
    'previewImage': '../resources/images/videos/papich1.jpg',
    'description': 'папич злобно рычит. ',
    'length': '0:31',
    'channelAvatarImage': '../resources/images/channels/stul_papicha.jpg',
    'channelName': 'Стул Папича',
    'views': '7,6K views',
    'uploadedAt': '3 hours ago',
    'likes': '1000',
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
