//
//  ViewController.swift
//  HomeworkTask2
//
//  Created by Виталий on 27.01.22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func onStartButton(_ sender: Any) {
        let vc = UIStoryboard(name: "GameViewController", bundle: Bundle.main).instantiateInitialViewController() as! GameViewController
        navigationController?.pushViewController(vc, animated: true)
        
        //title = "Name"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

