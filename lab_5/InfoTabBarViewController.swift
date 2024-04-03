import UIKit

class InfoTabBarViewController: UIViewController {
    private lazy var exitButton: UIButton = {
      let button = UIButton()
        
        button.backgroundColor = .darkGray
        button.addTarget(self, action: #selector(exitButtonDidTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Sign Out", for: .normal)
        button.layer.cornerRadius = 12
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .gray
        view.addSubview(exitButton)
        NSLayoutConstraint.activate([
            exitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            exitButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            exitButton.widthAnchor.constraint(equalToConstant: 120),
            exitButton.heightAnchor.constraint(equalToConstant: 60),
        ])
    }
    
    @objc
    private func exitButtonDidTap() {
        UIHelper.setRoot(AuthorizationCont())
    }

}
