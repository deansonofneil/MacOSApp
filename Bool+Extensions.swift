//
//  Bool+Extensions.swift
//  Advanced Clock 2.0
//
//  Created by Dean Paulson on 5/28/20.
//  Copyright © 2020 vensolera. All rights reserved.
//

import Foundation
import AppKit

extension Bool {
    var stateValue: NSControl.StateValue {
        return self.toStateValue()
    }
    
    private func toStateValue() -> NSControl.StateValue {
        return self ? .on : .off
    }
}
