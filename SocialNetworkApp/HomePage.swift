//
//  HomePage.swift
//  SocialNetworkApp
//
//  Created by Anna Sumire on 27.10.23.
//

import UIKit

class HomePage: UIViewController {
    
    var homeButtons: [UIButton] = []
    var homeBackgroundView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        
        let stackView: UIStackView = {
            let stackView = UIStackView()
            stackView.axis = .vertical
            stackView.spacing = 23
            return stackView
        }()
        
        let presentButton: UIButton = {
            let button = UIButton()
            button.addTarget(self, action: #selector(presentColorPallete), for: .touchUpInside)
            button.configuration = .filled()
            button.configuration?.baseBackgroundColor = .blue
            button.setTitle("Present Color Palette Page", for: .normal)
            button.layer.cornerRadius = 30
            return button
        }()
        
        let pushButton: UIButton = {
            let button = UIButton()
            button.addTarget(self, action: #selector(goToColorPallete), for: .touchUpInside)
            button.configuration = .filled()
            button.configuration?.baseBackgroundColor = .red
            button.setTitle("Push Color Palette Page", for: .normal)
            button.layer.cornerRadius = 30
            return button
        }()
        
        view.addSubview(stackView)
        stackView.addArrangedSubview(presentButton)
        stackView.addArrangedSubview(pushButton)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        presentButton.translatesAutoresizingMaskIntoConstraints = false
        pushButton.translatesAutoresizingMaskIntoConstraints = false
        presentButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        pushButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        homeButtons = [presentButton, pushButton]
        homeBackgroundView = view
    }
    
    @objc func goToColorPallete() {
        let colorPallete = ColorPallete()
        colorPallete.title = "Color Pallete"
        
        colorPallete.homeButtons = homeButtons
        colorPallete.homeBackgroundView = homeBackgroundView
        navigationController?.pushViewController(colorPallete, animated: true)
    }
    
    @objc func presentColorPallete() {
        let colorPallete = ColorPallete()
        colorPallete.title = "Color Pallete"
        
        colorPallete.homeButtons = homeButtons
        colorPallete.homeBackgroundView = homeBackgroundView
        let navigationController = UINavigationController(rootViewController: colorPallete)
        present(navigationController, animated: true, completion: nil)
    }
}
