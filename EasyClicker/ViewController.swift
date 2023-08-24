//
//  ViewController.swift
//  EasyClicker
//
//  Created by Иван Бондаренко on 24.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var clickCount: Int = 0
    
    private lazy var clickButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Click", for: .normal)
        button.addTarget(self, action: #selector(plusCount), for: .touchUpInside)
        button.layer.cornerRadius = 50
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var clickCountLabel: UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 50, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        view.addSubview(clickButton)
        view.addSubview(clickCountLabel)
    }
    
    private func setupConstraints() {
        clickButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        clickButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100).isActive = true
        clickButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        clickButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        clickCountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        clickCountLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
    }

    @objc func plusCount() {
        clickCount += 1
        clickCountLabel.text = String(clickCount)
    }
}

