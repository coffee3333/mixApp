//
//  CenterViewController.swift
//  mixApp
//
//  Created by Atay on 10/23/20.
//

import UIKit

class CenterViewController: UIViewController {

    var delegate: CenterViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        var centerNavigationController: UINavigationController!
        var centerViewController: CenterViewController!

        // 1
        centerViewController = UIStoryboard.CenterViewController()
        // 2
        centerViewController.delegate = self

        // 3
        centerNavigationController = UINavigationController(rootViewController: centerViewController)
        view.addSubview(centerNavigationController.view)
        addChild(centerNavigationController)

        // 4
        centerNavigationController.didMove(toParent: self)
    }

}



protocol CenterViewControllerDelegate {
  func toggleLeftPanel()
  func toggleRightPanel()
  func collapseSidePanels()
}
