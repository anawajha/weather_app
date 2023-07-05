
enum RequestHeader {
  authorization('authorization'),
  multipart('multipart'),
  urlencoded('urlencoded'),
  applicationJson('ApplicationJson'),
  authorizationApplicationJson('authorizationApplicationJson'),
  default_('default');

  Map<String, dynamic> get headers => (_headers[value]!);
  
  final String value;

  const RequestHeader(this.value,);
}

Map<String, Map<String, dynamic>> _headers = {
      RequestHeader.authorization.value : {},
      RequestHeader.authorizationApplicationJson.value : {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      RequestHeader.multipart.value : {
        'Content-Type': 'multipart/form-data',
        'Accept': 'application/json',
      },
      RequestHeader.urlencoded.value : {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Accept': 'application/json',
      },
      RequestHeader.applicationJson.value : {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
       RequestHeader.default_.value : {},
};
