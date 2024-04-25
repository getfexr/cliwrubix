import 'package:cliwrubix/cliwrubix.dart' as cliwrubix;
import 'dart:io';

Future<void> main(List<String> arguments) async {
  // initHive();

  var keepRunning = false;
  if(arguments.isEmpty) {
    showHelp();
  } else {
    switch (arguments[0]) {
      case 'new':
        // cliwrubix.createRubixAddress();
        await cliwrubix.newDID();
        keepRunning = true;
        break;
      case 'sign':
        if (arguments.length == 9) {
          // cliwrubix.signTransaction(arguments[2], arguments[4], arguments[6], arguments[8]);
          if (arguments.length == 9 && arguments[1] == '-sender' && arguments[3] == '-receiver' && arguments[5] == '-nlsspriv' && arguments[7] == '-ecdsapriv') {
            //? dart run bin/cliwrubix.dart sign -sender sender.DID -receiver receiver.DID -nlsspriv NLSSIMGPATH -ecdsapriv ECDSASTRING
            await cliwrubix.signTransaction(
                arguments[2], arguments[4], arguments[6], arguments[8]);

          } else {
            print('Invalid number of arguments or incorrect flags or their order used. \n Please use the correct format.\n');
          }
        } else {
          print('Invalid number of arguments');
        }
        break;
      case 'bal':
        if (arguments.length == 2) {
          // cliwrubix.checkBalance(arguments[1]);
          await cliwrubix.checkBalance(arguments[1]);
        } else {
          print('Invalid number of arguments');
        }
        break;
      case 'help':
        showHelp();
        break;
      default:
        print('Invalid command');
        showHelp();
    }
    if (!keepRunning) {
      exit(0);
    }
  }
}

void showHelp() {
  print('\nFexr Command Line Wallet for Rubix - Help\n');
  print('Usage: cliwrubix new - Generate a Rubix DID from a PeerID selected at the assigned Sky running alongside rubixgoplatform.');
  print('Usage: cliwrubix sign -sender [sender PeerID.DID hash] -receiver [receiver PeerID.DID hash] -nlsspriv [Image path of NLSS private share] -ecdsapriv [ECDSA private key as plain text] - Sign a Rubix transaction for a given amount and other parameters');
  print('Usage: cliwrubix bal [PeerID.DID as plain text] - Check balance for a DID');
  print('Usage: cliwrubix help - View the help menu');
}