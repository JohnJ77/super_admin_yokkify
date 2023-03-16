import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BotonWidget3Widget extends StatefulWidget {
  const BotonWidget3Widget({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  _BotonWidget3WidgetState createState() => _BotonWidget3WidgetState();
}

class _BotonWidget3WidgetState extends State<BotonWidget3Widget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondaryColor,
          width: 2,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Text(
              widget.text!,
              style: FlutterFlowTheme.of(context).bodyText2.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                    color: FlutterFlowTheme.of(context).secondaryColor,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyText2Family),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
