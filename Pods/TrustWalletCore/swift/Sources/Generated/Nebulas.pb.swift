// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Nebulas.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Input data necessary to create a signed transaction.
public struct TW_Nebulas_Proto_SigningInput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// sender's address.
  public var fromAddress: String = String()

  /// Chain identifier (256-bit number)
  public var chainID: Data = SwiftProtobuf.Internal.emptyData

  /// Nonce (256-bit number)
  public var nonce: Data = SwiftProtobuf.Internal.emptyData

  /// Gas price (256-bit number)
  public var gasPrice: Data = SwiftProtobuf.Internal.emptyData

  /// Gas limit (256-bit number)
  public var gasLimit: Data = SwiftProtobuf.Internal.emptyData

  /// Recipient's address.
  public var toAddress: String = String()

  /// Amount to send in wei, 1 NAS = 10^18 Wei (256-bit number)
  public var amount: Data = SwiftProtobuf.Internal.emptyData

  /// Timestamp to create transaction (256-bit number)
  public var timestamp: Data = SwiftProtobuf.Internal.emptyData

  /// Optional payload
  public var payload: String = String()

  /// Private key.
  public var privateKey: Data = SwiftProtobuf.Internal.emptyData

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Transaction signing output.
public struct TW_Nebulas_Proto_SigningOutput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var algorithm: UInt32 = 0

  public var signature: Data = SwiftProtobuf.Internal.emptyData

  public var raw: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_Nebulas_Proto_Data {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var type: String = String()

  public var payload: Data = SwiftProtobuf.Internal.emptyData

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Raw transaction data
public struct TW_Nebulas_Proto_RawTransaction {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var hash: Data {
    get {return _storage._hash}
    set {_uniqueStorage()._hash = newValue}
  }

  public var from: Data {
    get {return _storage._from}
    set {_uniqueStorage()._from = newValue}
  }

  public var to: Data {
    get {return _storage._to}
    set {_uniqueStorage()._to = newValue}
  }

  public var value: Data {
    get {return _storage._value}
    set {_uniqueStorage()._value = newValue}
  }

  public var nonce: UInt64 {
    get {return _storage._nonce}
    set {_uniqueStorage()._nonce = newValue}
  }

  public var timestamp: Int64 {
    get {return _storage._timestamp}
    set {_uniqueStorage()._timestamp = newValue}
  }

  public var data: TW_Nebulas_Proto_Data {
    get {return _storage._data ?? TW_Nebulas_Proto_Data()}
    set {_uniqueStorage()._data = newValue}
  }
  /// Returns true if `data` has been explicitly set.
  public var hasData: Bool {return _storage._data != nil}
  /// Clears the value of `data`. Subsequent reads from it will return its default value.
  public mutating func clearData() {_uniqueStorage()._data = nil}

  public var chainID: UInt32 {
    get {return _storage._chainID}
    set {_uniqueStorage()._chainID = newValue}
  }

  public var gasPrice: Data {
    get {return _storage._gasPrice}
    set {_uniqueStorage()._gasPrice = newValue}
  }

  public var gasLimit: Data {
    get {return _storage._gasLimit}
    set {_uniqueStorage()._gasLimit = newValue}
  }

  public var alg: UInt32 {
    get {return _storage._alg}
    set {_uniqueStorage()._alg = newValue}
  }

  public var sign: Data {
    get {return _storage._sign}
    set {_uniqueStorage()._sign = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "TW.Nebulas.Proto"

extension TW_Nebulas_Proto_SigningInput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningInput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "from_address"),
    2: .standard(proto: "chain_id"),
    3: .same(proto: "nonce"),
    4: .standard(proto: "gas_price"),
    5: .standard(proto: "gas_limit"),
    6: .standard(proto: "to_address"),
    7: .same(proto: "amount"),
    8: .same(proto: "timestamp"),
    9: .same(proto: "payload"),
    10: .standard(proto: "private_key"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.fromAddress)
      case 2: try decoder.decodeSingularBytesField(value: &self.chainID)
      case 3: try decoder.decodeSingularBytesField(value: &self.nonce)
      case 4: try decoder.decodeSingularBytesField(value: &self.gasPrice)
      case 5: try decoder.decodeSingularBytesField(value: &self.gasLimit)
      case 6: try decoder.decodeSingularStringField(value: &self.toAddress)
      case 7: try decoder.decodeSingularBytesField(value: &self.amount)
      case 8: try decoder.decodeSingularBytesField(value: &self.timestamp)
      case 9: try decoder.decodeSingularStringField(value: &self.payload)
      case 10: try decoder.decodeSingularBytesField(value: &self.privateKey)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.fromAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.fromAddress, fieldNumber: 1)
    }
    if !self.chainID.isEmpty {
      try visitor.visitSingularBytesField(value: self.chainID, fieldNumber: 2)
    }
    if !self.nonce.isEmpty {
      try visitor.visitSingularBytesField(value: self.nonce, fieldNumber: 3)
    }
    if !self.gasPrice.isEmpty {
      try visitor.visitSingularBytesField(value: self.gasPrice, fieldNumber: 4)
    }
    if !self.gasLimit.isEmpty {
      try visitor.visitSingularBytesField(value: self.gasLimit, fieldNumber: 5)
    }
    if !self.toAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.toAddress, fieldNumber: 6)
    }
    if !self.amount.isEmpty {
      try visitor.visitSingularBytesField(value: self.amount, fieldNumber: 7)
    }
    if !self.timestamp.isEmpty {
      try visitor.visitSingularBytesField(value: self.timestamp, fieldNumber: 8)
    }
    if !self.payload.isEmpty {
      try visitor.visitSingularStringField(value: self.payload, fieldNumber: 9)
    }
    if !self.privateKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.privateKey, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Nebulas_Proto_SigningInput, rhs: TW_Nebulas_Proto_SigningInput) -> Bool {
    if lhs.fromAddress != rhs.fromAddress {return false}
    if lhs.chainID != rhs.chainID {return false}
    if lhs.nonce != rhs.nonce {return false}
    if lhs.gasPrice != rhs.gasPrice {return false}
    if lhs.gasLimit != rhs.gasLimit {return false}
    if lhs.toAddress != rhs.toAddress {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.timestamp != rhs.timestamp {return false}
    if lhs.payload != rhs.payload {return false}
    if lhs.privateKey != rhs.privateKey {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Nebulas_Proto_SigningOutput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningOutput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "algorithm"),
    2: .same(proto: "signature"),
    3: .same(proto: "raw"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt32Field(value: &self.algorithm)
      case 2: try decoder.decodeSingularBytesField(value: &self.signature)
      case 3: try decoder.decodeSingularStringField(value: &self.raw)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.algorithm != 0 {
      try visitor.visitSingularUInt32Field(value: self.algorithm, fieldNumber: 1)
    }
    if !self.signature.isEmpty {
      try visitor.visitSingularBytesField(value: self.signature, fieldNumber: 2)
    }
    if !self.raw.isEmpty {
      try visitor.visitSingularStringField(value: self.raw, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Nebulas_Proto_SigningOutput, rhs: TW_Nebulas_Proto_SigningOutput) -> Bool {
    if lhs.algorithm != rhs.algorithm {return false}
    if lhs.signature != rhs.signature {return false}
    if lhs.raw != rhs.raw {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Nebulas_Proto_Data: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Data"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "payload"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.type)
      case 2: try decoder.decodeSingularBytesField(value: &self.payload)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.type.isEmpty {
      try visitor.visitSingularStringField(value: self.type, fieldNumber: 1)
    }
    if !self.payload.isEmpty {
      try visitor.visitSingularBytesField(value: self.payload, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Nebulas_Proto_Data, rhs: TW_Nebulas_Proto_Data) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.payload != rhs.payload {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Nebulas_Proto_RawTransaction: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RawTransaction"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "hash"),
    2: .same(proto: "from"),
    3: .same(proto: "to"),
    4: .same(proto: "value"),
    5: .same(proto: "nonce"),
    6: .same(proto: "timestamp"),
    7: .same(proto: "data"),
    8: .standard(proto: "chain_id"),
    9: .standard(proto: "gas_price"),
    10: .standard(proto: "gas_limit"),
    11: .same(proto: "alg"),
    12: .same(proto: "sign"),
  ]

  fileprivate class _StorageClass {
    var _hash: Data = SwiftProtobuf.Internal.emptyData
    var _from: Data = SwiftProtobuf.Internal.emptyData
    var _to: Data = SwiftProtobuf.Internal.emptyData
    var _value: Data = SwiftProtobuf.Internal.emptyData
    var _nonce: UInt64 = 0
    var _timestamp: Int64 = 0
    var _data: TW_Nebulas_Proto_Data? = nil
    var _chainID: UInt32 = 0
    var _gasPrice: Data = SwiftProtobuf.Internal.emptyData
    var _gasLimit: Data = SwiftProtobuf.Internal.emptyData
    var _alg: UInt32 = 0
    var _sign: Data = SwiftProtobuf.Internal.emptyData

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _hash = source._hash
      _from = source._from
      _to = source._to
      _value = source._value
      _nonce = source._nonce
      _timestamp = source._timestamp
      _data = source._data
      _chainID = source._chainID
      _gasPrice = source._gasPrice
      _gasLimit = source._gasLimit
      _alg = source._alg
      _sign = source._sign
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularBytesField(value: &_storage._hash)
        case 2: try decoder.decodeSingularBytesField(value: &_storage._from)
        case 3: try decoder.decodeSingularBytesField(value: &_storage._to)
        case 4: try decoder.decodeSingularBytesField(value: &_storage._value)
        case 5: try decoder.decodeSingularUInt64Field(value: &_storage._nonce)
        case 6: try decoder.decodeSingularInt64Field(value: &_storage._timestamp)
        case 7: try decoder.decodeSingularMessageField(value: &_storage._data)
        case 8: try decoder.decodeSingularUInt32Field(value: &_storage._chainID)
        case 9: try decoder.decodeSingularBytesField(value: &_storage._gasPrice)
        case 10: try decoder.decodeSingularBytesField(value: &_storage._gasLimit)
        case 11: try decoder.decodeSingularUInt32Field(value: &_storage._alg)
        case 12: try decoder.decodeSingularBytesField(value: &_storage._sign)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._hash.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._hash, fieldNumber: 1)
      }
      if !_storage._from.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._from, fieldNumber: 2)
      }
      if !_storage._to.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._to, fieldNumber: 3)
      }
      if !_storage._value.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._value, fieldNumber: 4)
      }
      if _storage._nonce != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._nonce, fieldNumber: 5)
      }
      if _storage._timestamp != 0 {
        try visitor.visitSingularInt64Field(value: _storage._timestamp, fieldNumber: 6)
      }
      if let v = _storage._data {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      }
      if _storage._chainID != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._chainID, fieldNumber: 8)
      }
      if !_storage._gasPrice.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._gasPrice, fieldNumber: 9)
      }
      if !_storage._gasLimit.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._gasLimit, fieldNumber: 10)
      }
      if _storage._alg != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._alg, fieldNumber: 11)
      }
      if !_storage._sign.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._sign, fieldNumber: 12)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Nebulas_Proto_RawTransaction, rhs: TW_Nebulas_Proto_RawTransaction) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._hash != rhs_storage._hash {return false}
        if _storage._from != rhs_storage._from {return false}
        if _storage._to != rhs_storage._to {return false}
        if _storage._value != rhs_storage._value {return false}
        if _storage._nonce != rhs_storage._nonce {return false}
        if _storage._timestamp != rhs_storage._timestamp {return false}
        if _storage._data != rhs_storage._data {return false}
        if _storage._chainID != rhs_storage._chainID {return false}
        if _storage._gasPrice != rhs_storage._gasPrice {return false}
        if _storage._gasLimit != rhs_storage._gasLimit {return false}
        if _storage._alg != rhs_storage._alg {return false}
        if _storage._sign != rhs_storage._sign {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
