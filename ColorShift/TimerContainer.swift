//
//  TimerContainer.swift
//  ColorShift
//
//  Created by Brett Koster on 9/20/23.
//

import Foundation

@Observable
/// An object that contains a timer which can be shared with multiple ColorShift objects
class TimerContainer {
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
}
