//
//  Morty.swift
//  Banana
//
//  Created by Sam Meech-Ward on 2017-08-22.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import UIKit

class Morty: NSObject {
    
    fileprivate var rick: Rick
    
    var summer: String
    
    var age: Int?
    
    convenience override init() {
        self.init(summer: "🤗", rick: Rick())
    }
    
    init(summer: String, rick: Rick) {
        self.rick = rick
        self.summer = summer
        super.init()
    }
    
    private func doSomething() {
        _ = rick
    }

}

extension Morty {
    
    func doSomthingElse() {
        print(rick)
    }
    
}

class DummyClass {
    func something() {
        let rick = Morty().rick
    }
}
