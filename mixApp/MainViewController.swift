//
//  MainViewController.swift
//  mixApp
//
//  Created by Atay on 10/23/20.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var centerNavigationController: UINavigationController!
        var centerViewController: MainViewController!
        // 1
        centerViewController = UIStoryboard.centerViewController()
        // 2
        centerViewController.delegate = self

        // 3
        centerViewController = UINavigationController(rootViewController: centerViewController)
        view.addSubview(centerNavigationController.view)
        addChild(centerNavigationController)

        // 4
        centerNavigationController.didMove(toParent: self)



        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



extension MainViewController: MainViewControllerDelegate {
  func toggleLeftPanel() {
  }

  func toggleRightPanel() {
  }

  func collapseSidePanels() {
  }
}
