import UIKit
import BitcoinKit

//Test Wallet
let privateKey = "715393109d93d0c4d68c02c152a1776fb130a685539b1d4373a48c62f07b4e35"
let address = "mkSFm1o34jXwZGVudGtCBwj2QNbzZxZjDd"
let mnemonicArray = ["kiwi", "report", "marble", "inflict", "shell", "say", "train", "kingdom", "session", "proof", "right", "fire"]

//URL
let BASE_URL = "https://blockchain.info/"

//Generate HDWallet with mnemonic
class BitcoinWallet {
    
    static let instance = BitcoinWallet()
    
    public private(set) var hdwallet: HDWallet?
    public private(set) var wallet: Wallet?
    
    func getHDWallet() {
        let mnemonic = try! Mnemonic.generate()
        let seed = Mnemonic.seed(mnemonic: mnemonic)
        self.hdwallet = HDWallet(seed: seed, network: .testnetBTC)
    }
    
    func getAddress() {
        let privateKey = PrivateKey.init(network: .testnetBTC, isPublicKeyCompressed: true)
        self.wallet = Wallet(privateKey: privateKey)
        let pubKey = wallet?.publicKey
        let address = pubKey?.toLegacy()
        print(address as Any)
    }
}

func importWallet() {
    
}

func getWallet() {
    
}

func getTxHistory(withAddress address: String, completion: @escaping ([Codable])) {
    
}






