//
//  FrontViewController.swift
//  mixApp
//
//  Created by Atay on 10/24/20.
//

import UIKit

class FrontViewController: UIViewController {



    @IBOutlet weak var button: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpRevealRightView()
//        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer());

        // Do any additional setup after loading the view.
    }
    
    func setUpRevealRightView() {
        if self.revealViewController() != nil {
            let nut = UIBarButtonItem()
            nut.target = self.revealViewController()
            button.target = self.revealViewController()
            button.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }

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
