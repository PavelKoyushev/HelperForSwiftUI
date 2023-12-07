//
//  WillAppearHandler.swift
//
//
//  Created by Pavel Koyushev on 07.12.2023.
//

import SwiftUI

struct WillAppearHandler: UIViewControllerRepresentable {
    
    func makeCoordinator() -> WillAppearHandler.Coordinator {
        Coordinator(onWillAppear: onWillAppear)
    }

    let onWillAppear: () -> Void

    func makeUIViewController(context: UIViewControllerRepresentableContext<WillAppearHandler>) -> UIViewController {
        context.coordinator
    }

    func updateUIViewController(_ uiViewController: UIViewController,
                                context: UIViewControllerRepresentableContext<WillAppearHandler>) {
    }

    typealias UIViewControllerType = UIViewController

    class Coordinator: UIViewController {
        
        let onWillAppear: () -> Void

        init(onWillAppear: @escaping () -> Void) {
            self.onWillAppear = onWillAppear
            super.init(nibName: nil, bundle: nil)
        }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            DispatchQueue.main.async { [weak self] in
                self?.onWillAppear()
            }
        }
    }
}

struct WillAppearModifier: ViewModifier {
    
    let perform: () -> Void

    func body(content: Content) -> some View {
        content
            .background(WillAppearHandler(onWillAppear: perform))
    }
}

public extension View {
    
    func onWillAppear(_ perform: @escaping () -> Void) -> some View {
        self.modifier(WillAppearModifier(perform: perform))
    }
}

