//
//  Superhero.swift
//  Persistence
//
//  Created by Alexander Filippov on 06/06/2019.
//  Copyright © 2019 Alexander Filippov. All rights reserved.
//

import Foundation
import RealmSwift


class Superhero: Object {
    dynamic var id: Int = 0
    dynamic var name: String = ""
    dynamic var nickname: String = ""
    dynamic var age: Int = 0
    
    var isAdult: Bool {
        return age >= 21
    }
    
    convenience init (id: Int, name: String, nickname: String, age: Int) {
        self.init()
        
        self.id = id
        self.name = name
        self.nickname = nickname
        self.age = age
    }
    
}
