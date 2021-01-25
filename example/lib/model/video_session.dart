import 'package:flutter/cupertino.dart';
import 'package:flutter_zoom_plugin/zoom_options.dart';

class VideoSession {
  String meetingId;
  String meetingPassword;
  String title;
  String userId;

  VideoSession(
      {@required this.meetingId,
      @required this.meetingPassword,
      this.title = "Health Personas",
      this.userId = "Username"}) {}

  ZoomOptions getZoomOptions() {
    return new ZoomOptions(
      domain: "zoom.us",
      appKey: "A5MERlrzvmY5d2LFqEVpvg9c38NSbPUZplEL",
      appSecret: "EPpOt0S3bcoGwbvGWJr9dagGkvOQpW4iXw3u",
    );
  }

  ZoomMeetingOptions getZoomMeetingOptions() {
    return new ZoomMeetingOptions(
      userId: this.userId,
      meetingId: meetingId,
      meetingPassword: meetingPassword,
      disableDialIn: "true",
      disableDrive: "true",
      disableInvite: "true",
      disableShare: "true",
      noAudio: "false",
      noDisconnectAudio: "true",
      noVideo: "false",
      noCamera: "false",
      customMeetingTitle: this.title,
    );
  }
}
