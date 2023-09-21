//
//  SpeedShift.swift
//  ColorShift
//
//  Created by Brett Koster on 9/20/23.
//

import Foundation

/// Easy access to initialize speed of ColorShift.
/// Takes some guess work out of how fast the shifting occurs
enum ShiftSpeed: Double {
    case verySlow = 1
    case slow = 5
    case fast = 10
    case veryFast = 25
    case extremelyFast = 50
}
