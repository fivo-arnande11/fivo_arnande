
part of 'contact_bloc.dart';

@immutable
abstract class ContactEvent {
  const ContactEvent();

  List<Object> get props => [];
}

class InitializeContactEvent extends ContactEvent {}


class addContact extends ContactEvent {
  ContactModel contactModel;

  addContact({required this.contactModel});
}


class deleteContact extends ContactEvent {
  ContactModel contactModel;
 deleteContact({required this.contactModel});
}
