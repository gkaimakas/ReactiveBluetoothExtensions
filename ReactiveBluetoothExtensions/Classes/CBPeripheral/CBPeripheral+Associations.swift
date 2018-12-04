//
//  CBPeripheral+Associations.swift
//  ReactiveBluetoothExtensions
//
//  Created by George Kaimakas on 02/03/2018.
//

import CoreBluetooth

extension CBPeripheral {
    internal class Associations {
        internal static var centralManager = "com.gkaimakas.ReactiveBluetoothExtensions.CBPeripheral.centralManager"
        internal static var delegate = "com.gkaimakas.ReactiveBluetoothExtensions.CBPeripheral.delegate"
        internal static var name = "com.gkaimakas.ReactiveBluetoothExtensions.CBPeripheral.name"
        internal static var identifier = "com.gkaimakas.ReactiveBluetoothExtensions.CBPeripheral.identifier"
        internal static var state = "com.gkaimakas.ReactiveBluetoothExtensions.CBPeripheral.state"
        internal static var services = "com.gkaimakas.ReactiveBluetoothExtensions.CBPeripheral.services"
        internal static var discovered = "com.gkaimakas.ReactiveBluetoothExtensions.CBPeripheral.discovered"
    }
}
