//
//  Extensions.swift
//  purge
//
//  Created by Gianni Settino on 2017-01-06.
//  Copyright © 2017 Milton and Parc. All rights reserved.
//

import UIKit

extension UIView {
    
    func addSubviewForAutolayout(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
    }
}

extension NSLayoutAnchor {
    
    func activateConstraint(equalTo anchor: NSLayoutAnchor) {
        constraint(equalTo: anchor).isActive = true
    }
}
