class SessionController {
  static final SessionController _session = SessionController._internal();

  String? mySession;
  factory SessionController() {
    return _session;
  }
  SessionController._internal() {}
}
