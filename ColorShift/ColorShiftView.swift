//
//  ColorShiftView.swift
//  ColorShift
//
//  Created by Brett Koster on 9/20/23.
//

import SwiftUI

struct ColorShiftView: View {
    // MARK: Initializers
    /// Default Initilizer with a very slow color shift speed
    /// - Parameter speed: ShiftSpeed enum
    init(speed: ShiftSpeed = .verySlow) {
        self.speed = speed.rawValue
    }
    
    /// For those who want to experiment with their own speed
    /// 1 is very slow, extremely fast is 50. Have fun!
    /// - Parameter rawSpeed: Double
    init(rawSpeed: Double) {
        self.speed = rawSpeed
    }
    
    // MARK: Timer Properties
    let timerContainer = TimerContainer()
    
    // MARK: Color Properties
    @State private var rotation: Double = Double.random(in: 0...200)
    var firstColor: Color = .random()
    var secondColor: Color = .random()
    var speed: Double
    
    // MARK: View
    var body: some View {
        
        Rectangle()
            .fill(LinearGradient(
                colors: [firstColor, secondColor],
                startPoint: .bottomLeading,
                endPoint: .topTrailing)
            )
            .hueRotation((.degrees(rotation * speed)))
        .onReceive(timerContainer.timer, perform: { _ in
            rotation += 1
        })
    }
}
