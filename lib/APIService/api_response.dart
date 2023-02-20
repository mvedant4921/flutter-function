class APISuccess {
  int statusCode;
  Object response;
  APISuccess({
    required this.statusCode,
    required this.response,
  });
}

class APIFailed {
  int statusCode;
  Object response;
  APIFailed({
    required this.statusCode,
    required this.response,
  });
}
