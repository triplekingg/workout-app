import 'package:flutter/material.dart';

class Thumbnail extends StatelessWidget {
  String url;
  String title;
  String description;

  Thumbnail(this.url, this.title, this.description);

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
            image: Image.asset(url).image,
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
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0x65090F13),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: Colors.white,
                        size: 24,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          description,
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF39D2C0),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 16),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // ElevatedButton(
                        //   onPressed: () {
                        //     print('Button-Reserve pressed ...');
                        //   },
                        //   text: 'Begin',
                        //   icon: Icon(
                        //     Icons.add_rounded,
                        //     color: Colors.white,
                        //     size: 15,
                        //   ),
                        //   options: FFButtonOptions(
                        //     width: 120,
                        //     height: 40,
                        //     color: Color(0xFF39D2C0),
                        //     textStyle: GoogleFonts.getFont(
                        //       'Lexend Deca',
                        //       color: Colors.white,
                        //       fontSize: 14,
                        //     ),
                        //     elevation: 3,
                        //     borderSide: BorderSide(
                        //       color: Colors.transparent,
                        //       width: 1,
                        //     ),
                        //     borderRadius: 8,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
