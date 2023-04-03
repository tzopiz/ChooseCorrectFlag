//
//  UserDefaults + ext.swift
//  ChooseRightFlag
//
//  Created by Дмитрий Корчагин on 04.04.2023.
//

import Foundation

extension UserDefaults {
    var bestScore: Int {
        get { UserDefaults.standard.integer(forKey: "bestScore") }
        set { UserDefaults.standard.set(newValue, forKey: "bestScore") }
    }
}
