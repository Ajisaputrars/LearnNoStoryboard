//
//  ViewController.swift
//  LearningNoStoryboard
//
//  Created by Aji Saputra Raka Siwi on 05/08/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit
import SnapKit

class MainController: UIViewController {
    
    private var mainView: MainView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainView = MainView(frame: self.view.frame)
        self.view = self.mainView
                
        self.title = "Main Page"
        
        self.navigationController?.navigationBar.barTintColor = .red
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        self.mainView.nextButton.addTarget(self, action: #selector(goToDetailController), for: .touchUpInside)
    }
    
    @objc
    private func goToDetailController(){
        self.navigationController?.pushViewController(DetailController(), animated: true)
    }
}
