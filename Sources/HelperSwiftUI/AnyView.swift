//
//  File.swift
//  
//
//  Created by Pavel Koyushev on 17.01.2024.
//

import SwiftUI

public extension View {
    
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}
