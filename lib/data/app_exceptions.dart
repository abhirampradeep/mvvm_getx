class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  String toString() {
    return '$_prefix$_message';
  }
}

class InternetException extends AppExceptions {
  InternetException([String? message]) : super(message, 'No Internettttttttt');
}

class RequestTimeout extends AppExceptions {
  RequestTimeout([String? message]) : super(message, 'request time out');
}

class ServerException extends AppExceptions {
  ServerException([String? message]) : super(message, 'Internal Server error');
}

class Internalexception extends AppExceptions {
  Internalexception([String? message]) : super(message, 'error recieving');
}

class NodataException extends AppExceptions {
  NodataException([String? message]) : super(message, 'No data Found');
}
