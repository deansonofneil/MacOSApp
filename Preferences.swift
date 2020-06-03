//
//  Preferences.swift
//  Advanced Clock 2.0
//
//  Created by Dean Paulson on 5/28/20.
//  Copyright © 2020 vensolera. All rights reserved.
//

import Foundation

fileprivate let defaults: UserDefaults = UserDefaults.standard

struct Preferences {
    static var useFlashDots: Bool {
        get {
            return defaults.bool(forKey: .useFlashDots)
        }
        
        set {
            defaults.set(newValue, forKey: .useFlashDots)
            defaults.synchronize()
        }
    }
    
    static var showDockIcon: Bool {
        get {
            return defaults.bool(forKey: .showDockIcon)
        }
        
        set {
            defaults.set(newValue, forKey: .showDockIcon)
            defaults.synchronize()
        }
    }
    
    static var showSeconds: Bool {
        get {
            return defaults.bool(forKey: .showSeconds)
        }
        
        set {
            defaults.set(newValue, forKey: .showSeconds)
            defaults.synchronize()
        }
    }
    
    static var firstRunGone: Bool {
        get {
            return defaults.bool(forKey: .firstRunGone)
        }
        
        set {
            defaults.set(newValue, forKey: .firstRunGone)
            defaults.synchronize()
        }
    }
    
    static func restore() {
        Preferences.showSeconds = true
        Preferences.useFlashDots = false
        Preferences.showDockIcon = false
    }
}
