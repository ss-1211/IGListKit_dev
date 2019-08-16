//
//  Feed.swift
//  OsakakokuDev
//
//  Created by 佐々木駿 on 2019/08/16.
//  Copyright © 2019 shun.sasaki. All rights reserved.
//


//Modelの定義
import UIKit
import IGListKit

final class User: NSObject {
    
    let id: Int
    let name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

// MARK: - IGListDiffable
extension NSObject: ListDiffable {
    
    public func diffIdentifier() -> NSObjectProtocol {
        return self
    }
    
    public func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return isEqual(object)
    }
    
}
