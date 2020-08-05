//
//  MainView.swift
//  LearningNoStoryboard
//
//  Created by Aji Saputra Raka Siwi on 05/08/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit
import SnapKit

class MainView: UIView {
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "Batam, 20 Februari 2020"
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        return label
    }()
    
    let sampleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "sampleimage")
        imageView.contentMode = .scaleAspectFit
//        imageView.backgroundColor = .green
        return imageView
    }()
    
    let greetingLabel: UILabel = {
        let label = UILabel()
        label.text = "Selamat Pagi"
        label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Hari libur gak pergi ke luar rumah kan? Yuk kumpul bersama keluarga. Ini adalah saat yang tepat. Luangkan waktu bersama mereka."
        label.font = UIFont.italicSystemFont(ofSize: 13)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    let nextButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Next", for: .normal)
        button.backgroundColor = .red
        button.tintColor = .white
        button.layer.cornerRadius = 10
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = .white
        
        self.addSubview(dateLabel)
        self.addSubview(sampleImageView)
        self.addSubview(greetingLabel)
        self.addSubview(descriptionLabel)
        self.addSubview(nextButton)
        
        self.dateLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(16)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(16)
        }
        
        self.sampleImageView.snp.makeConstraints { (make) in
            make.top.equalTo(self.dateLabel.snp.bottom).offset(32)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(16)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-16)
            make.height.equalTo(200)
        }
        
        self.greetingLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.sampleImageView.snp.bottom).offset(24)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(16)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-16)
        }
        
        self.descriptionLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.greetingLabel.snp.bottom).offset(16)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(16)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-16)
        }
        
        self.nextButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.safeAreaLayoutGuide).offset(-16)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(32)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-32)
            make.height.equalTo(50)
        }
    }
}
