abstract class CommonEvent {}

class ThrowExceptionEvent extends CommonEvent {
  final Object exception;
  final Type blocType;

  ThrowExceptionEvent(this.exception, this.blocType);
}
