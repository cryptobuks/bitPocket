// Copyright © 2017-2019 Trust Wallet.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.
//
// This is a GENERATED FILE, changes made here WILL BE LOST.
//

import Foundation

public final class NULSSigner {

    public static func plan(purpose: TW_NULS_Proto_TransactionPurpose) -> TW_NULS_Proto_TransactionPlan {
        let purposeData = TWDataCreateWithNSData(try! purpose.serializedData())
        defer {
            TWDataDelete(purposeData)
        }
        let resultData = TWDataNSData(TWNULSSignerPlan(purposeData))
        return try! TW_NULS_Proto_TransactionPlan(serializedData: resultData)
    }

    public static func sign(plan: TW_NULS_Proto_TransactionPlan) -> TW_NULS_Proto_SigningOutput {
        let planData = TWDataCreateWithNSData(try! plan.serializedData())
        defer {
            TWDataDelete(planData)
        }
        let resultData = TWDataNSData(TWNULSSignerSign(planData))
        return try! TW_NULS_Proto_SigningOutput(serializedData: resultData)
    }

    let rawValue: OpaquePointer

    init(rawValue: OpaquePointer) {
        self.rawValue = rawValue
    }


}
