class APISuccess {
  int statusCode;
  Object reponse;
  APISuccess({
    required this.statusCode,
    required this.reponse,
  });
}

class APIFailed {
  int statusCode;
  Object reponse;
  APIFailed({
    required this.statusCode,
    required this.reponse,
  });
}
