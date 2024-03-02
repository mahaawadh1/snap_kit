//
//  ViewController.swift
//  snapkit
//
//  Created by maha on 27/02/2024.
//
import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let profileImageView = UIImageView()
    let postsLabel = UILabel()
    let usernameLabel = UILabel()
    let bioLabel = UILabel()
    let joinCodedLabel = UILabel() // new label
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(profileImageView)
        view.addSubview(usernameLabel)
        view.addSubview(bioLabel)
        view.addSubview(joinCodedLabel)
        setupUI()
        setUpAutoLayOut()
        
    }
    
    func setupUI() {
        profileImageView.image = UIImage(named: "coded")
        profileImageView.layer.cornerRadius = profileImageView.frame.width / 2
        profileImageView.clipsToBounds = true
        usernameLabel.text = "Coded \n"
        joinCodedLabel.text = "joinCoded"
        bioLabel.text = "🥇 1st Coding Academy in the Middle East \n🧑🏻‍💻 Learn To Code Websites, Apps, & MORE \n👩🏻‍🎓 Intensive Courses & Bootcamps \n🚀 400+ Graduates Since 2015"
        bioLabel.numberOfLines = 0
        
    }
    
    func setUpAutoLayOut(){
        
        profileImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.width.equalTo(75)
            make.height.equalTo(75)
        }
        profileImageView.layer.cornerRadius = profileImageView.frame.width / 2
        profileImageView.clipsToBounds = true
        
        usernameLabel.snp.makeConstraints { make in
            make.top.equalTo(profileImageView.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(20)
        }
        joinCodedLabel.snp.makeConstraints { make in
            make.top.equalTo(usernameLabel.snp.bottom).offset(10)
            make.leading.equalTo(usernameLabel.snp.leading)
        }
        
        bioLabel.snp.makeConstraints { make in
            make.top.equalTo(joinCodedLabel.snp.bottom).offset(10)
            make.leading.equalTo(usernameLabel.snp.leading)
        }
        
    }
}
