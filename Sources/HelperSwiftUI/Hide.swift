//
//  Hide.swift
//
//
//  Created by Pavel Koyushev on 21.11.2023.
//

import SwiftUI

public extension View {
    
    func hide(_ condition: Bool) -> some View {
        opacity(condition ? 0 : 1)
    }
}
