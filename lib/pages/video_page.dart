import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget {
  static const TextStyle BottomInfoStyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: Color(0xFFAAAAAA),
    fontSize: 12,
    fontFamily: 'Roboto',
  );

  final String tag;

  final String _previewImage;
  final String _description;
  final String _length;

  final String _channelAvatarImage;
  final String _channelName;
  final String _views;
  final String _uploadedAt;

  VideoPage(
      {required this.tag,
      required previewImage,
      required description,
      required length,
      required channelAvatarImage,
      required channelName,
      required views,
      required uploadedAt})
      : this._previewImage = previewImage,
        this._description = description,
        this._length = length,
        this._channelAvatarImage = channelAvatarImage,
        this._channelName = channelName,
        this._views = views,
        this._uploadedAt = uploadedAt;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: this.tag,
      child: Material(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(this._previewImage),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 5,
                      left: 10,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.keyboard_arrow_down),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    this._description,
                                    style: TextStyle(fontSize: 18),
                                    maxLines: 2,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  this._views,
                                  style: BottomInfoStyle,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                width: 5,
                                height: 5,
                                decoration: BoxDecoration(
                                  color: Color(0xFFAAAAAA),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                child: Text(
                                  this._uploadedAt,
                                  style: BottomInfoStyle,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.thumb_up_outlined),
                          Divider(
                            thickness: 0,
                            height: 3,
                          ),
                          Text('100'),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.thumb_down_outlined),
                          Divider(
                            thickness: 0,
                            height: 3,
                          ),
                          Text('0'),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.send_outlined),
                          Divider(
                            thickness: 0,
                            height: 3,
                          ),
                          Text('Share'),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.playlist_add),
                          Divider(
                            thickness: 0,
                            height: 3,
                          ),
                          Text('Save'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // channel info
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 36,
                          width: 36,
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage(this._channelAvatarImage),
                          ),
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    child: Container(
                                      child: Text(
                                        this._channelName,
                                        style: TextStyle(fontSize: 14),
                                        maxLines: 1,
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    child: Container(
                                      child: Text(
                                        '81.6K subscribers',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                        maxLines: 1,
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    child: Text(
                      'SUBSCRIBE',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                  ),

                  Container(
                    child: IconButton(
                      icon: Icon(Icons.notifications_outlined),
                      onPressed: () {},
                    ),
                  )
                ],
              ),

              Divider(
                height: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
