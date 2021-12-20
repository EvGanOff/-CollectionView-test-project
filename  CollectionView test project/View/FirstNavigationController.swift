//
//  FirstNavigationController.swift
//   CollectionView test project
//
//  Created by Евгений Ганусенко on 12/19/21.
//

import UIKit

class FirstNavigationController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

    }

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        setuoHierarhy()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    private func setuoHierarhy() {

    }



}
