import 'dart:async';

import 'package:flutter_zoom_plugin_example/meeting_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_zoom_plugin_example/start_meeting_screen.dart';

import 'meeting_voice_with_camera_screen.dart';
import 'meeting_voice_with_no_camera_screen.dart';

class JoinWidget extends StatefulWidget {
  @override
  _JoinWidgetState createState() => _JoinWidgetState();
}

class _JoinWidgetState extends State<JoinWidget> {
  TextEditingController meetingIdController = TextEditingController();
  TextEditingController meetingPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // new page needs scaffolding!
    return Scaffold(
      appBar: AppBar(
        title: Text('Join meeting'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 32.0,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                    controller: meetingIdController,
                    onChanged: (v) => meetingIdController.text = v,
                    decoration: InputDecoration(
                      labelText: 'Meeting ID',
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                    controller: meetingPasswordController,
                    onChanged: (v) => meetingPasswordController.text = v,
                    decoration: InputDecoration(
                      labelText: 'Meeting Password',
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Builder(
                  builder: (context) {
                    // The basic Material Design action button.
                    return RaisedButton(
                      // If onPressed is null, the button is disabled
                      // this is my goto temporary callback.
                      onPressed: () => joinVideoMeeting(context),
                      child: Text('Join Video'),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Builder(
                  builder: (context) {
                    // The basic Material Design action button.
                    return RaisedButton(
                      // If onPressed is null, the button is disabled
                      // this is my goto temporary callback.
                      onPressed: () => joinVoiceMeeting(context),
                      child: Text('Join Voice with camera'),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Builder(
                  builder: (context) {
                    // The basic Material Design action button.
                    return RaisedButton(
                      // If onPressed is null, the button is disabled
                      // this is my goto temporary callback.
                      onPressed: () => joinNoCameraVoiceMeeting(context),
                      child: Text('Join Voice with no camera'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  joinVoiceMeeting(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return VoiceMeetingWidget(
              meetingId: '3858403162', meetingPassword: '3sbd4t');
        },
      ),
    );
  }

  joinVideoMeeting(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return MeetingWidget(
              meetingId: '3858403162', meetingPassword: '3sbd4t');
        },
      ),
    );
  }

  joinNoCameraVoiceMeeting(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return NoCameraVoiceMeetingWidget(
              meetingId: '3858403162', meetingPassword: '3sbd4t');
        },
      ),
    );
  }
}
