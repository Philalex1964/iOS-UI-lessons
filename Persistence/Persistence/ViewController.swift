//
//  ViewController.swift
//  Persistence
//
//  Created by Alexander Filippov on 05/06/2019.
//  Copyright © 2019 Alexander Filippov. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let batman = Superhero()
        batman.id = 1
        batman.name = "Bruce Wayne"
        batman.age = 45
        
        let flash = Superhero(id: 2, name: "Barry Allen", nickname: "Flash", age: 18)
        
        let spiderman = Superhero(value: [
            "id": 3,
            "name": "Peter Parker",
            "nickname": "Spiderman",
            "age": 25
            ])
        
        let realm = try! Realm()
        try! realm.write {
            realm.add([batman, flash, spiderman])
        }
        
        print(realm.configuration.fileURL)
    }
}
