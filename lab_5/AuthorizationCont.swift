//
//  AuthorizationCont.swift
//  lab_5
//
//  Created by Damir Tansykov on 04.04.2024.
//
import UIKit

final class AuthorizationCont: UIViewController {
    
    private lazy var signInButton: UIButton = {
      let button = UIButton()
        
        button.backgroundColor = .darkGray
        button.addTarget(self, action: #selector(exitButtonDidTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Sign In", for: .normal)
        button.layer.cornerRadius = 12
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .gray
        view.addSubview(signInButton)
        NSLayoutConstraint.activate([
            signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signInButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            signInButton.widthAnchor.constraint(equalToConstant: 120),
            signInButton.heightAnchor.constraint(equalToConstant: 60),
        ])
    }
    
    @objc
    private func exitButtonDidTap() {
        UIHelper.setRoot(TabBarController())
    }

}
