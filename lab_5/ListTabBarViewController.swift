//
//  SecondTabBarViewController.swift
//  lab_5
//
//  Created by Damir Tansykov on 21.03.2024.
//

import UIKit

class ListTabBarViewController: UIViewController {
    
    private lazy var continueButton: UIButton = {
        let button = UIButton()
            button.backgroundColor = .yellow
            button.setTitle("continue", for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.layer.cornerRadius = 12
            button.setTitleColor(.black, for: .normal)
            button.addTarget(self, action: #selector(buttonDidTap), for: .touchUpInside)
        
            return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        setupViews()
    }
    
    @objc
    private func buttonDidTap() {
        let viewController = SecondViewController()
        
        viewController.configure(titleText: "MusicList")
        self.navigationController?.pushViewController(viewController, animated: true)
    }

    private func setupViews() {
        view.addSubview(continueButton)
        
        NSLayoutConstraint.activate([
            continueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            continueButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            continueButton.heightAnchor.constraint(equalToConstant: 44),
            continueButton.widthAnchor.constraint(equalToConstant: 100)
        ])
    }

}
