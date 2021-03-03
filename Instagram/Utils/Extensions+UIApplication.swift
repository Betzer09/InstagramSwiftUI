//
//  Extensions.swift
//  Instagram
//
//  Created by Austin Betzer on 3/3/21.
//

import Foundation

import UIKit

extension UIApplication {
    /**
     Dismisses the keyboard
     */
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
