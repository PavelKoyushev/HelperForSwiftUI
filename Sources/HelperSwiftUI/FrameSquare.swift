//
//  FrameSquare.swift
//
//
//  Created by Pavel Koyushev on 17.11.2023.
//

import SwiftUI

public extension View {
    
    func frameSquare(side: CGFloat, alignment: Alignment = .center) -> some View {
        self
            .frame(width: side, height: side, alignment: alignment)
    }
}
