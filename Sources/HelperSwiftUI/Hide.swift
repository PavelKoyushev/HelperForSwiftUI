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
    
    @ViewBuilder
    func hide(_ condition: VisibleState) -> some View {
        switch condition {
        case .removed:
            EmptyView()
        default:
            opacity(condition == .visible ? 1 : 0)
        }
    }
}

public enum VisibleState {
    
    case visible
    case invisible
    case removed
}
