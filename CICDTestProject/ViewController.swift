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

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setups
    
    private func setupView() {
        view.backgroundColor = .systemMint
    }
    
    private func setupHierarchy() {
        view.addSubview(welcomeLabel)
    }
    
    private func setupLayout() {
        welcomeLabel.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.equalToSuperview().multipliedBy(0.7)
        }
    }
}

