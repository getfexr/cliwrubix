Future<void> newDID() async {
  print('Creating DID for Rubix');
}

Future<void> signTransaction(
    String sender, String receiver, String nlsspriv, String ecdsapriv) async {
      print(
      'Signing transaction for sender $sender, receiver $receiver, NLSS private share $nlsspriv, ECDSA private key $ecdsapriv');
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
