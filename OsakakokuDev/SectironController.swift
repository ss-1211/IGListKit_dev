//
//  SectironController.swift
//  OsakakokuDev
//
//  Created by 佐々木駿 on 2019/08/16.
//  Copyright © 2019 shun.sasaki. All rights reserved.
//

import UIKit
import IGListKit

class SectironController: ListSectionController {

    var feed: User?
    
    override func numberOfItems() -> Int {
        return 1
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: collectionContext!.containerSize.width, height: 50)
    }
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let feed = feed else {
            fatalError("feed is nil.")
        }
        let cell = collectionContext?.dequeueReusableCell(withNibName: "cell", bundle: nil, for: self, at: index) as! CollectionViewCell

        cell.userLabel.text = feed.name
        
        return cell
    }
    
    override func didUpdate(to object: Any) {
        self.feed = object as? User
    }
    
    override func didSelectItem(at index: Int) {}
    
}

