//
//  BaseObject.swift
//  Construction
//
//  Created by Macmini on 11/19/17.
//  Copyright © 2017 LekshmySankar. All rights reserved.
//

import UIKit

class BaseObject {
    var data = [String: Any]()
    
    init(with dict: [String: Any]) {
        self.data = dict
    }
}
