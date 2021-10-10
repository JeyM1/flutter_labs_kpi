import 'package:flutter/material.dart';

class VideoPreview extends StatelessWidget {
  static const TextStyle BottomInfoStyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: Color(0xFFAAAAAA),
    fontSize: 12,
    fontFamily: 'Roboto',
  );

  final String _previewImage;
  final String _description;
  final String _length;

  final String _channelAvatarImage;
  final String _channelName;
  final String _views;
  final String _uploadedAt;

  VideoPreview(
      {required previewImage,
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
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          // TODO: could be done with MediaQuery.of(context).size.height / 3
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
                bottom: 5,
                right: 10,
                child: Container(
                  padding: EdgeInsets.fromLTRB(3, 1, 3, 1),
                  color: Colors.black45,
                  child: Text(this._length),
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 36,
              width: 36,
              margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: CircleAvatar(
                backgroundImage: AssetImage(this._channelAvatarImage),
              ),
            ),
            Flexible(
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          this._description,
                          style: TextStyle(fontSize: 16),
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          this._channelName,
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
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}