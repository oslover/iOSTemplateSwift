//
//  Project.swift
//  Construction
//
//  Created by Macmini on 11/19/17.
//  Copyright © 2017 LekshmySankar. All rights reserved.
//

import UIKit

class Project: BaseObject {
    var title: String? {
        get {
            return data["title"] as? String
        }
        set {
            data["title"] = newValue
        }
    }
    var date: NSDate!
}
