part of 'contact_bloc.dart';

@immutable
abstract class ContactState {
  const ContactState();

  List<Object> get props => [];
}

class ContactInitial extends ContactState {}


class ContactLoaded extends ContactState {
  var items = [];
  ContactLoaded({required this.items});
}
