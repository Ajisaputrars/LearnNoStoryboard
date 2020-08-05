//
//  DetailController.swift
//  LearningNoStoryboard
//
//  Created by Aji Saputra Raka Siwi on 05/08/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    
    private var detailView: DetailView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.detailView = DetailView(frame: self.view.frame)
        self.view = self.detailView

        self.title = "Detail Page"
        // Do any additional setup after loading the view.
    }

}
