//
//  Color-Extension.swift
//  ColorShift
//
//  Created by Brett Koster on 9/20/23.
//

import SwiftUI

extension Color {
    static func random() -> Color {
        // This initializer keeps Saturation and brightness at 1.
        // You could experiment with randomizing the saturation and brightness in the future
        Color(hue: Double.random(in: 0...1), saturation: 1, brightness: 1)
    }
}
