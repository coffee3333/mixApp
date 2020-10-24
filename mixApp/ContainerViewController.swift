//
//  ContainerViewController.swift
//  mixApp
//
//  Created by Atay on 10/23/20.
//

import UIKit

class ContainerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
// MARK: CenterViewController delegate

extension ContainerViewController: CenterViewControllerDelegate {
  func toggleLeftPanel() {
  }

  func toggleRightPanel() {
  }

  func collapseSidePanels() {
  }
}
