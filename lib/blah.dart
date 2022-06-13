
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class MainWidget extends StatefulWidget {
//   const MainWidget({Key key}) : super(key: key);

//   @override
//   _MainWidgetState createState() => _MainWidgetState();
// }

// class _MainWidgetState extends State<MainWidget> {
//   TextEditingController searchFieldController;
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();
//     searchFieldController = TextEditingController();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         automaticallyImplyLeading: false,
//         title: Text(
//           'Let\'s Grind',
//           style: FlutterFlowTheme.of(context).title1.override(
//                 fontFamily: 'Lexend Deca',
//                 color: Color(0xFF090F13),
//                 fontSize: 22,
//                 fontWeight: FontWeight.w600,
//               ),
//         ),
//         actions: [],
//         centerTitle: false,
//         elevation: 0,
//       ),
//       backgroundColor: Color(0xFFF1F4F8),
//       body: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           Row(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Material(
//                 color: Colors.transparent,
//                 elevation: 0,
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: 60,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         blurRadius: 4,
//                         color: Color(0x430F1113),
//                         offset: Offset(0, 2),
//                       )
//                     ],
//                   ),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
//                     child: TextFormField(
//                       controller: searchFieldController,
//                       obscureText: false,
//                       decoration: InputDecoration(
//                         hintText: 'Type to search here...',
//                         hintStyle:
//                             FlutterFlowTheme.of(context).bodyText2.override(
//                                   fontFamily: 'Lexend Deca',
//                                   color: Color(0xFF95A1AC),
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.normal,
//                                 ),
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(
//                             color: Color(0xFFF1F4F8),
//                             width: 2,
//                           ),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(
//                             color: Color(0xFFF1F4F8),
//                             width: 2,
//                           ),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         prefixIcon: Icon(
//                           Icons.search_rounded,
//                           color: Color(0xFF95A1AC),
//                         ),
//                       ),
//                       style: FlutterFlowTheme.of(context).bodyText1.override(
//                             fontFamily: 'Lexend Deca',
//                             color: Color(0xFF090F13),
//                             fontSize: 14,
//                             fontWeight: FontWeight.normal,
//                           ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Expanded(
//             child: ListView(
//               padding: EdgeInsets.zero,
//               scrollDirection: Axis.vertical,
//               children: [
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 20),
//                   child: Container(
//                     width: double.infinity,
//                     height: 184,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       image: DecorationImage(
//                         fit: BoxFit.fitWidth,
//                         image: Image.network(
//                           'https://images.unsplash.com/photo-1616803689943-5601631c7fec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTR8fHdvcmtvdXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
//                         ).image,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           blurRadius: 3,
//                           color: Color(0x33000000),
//                           offset: Offset(0, 2),
//                         )
//                       ],
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Container(
//                       width: 100,
//                       height: 100,
//                       decoration: BoxDecoration(
//                         color: Color(0x65090F13),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
//                         child: Column(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Padding(
//                               padding:
//                                   EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 children: [
//                                   Expanded(
//                                     child: Text(
//                                       'Body Weight',
//                                       style: FlutterFlowTheme.of(context)
//                                           .title1
//                                           .override(
//                                             fontFamily: 'Lexend Deca',
//                                             color: Colors.white,
//                                             fontSize: 24,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                     ),
//                                   ),
//                                   Icon(
//                                     Icons.chevron_right_rounded,
//                                     color: Colors.white,
//                                     size: 24,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                                   EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 children: [
//                                   Expanded(
//                                     child: Text(
//                                       '30m | High Intensity | Indoor/Outdoor',
//                                       style: FlutterFlowTheme.of(context)
//                                           .bodyText2
//                                           .override(
//                                             fontFamily: 'Lexend Deca',
//                                             color: Color(0xFF39D2C0),
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.normal,
//                                           ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Expanded(
//                               child: Padding(
//                                 padding: EdgeInsetsDirectional.fromSTEB(
//                                     16, 4, 16, 16),
//                                 child: Row(
//                                   mainAxisSize: MainAxisSize.max,
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     FFButtonWidget(
//                                       onPressed: () {
//                                         print('Button-Reserve pressed ...');
//                                       },
//                                       text: 'Begin',
//                                       icon: Icon(
//                                         Icons.add_rounded,
//                                         color: Colors.white,
//                                         size: 15,
//                                       ),
//                                       options: FFButtonOptions(
//                                         width: 120,
//                                         height: 40,
//                                         color: Color(0xFF39D2C0),
//                                         textStyle: GoogleFonts.getFont(
//                                           'Lexend Deca',
//                                           color: Colors.white,
//                                           fontSize: 14,
//                                         ),
//                                         elevation: 3,
//                                         borderSide: BorderSide(
//                                           color: Colors.transparent,
//                                           width: 1,
//                                         ),
//                                         borderRadius: 8,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
//                   child: Container(
//                     width: double.infinity,
//                     height: 184,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       image: DecorationImage(
//                         fit: BoxFit.fitWidth,
//                         image: Image.asset(
//                           'assets/images/john-arano-h4i9G-de7Po-unsplash.jpg',
//                         ).image,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           blurRadius: 3,
//                           color: Color(0x33000000),
//                           offset: Offset(0, 2),
//                         )
//                       ],
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Container(
//                       width: 100,
//                       height: 100,
//                       decoration: BoxDecoration(
//                         color: Color(0x65090F13),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Expanded(
//                                   child: Text(
//                                     'Weight Training',
//                                     style: FlutterFlowTheme.of(context)
//                                         .title1
//                                         .override(
//                                           fontFamily: 'Lexend Deca',
//                                           color: Colors.white,
//                                           fontSize: 24,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                   ),
//                                 ),
//                                 Icon(
//                                   Icons.chevron_right_rounded,
//                                   color: Colors.white,
//                                   size: 24,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Expanded(
//                                   child: Text(
//                                     '30m | High Intensity | Indoor/Outdoor',
//                                     style: FlutterFlowTheme.of(context)
//                                         .bodyText2
//                                         .override(
//                                           fontFamily: 'Lexend Deca',
//                                           color: Color(0xFF39D2C0),
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.normal,
//                                         ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             child: Padding(
//                               padding:
//                                   EdgeInsetsDirectional.fromSTEB(16, 4, 16, 16),
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 crossAxisAlignment: CrossAxisAlignment.end,
//                                 children: [
//                                   FFButtonWidget(
//                                     onPressed: () {
//                                       print('Button-Reserve pressed ...');
//                                     },
//                                     text: 'Begin',
//                                     icon: Icon(
//                                       Icons.add_rounded,
//                                       color: Colors.white,
//                                       size: 15,
//                                     ),
//                                     options: FFButtonOptions(
//                                       width: 120,
//                                       height: 40,
//                                       color: Color(0xFF39D2C0),
//                                       textStyle: GoogleFonts.getFont(
//                                         'Lexend Deca',
//                                         color: Colors.white,
//                                         fontSize: 14,
//                                       ),
//                                       elevation: 3,
//                                       borderSide: BorderSide(
//                                         color: Colors.transparent,
//                                         width: 1,
//                                       ),
//                                       borderRadius: 8,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
//                   child: Container(
//                     width: double.infinity,
//                     height: 184,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       image: DecorationImage(
//                         fit: BoxFit.fitWidth,
//                         image: Image.network(
//                           'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8d29ya291dHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
//                         ).image,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           blurRadius: 3,
//                           color: Color(0x33000000),
//                           offset: Offset(0, 2),
//                         )
//                       ],
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Container(
//                       width: 100,
//                       height: 100,
//                       decoration: BoxDecoration(
//                         color: Color(0x65090F13),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Expanded(
//                                   child: Text(
//                                     'Abs',
//                                     style: FlutterFlowTheme.of(context)
//                                         .title1
//                                         .override(
//                                           fontFamily: 'Lexend Deca',
//                                           color: Colors.white,
//                                           fontSize: 24,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                   ),
//                                 ),
//                                 Icon(
//                                   Icons.chevron_right_rounded,
//                                   color: Colors.white,
//                                   size: 24,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Expanded(
//                                   child: Text(
//                                     '30m | High Intensity | Indoor/Outdoor',
//                                     style: FlutterFlowTheme.of(context)
//                                         .bodyText2
//                                         .override(
//                                           fontFamily: 'Lexend Deca',
//                                           color: Color(0xFF39D2C0),
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.normal,
//                                         ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             child: Padding(
//                               padding:
//                                   EdgeInsetsDirectional.fromSTEB(16, 4, 16, 16),
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 crossAxisAlignment: CrossAxisAlignment.end,
//                                 children: [
//                                   FFButtonWidget(
//                                     onPressed: () {
//                                       print('Button-Reserve pressed ...');
//                                     },
//                                     text: 'Begin',
//                                     icon: Icon(
//                                       Icons.add_rounded,
//                                       color: Colors.white,
//                                       size: 15,
//                                     ),
//                                     options: FFButtonOptions(
//                                       width: 120,
//                                       height: 40,
//                                       color: Color(0xFF39D2C0),
//                                       textStyle: GoogleFonts.getFont(
//                                         'Lexend Deca',
//                                         color: Colors.white,
//                                         fontSize: 14,
//                                       ),
//                                       elevation: 3,
//                                       borderSide: BorderSide(
//                                         color: Colors.transparent,
//                                         width: 1,
//                                       ),
//                                       borderRadius: 8,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
//                   child: Container(
//                     width: double.infinity,
//                     height: 184,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       image: DecorationImage(
//                         fit: BoxFit.fitWidth,
//                         image: Image.network(
//                           'https://images.unsplash.com/photo-1581009137042-c552e485697a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHdvcmtvdXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
//                         ).image,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           blurRadius: 3,
//                           color: Color(0x33000000),
//                           offset: Offset(0, 2),
//                         )
//                       ],
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Container(
//                       width: 100,
//                       height: 100,
//                       decoration: BoxDecoration(
//                         color: Color(0x65090F13),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Expanded(
//                                   child: Text(
//                                     'Strength and Weight Training',
//                                     style: FlutterFlowTheme.of(context)
//                                         .title1
//                                         .override(
//                                           fontFamily: 'Lexend Deca',
//                                           color: Colors.white,
//                                           fontSize: 24,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                   ),
//                                 ),
//                                 Icon(
//                                   Icons.chevron_right_rounded,
//                                   color: Colors.white,
//                                   size: 24,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Expanded(
//                                   child: Text(
//                                     '30m | High Intensity | Indoor/Outdoor',
//                                     style: FlutterFlowTheme.of(context)
//                                         .bodyText2
//                                         .override(
//                                           fontFamily: 'Lexend Deca',
//                                           color: Color(0xFF39D2C0),
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.normal,
//                                         ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             child: Padding(
//                               padding:
//                                   EdgeInsetsDirectional.fromSTEB(16, 4, 16, 16),
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 crossAxisAlignment: CrossAxisAlignment.end,
//                                 children: [
//                                   FFButtonWidget(
//                                     onPressed: () {
//                                       print('Button-Reserve pressed ...');
//                                     },
//                                     text: 'Begin',
//                                     icon: Icon(
//                                       Icons.add_rounded,
//                                       color: Colors.white,
//                                       size: 15,
//                                     ),
//                                     options: FFButtonOptions(
//                                       width: 120,
//                                       height: 40,
//                                       color: Color(0xFF39D2C0),
//                                       textStyle: GoogleFonts.getFont(
//                                         'Lexend Deca',
//                                         color: Colors.white,
//                                         fontSize: 14,
//                                       ),
//                                       elevation: 3,
//                                       borderSide: BorderSide(
//                                         color: Colors.transparent,
//                                         width: 1,
//                                       ),
//                                       borderRadius: 8,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
