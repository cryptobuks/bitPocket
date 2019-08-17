import UIKit
import BitcoinKit

let privateKey = "715393109d93d0c4d68c02c152a1776fb130a685539b1d4373a48c62f07b4e35"
let address = "mkSFm1o34jXwZGVudGtCBwj2QNbzZxZjDd"

func getAddress() {
    let privateKey = PrivateKey.init(network: .testnetBTC, isPublicKeyCompressed: true)
    let pubKey = privateKey.publicKey()
    let address = pubKey.toLegacy()
    print("Address:\(address.description): PrivateKey:\(privateKey.description)")
}


