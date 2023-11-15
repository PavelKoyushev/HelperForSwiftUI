//
//  If.swift
//  
//
//  Created by Pavel Koyushev on 15.11.2023.
//

import SwiftUI

public extension View {
    
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
