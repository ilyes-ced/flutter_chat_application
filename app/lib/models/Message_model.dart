class MessageModel {
  final int id, sender, reciever;
  final String msg, type, status;
  final bool isSender;

  MessageModel({
    this.id = 0,
    this.msg = '',
    this.sender = 0,
    this.reciever = 0,
    this.type = '',
    this.status = '',
    this.isSender = false,
  });
}
