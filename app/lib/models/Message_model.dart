class MessageModel {
  final int id, sender, reciever;
  final String msg, type, status;

  MessageModel({
    this.id = 0,
    this.msg = '',
    this.sender = 0,
    this.reciever = 0,
    this.type = '',
    this.status = '',
  });
}
