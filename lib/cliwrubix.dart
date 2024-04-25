import 'package:fexr/fexr.dart' as fexr;
import 'dart:math';

String salt() {
  var rng = Random();
  var codeUnits = List.generate(56, (index) {
    return rng.nextInt(33) + 89;
  });

  return String.fromCharCodes(codeUnits);
}

Future<void> newDID() async {
  print('Creating DID for Rubix');
  fexr.KeyPair keyPair = fexr.KeyPair();
  keyPair.privateKey;
  keyPair.publicKey;

  await fexr.RubixDID.create(salt()).then((value) {
    if (value) {
      print('DID created successfully');
    } else {
      print('Failed to create DID');
    }
  });
}

Future<void> signTransaction(
    String sender, String receiver, String nlsspriv, String ecdsapriv, double amount) async {
      print(
      'Signing transaction from $sender to $receiver for amount $amount');
    }

Future<void> checkBalance(String did) async {
  print('Checking balance for DID $did');
}

// Future<void> createRubixAddress() async {
//   if (widget.walletName != "") {
//     fexr.KeyPair keyPair = fexr.KeyPair();
//     keyPair.privateKey;
//     keyPair.publicKey;
//     await SecretController().newSecret(
//       secret: SecretModel(
//         name: 'Rubix',
//         alg: 'ecdsa',
//         key: keyPair.getPemEncodedPublicKey(),
//         val: keyPair.getPemEncodedPrivateKey(),
//       ),
//       secureStorage: true,
//     );

//     await RubixDID.create('${widget.walletName}+${salt()}').then((value) {
//       protocols.update('Rubix', (value) => true);
//     });
//   }
// }

// fexr.RubixService().initiateTransaction(
//                             privateKeyString: privateKeyString,
//                             gateway: gateway,
//                             accessToken: accessToken,
//                             initiatePayload: RequestTransactionPayloadReq(
//                                 receiver: widget.address,
//                                 tokenCount:
//                                     double.parse(inputAmountController.text),
//                                 comment: _commentController.text,
//                                 type: 2),
//                             imagePath:
//                                 '${appDir.path}/Encrypted/Temp/PrivateShare.png',
//                           )
