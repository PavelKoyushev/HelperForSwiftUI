//
//  File.swift
//
//
//  Created by Pavel Koyushev on 25.11.2023.
//

import SwiftUI

public extension Image {
    
    func crop(_ alignment: Alignment = .center) -> some View {
        GeometryReader { geometry in
            self
                .resizable()
                .scaledToFill()
                .frame(width: geometry.size.width,
                       height: geometry.size.height,
                       alignment: alignment)
                .clipped()
        }
    }
}
