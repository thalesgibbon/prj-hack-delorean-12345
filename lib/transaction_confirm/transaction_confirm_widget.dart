import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionConfirmWidget extends StatefulWidget {
  const TransactionConfirmWidget({Key? key}) : super(key: key);

  @override
  _TransactionConfirmWidgetState createState() =>
      _TransactionConfirmWidgetState();
}

class _TransactionConfirmWidgetState extends State<TransactionConfirmWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40, 40, 40, 40),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/congratulation.png',
                          width: 200,
                          height: 200,
                          fit: BoxFit.contain,
                        ),
                        Divider(
                          color: Colors.transparent,
                        ),
                        Text(
                          'Cota comprada com sucesso. Parabéns por contribuir e pela sua preocupação em um mundo mais verde! :}',
                          textAlign: TextAlign.justify,
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                        Divider(
                          color: Colors.transparent,
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('Transactions');
                          },
                          text: 'Próximo',
                          options: FFButtonOptions(
                            width: 100,
                            height: 40,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
