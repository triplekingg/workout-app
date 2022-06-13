import 'package:flutter/material.dart';

class Thumbnail extends StatelessWidget {
  String url;
  Thumbnail(this.url);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 20),
        child: Container(
          width: double.infinity,
          height: 184,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: Image.network(
                'https://images.unsplash.com/photo-1616803689943-5601631c7fec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTR8fHdvcmtvdXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
              ).image,
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                color: Color(0x33000000),
                offset: Offset(0, 2),
              )
            ],
            borderRadius: BorderRadius.circular(8),
          ),
        ));
  }
}
