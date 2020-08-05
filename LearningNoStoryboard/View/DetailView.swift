//
//  DetailView.swift
//  LearningNoStoryboard
//
//  Created by Aji Saputra Raka Siwi on 05/08/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class DetailView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = .green
    }
}
