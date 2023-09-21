//
//  ContentView.swift
//  ColorShift
//
//  Created by Brett Koster on 9/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Grid {
            GridRow {
                ColorShiftView(speed: .verySlow)
            }
            
            GridRow {
                ColorShiftView(speed: .slow)
            }
            
            GridRow {
                ColorShiftView(speed: .fast)
            }
            
            GridRow {
                ColorShiftView(speed: .veryFast)
            }
            
            GridRow {
                ColorShiftView(speed: .extremelyFast)
            }
        }
        
    }
}

//#Preview {
//    ContentView()
//}
