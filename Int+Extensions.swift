//
//  Int+Extensions.swift
//  Advanced Clock 2.0
//
//  Created by Dean Paulson on 5/28/20.
//  Copyright © 2020 vensolera. All rights reserved.
//

import Foundation

extension Int {
    /// ---
    ///    var n: Int = 5
    ///    n = n.safeString
    ///    print(n)    // "05"
    /// ---
    var safeString: String {
        return self >= 10 ? "\(self)" : "0\(self)"
    }
}
