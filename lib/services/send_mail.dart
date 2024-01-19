
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

Future <void> sendMail({
  required String EmailId,
  required String password,
  required String recipient,
  required String name,
  required String email,
  required String message,
}) async {


  final smtpServer = gmail(EmailId,password);
final emailMessage = Message()
    ..from = Address(EmailId)
    ..recipients.add(recipient)
    ..subject = 'Contact Form Submission'
    ..text = '''
    Name: $name
    Email: $email
    Message: $message
    ''';

  try {
    await send(emailMessage, smtpServer);
  } catch (e) {
    print('Error: $e');
    // Handle error or log it as needed
  }
}

  
