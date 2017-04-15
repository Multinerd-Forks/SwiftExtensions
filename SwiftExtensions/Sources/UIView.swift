//
//  UIView.swift
//  SwiftExtensions
//
//  Created by lw0717 on 17/4/15.
//  Copyright © 2017年 lw0717. All rights reserved.
//

import UIKit

extension UIView {
    /// Returns the controller
    public func inController() -> UIViewController? {
        for view in sequence(first: self.superview, next: { $0?.superview }) {
            if let responder = view?.next {
                if responder.isKind(of: UIViewController.self) {
                    return responder as? UIViewController
                }
            }
        }
        return nil
    }
}
