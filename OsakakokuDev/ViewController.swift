//
//  ViewController.swift
//  OsakakokuDev
//
//  Created by 佐々木駿 on 2019/07/18.
//  Copyright © 2019 shun.sasaki. All rights reserved.
//

import UIKit
import IGListKit

class ViewController: UIViewController {
    lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self, workingRangeSize: 0)
    }()
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())

    
    lazy var users = [
        User(id: 1, name: "Littlefinger"),
        User(id: 2, name: "Tommen Baratheon"),
        User(id: 3, name: "Roose Bolton")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        adapter.collectionView = collectionView
        adapter.dataSource = self
        
        }
}
extension ViewController: ListAdapterDataSource {
    
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return users
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        let sectionController = SectironController()
        return sectionController
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? { return nil }
    
}

