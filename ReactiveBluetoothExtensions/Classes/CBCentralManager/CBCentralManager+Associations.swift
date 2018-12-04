//
//  CBCentralManager+Associations.swift
//  ReactiveBluetoothExtensions
//
//  Created by George Kaimakas on 02/03/2018.
//

import CoreBluetooth

extension CBCentralManager {
    internal class Associations {
        internal static var delegate = "com.gkaimakas.ReactiveBluetoothExtensions.CBCentralManager.delegate"
        internal static var isScanning = "com.gkaimakas.ReactiveBluetoothExtensions.CBCentralManager.isScanning"
        internal static var state = "com.gkaimakas.ReactiveBluetoothExtensions.CBCentralManager.state"
        internal static var didStopScan = "com.gkaimakas.ReactiveBluetoothExtensions.CBCentralManager.didStopScan"
    }
}
