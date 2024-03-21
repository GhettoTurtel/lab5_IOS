import UIKit

class FirstTabBarViewController: UIViewController {
    private lazy var continueButton: UIButton = {
        let button = UIButton()
            button.backgroundColor = .purple
            button.setTitle("continue", for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.layer.cornerRadius = 12
            button.setTitleColor(.white, for: .normal)
            button.addTarget(self, action: #selector(buttonDidTap), for: .touchUpInside)
        
            return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .darkGray
        setupViews()
    }
    
    @objc
    private func buttonDidTap() {
        let viewController = SecondViewController()
        
        viewController.configure(titleText: "Survive - Jorge Rivera-Herrans")
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
