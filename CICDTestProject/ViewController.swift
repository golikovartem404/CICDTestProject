//
//  ViewController.swift
//  CICDTestProject
//
//  Created by Artem Golikov on 03.05.2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome to\nCI/CD Test Project"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 28, weight: .black)
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }()
    
    private lazy var keyLabel: UILabel = {
        let label = UILabel()
        if Keys.APIKey1.isEmpty {
            label.text = "No active key"
        } else {
            label.text = Keys.APIKey1
        }
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 28, weight: .black)
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }()
    
    private lazy var environmentLabel: UILabel = {
        let label = UILabel()
        label.text = "Develop ENV"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }()
    
    private lazy var buttonLabel: UILabel = {
        let label = UILabel()
        label.text = "Open new screen"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textAlignment = .center
        label.numberOfLines = 1
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setups
    
    private func setupView() {
        view.backgroundColor = UIColor(hexString: "#ffcf40")
    }
    
    private func setupHierarchy() {
        view.addSubview(welcomeLabel)
        view.addSubview(keyLabel)
        view.addSubview(environmentLabel)
        view.addSubview(buttonLabel)
    }
    
    private func setupLayout() {
        welcomeLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().multipliedBy(0.9)
            $0.width.equalToSuperview().multipliedBy(0.7)
        }
        
        keyLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(welcomeLabel.snp.bottom).offset(40)
            $0.width.equalToSuperview().multipliedBy(0.7)
        }
        
        environmentLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.width.equalToSuperview().multipliedBy(0.7)
        }
        
        buttonLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            $0.width.equalToSuperview().multipliedBy(0.7)
        }
    }
}

