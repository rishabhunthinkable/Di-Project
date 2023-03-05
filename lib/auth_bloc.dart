
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvents,AuthStates>{

  AuthBloc():super(InitialState());

}





abstract  class AuthStates{}
class InitialState extends AuthStates{}
abstract class AuthEvents{}