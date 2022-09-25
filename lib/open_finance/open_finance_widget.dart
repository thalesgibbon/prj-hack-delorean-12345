import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_timer.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OpenFinanceWidget extends StatefulWidget {
  const OpenFinanceWidget({Key? key}) : super(key: key);

  @override
  _OpenFinanceWidgetState createState() => _OpenFinanceWidgetState();
}

class _OpenFinanceWidgetState extends State<OpenFinanceWidget> {
  late final StopWatchTimer timerController;
  late String timerValue;
  late int timerMilliseconds;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    timerMilliseconds = 7000;
    timerValue = StopWatchTimer.getDisplayTime(
      0,
      hours: false,
      minute: false,
      second: true,
      milliSecond: true,
    );
    timerController = StopWatchTimer(
      mode: StopWatchMode.countDown,
      presetMillisecond: 7000,
      onChange: (value) {
        setState(() {
          timerMilliseconds = value;
          timerValue = StopWatchTimer.getDisplayTime(
            value,
            hours: false,
            minute: false,
            second: true,
            milliSecond: true,
          );
        });
      },
    );
  }

  @override
  void dispose() {
    timerController.dispose();
    super.dispose();
  }

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
                          'assets/images/engineering.png',
                          width: 200,
                          height: 200,
                          fit: BoxFit.contain,
                        ),
                        Divider(
                          color: Colors.transparent,
                        ),
                        Text(
                          'Estamos buscando suas informações!',
                          textAlign: TextAlign.justify,
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                        FlutterFlowTimer(
                          timerValue: timerValue,
                          timer: timerController,
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).title2.override(
                                fontFamily: 'Poppins',
                                fontSize: 28,
                              ),
                          onEnded: () {},
                        ),
                        Text(
                          'segundos para finalizar.',
                          textAlign: TextAlign.justify,
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                        Divider(
                          color: Colors.transparent,
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            final usersUpdateData = createUsersRecordData(
                              flagOpenfinance: true,
                              flagDebt: true,
                            );
                            await currentUserReference!.update(usersUpdateData);

                            final transactionsCreateData =
                                createTransactionsRecordData(
                              user: currentUserReference,
                              name: '2022-01 COTA INICIAL',
                              value: 0.99,
                              flagPgto: false,
                            );
                            await TransactionsRecord.collection
                                .doc()
                                .set(transactionsCreateData);

                            context.pushNamed('Home');
                          },
                          text: 'Concluir',
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
