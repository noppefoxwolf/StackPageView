//
//  ViewController.swift
//  StackPageViewDemo
//
//  Created by Tomoya Hirano on 2015/11/11.
//  Copyright © 2015年 Tomoya Hirano. All rights reserved.
//

import UIKit

class ViewController: UIViewController,StackViewDataSource {

    @IBOutlet weak var stackPageView: StackPageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stackPageView.dataSource = self
        stackPageView.parentViewController = self
    }

    func stackViewNext(currentViewController: UIViewController?) -> UIViewController? {
        return DummyViewController()
    }
    
    func stackViewPrev(currentViewController: UIViewController?) -> UIViewController? {
        return DummyViewController()
    }

}

class DummyViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = getRandomColor()
    }
    
    func getRandomColor() -> UIColor{
        let randomRed:CGFloat = CGFloat(drand48())
        let randomGreen:CGFloat = CGFloat(drand48())
        let randomBlue:CGFloat = CGFloat(drand48())
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
}


