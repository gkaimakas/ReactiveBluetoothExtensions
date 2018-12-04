//
//  CBCharacteristic+Associations.swift
//  ReactiveBluetoothExtensions
//
//  Created by George Kaimakas on 04/03/2018.
//

import CoreBluetooth

extension CBCharacteristic {
    internal class Associations {
        internal static var value = "com.gkaimakas.ReactiveBluetoothExtensions.CBCharacteristic.value"
        internal static var descriptors = "com.gkaimakas.ReactiveBluetoothExtensions.CBCharacteristic.descriptors"
        internal static var properties = "com.gkaimakas.ReactiveBluetoothExtensions.CBCharacteristic.properties"
        internal static var isNotifying = "com.gkaimakas.ReactiveBluetoothExtensions.CBCharacteristic.isNotifying"
    }
}
