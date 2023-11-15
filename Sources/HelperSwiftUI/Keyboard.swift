//
//  Keyboard.swift
//  
//
//  Created by Pavel Koyushev on 15.11.2023.
//

import SwiftUI

public extension View {
    
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder),
                                        to: nil,
                                        from: nil,
                                        for: nil)
    }
    
    func showKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.becomeFirstResponder),
                                        to: nil,
                                        from: nil,
                                        for: nil)
    }
    
    func onTapHideKeyboard() -> some View {
        onTapGesture(perform: hideKeyboard)
    }
}
