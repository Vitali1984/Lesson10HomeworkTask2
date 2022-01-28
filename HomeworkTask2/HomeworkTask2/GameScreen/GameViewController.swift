//
//  GameViewController.swift
//  HomeworkTask2
//
//  Created by Виталий on 27.01.22.
//

import UIKit

class GameViewController: UIViewController {

    private var labelMove: UILabel!
    
    // MARK: - ViewControllerLifeCycle
    // MARK: -
    
    override func loadView() {
        
        let customView = UIView(frame: UIScreen.main.bounds)
        
        labelMove = UILabel()
        labelMove.backgroundColor = .systemCyan
        customView.addSubview(labelMove)
        
        view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGreen
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(swipeUpAction))
        swipeUp.direction = .up
        view.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(swipeDowntAction))
        swipeDown.direction = .down
        view.addGestureRecognizer(swipeDown)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipeLeftAction))
        swipeLeft.direction = .left
        view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipeReghtAction))
        swipeRight.direction = .right
        view.addGestureRecognizer(swipeRight)
    
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Layout
    // MARK: -
    
    override func viewWillLayoutSubviews() {
        
        labelMove.frame = CGRect(x: view.bounds.midX - 25, y: view.bounds.midY - 25, width: 50, height: 50)
        labelMove.layer.cornerRadius = 0.5 * labelMove.bounds.size.width
        labelMove.clipsToBounds = true
    }
    
    // MARK: - RecognizerActions
    // MARK: -
    
    @objc func swipeLeftAction() {
        if !labelMove.frame.origin.x.isLess(than: view.frame.minX + labelMove.frame.width) {
            labelMove.frame = labelMove.frame.offsetBy(dx: -30, dy: 0)
        } else {
            labelMove.frame = labelMove.frame.offsetBy(dx: 0, dy: 0)
        }
    }
    
    @objc func swipeReghtAction() {
        if labelMove.frame.origin.x.isLess(than: view.frame.maxX - labelMove.frame.width) {
            labelMove.frame = labelMove.frame.offsetBy(dx: 30, dy: 0)
        } else {
            labelMove.frame = labelMove.frame.offsetBy(dx: 0, dy: 0)
        }
    }
    
    @objc func swipeUpAction() {
        if !labelMove.frame.origin.y.isLess(than: view.frame.minY + labelMove.frame.height) {
            labelMove.frame = labelMove.frame.offsetBy(dx: 0, dy: -30)
        } else {
            labelMove.frame = labelMove.frame.offsetBy(dx: 0, dy: 0)
        }
        print(view.frame.minY + 50)
        print(labelMove.frame.origin.y)
    }
    
    @objc func swipeDowntAction() {
        if labelMove.frame.origin.y.isLess(than: view.frame.maxY - labelMove.frame.height) {
            labelMove.frame = labelMove.frame.offsetBy(dx: 0, dy: 30)
        } else {
            labelMove.frame = labelMove.frame.offsetBy(dx: 0, dy: 0)
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
