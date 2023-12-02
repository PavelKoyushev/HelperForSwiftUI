//
//  File.swift
//  
//
//  Created by Pavel Koyushev on 02.12.2023.
//

import SwiftUI

public extension View {
    
    func readPreference<K>(_ key: K.Type = K.self, to binding: Binding<K.Value>)
    -> some View where K : PreferenceKey, K.Value : Equatable {
        onPreferenceChange(key) { value in
            binding.wrappedValue = value
        }
    }
}
