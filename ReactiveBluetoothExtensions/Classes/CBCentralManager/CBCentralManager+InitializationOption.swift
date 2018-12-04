//
//  CBCentralManager+InitializationOption.swift
//  ReactiveBluetoothExtensions
//
//  Created by George Kaimakas on 06/03/2018.
//

import CoreBluetooth
import Foundation

extension CBCentralManager {
    public enum InitializationOption {
        
        case showPowerAlert(Bool)
        case restoreIdentifier(UUID)

        public var key: String {
            switch self {
            case .showPowerAlert(_): return CBCentralManagerOptionShowPowerAlertKey
            case .restoreIdentifier(_): return CBCentralManagerOptionRestoreIdentifierKey
            }
        }

        public var value: Any {
            switch self {
            case .showPowerAlert(let value): return value as Any
            case .restoreIdentifier(let uuids): return uuids as Any
            }
        }
    }
}

extension CBCentralManager.InitializationOption {
    public static func map(dictionary: [String: Any]) -> [CBCentralManager.InitializationOption] {
        return dictionary
            .map { (key, value) -> CBCentralManager.InitializationOption? in
                if key == CBCentralManagerOptionShowPowerAlertKey, let value = value as? Bool {
                    return .showPowerAlert(value)
                }
                
                if key == CBCentralManagerOptionRestoreIdentifierKey, let value = value as? UUID {
                    return .restoreIdentifier(value)
                }
                
                return nil
            }
            .filter { $0 != nil }
            .map { $0! }
    }
}

extension CBCentralManager.InitializationOption: Equatable {
    public static func ==(lhs: CBCentralManager.InitializationOption, rhs: CBCentralManager.InitializationOption) -> Bool {
        switch (lhs, rhs) {
        case (.showPowerAlert(let a), .showPowerAlert(let b)): return a == b
        case (.restoreIdentifier(let a), .restoreIdentifier(let b)): return a == b
        default: return false
        }
    }
}

extension CBCentralManager.InitializationOption: Hashable {
    public var hashValue: Int {
        switch self {
        case .showPowerAlert(_): return 2_000
        case .restoreIdentifier(_): return 20_000
        }
    }
}

extension Set where Element == CBCentralManager.InitializationOption {
    public func merge() -> [String: Any] {

        return reduce([String: Any]() ) { (partialResult, item) -> [String: Any] in
            var result = partialResult
            result[item.key] = item.value
            return result
        }
    }
}
