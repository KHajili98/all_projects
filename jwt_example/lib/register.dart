typedef OnRegister<Response, Body> = Response Function(Body body);

class Register<Response, Body> {
  String endPoint;
  OnRegister<Response, Body> onRegister;

  Register({
    required this.endPoint,
    required this.onRegister,
  });
}
