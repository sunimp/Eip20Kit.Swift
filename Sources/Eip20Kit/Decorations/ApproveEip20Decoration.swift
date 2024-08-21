//
//  ApproveEip20Decoration.swift
//  Eip20Kit
//
//  Created by Sun on 2024/8/21.
//

import Foundation

import BigInt
import EvmKit

public class ApproveEip20Decoration: TransactionDecoration {
    public let contractAddress: Address
    public let spender: Address
    public let value: BigUInt

    init(contractAddress: Address, spender: Address, value: BigUInt) {
        self.contractAddress = contractAddress
        self.spender = spender
        self.value = value

        super.init()
    }

    override public func tags() -> [TransactionTag] {
        [
            TransactionTag(type: .approve, protocol: .eip20, contractAddress: contractAddress),
        ]
    }
}
