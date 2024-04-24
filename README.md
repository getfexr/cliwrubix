This executable can perform three tasks:

1. **cliwrubix new -peer**: (optionally provide existing peerID instead of -peer / just tag to create on new Peer ID) It can generate a Rubix DID from a given PeerID or create a new PeerID and generate a Rubix DID. This will create a new DID with NLSS Private Shares and ECDSA Private Key. All the keys are stored in a directory named after the DID.
2. **cliwrubix sign -sender [sender PeerID.DID hash] -receiver [receiver PeerID.DID hash] -nlsspriv [Image path of NLSS private share] -ecdsapriv [ECDSA private key as plain text]**: It can sign a Rubix transaction using a given amount, sender's Rubix DID (in PeerID.DID format), receiver's Rubix DID (in PeerID.DID format), sender's ECDSA private key, and sender's NLSS private share image path. Command will append the completed transaction ID to the log.txt file in the same directory as the executable.
3. **cliwrubix bal [PeerID.DID as plain text]**: It can check balance of a Rubix DID using the Rubix DID (in PeerID.DID format).

    Use sky to broadcast the signed transaction to the Rubix network. Sky has to be installed and running alongside the Rubix executable in the same VM. cliwrubix communicates to remote VM hosting Sky and rubixgoplatform via gRPC protos similar to the self-custody wallet.
