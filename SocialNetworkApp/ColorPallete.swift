//
//  ColorPallete.swift
//  SocialNetworkApp
//
//  Created by Anna Sumire on 28.10.23.
//

import UIKit

class ColorPallete: UIViewController {
    
    var homeButtons: [UIButton] = []
    var homeBackgroundView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let homeButtonLabel: UILabel = {
            let label = UILabel()
            label.text = "Change Home Buttons Background Colors"
            label.textAlignment = .center
            return label
        }()
        
        let homeButtonStackView: UIStackView = {
            let stackView = UIStackView()
            stackView.axis = .horizontal
            stackView.spacing = 10
            stackView.distribution = .fillEqually
            return stackView
        }()
        
        let homeBackgroundColorLabel: UILabel = {
            let label = UILabel()
            label.text = "Change Home Background Color"
            label.textAlignment = .center
            return label
        }()
        
        let homeBackgroundStackView: UIStackView = {
            let stackView = UIStackView()
            stackView.axis = .horizontal
            stackView.spacing = 10
            stackView.distribution = .fillEqually
            return stackView
        }()
        
        let colors: [UIColor] = [.red, .yellow, .green, .black, .gray, .lightGray]
        
        for color in colors {
            let homeButtonColorButton = UIButton()
            homeButtonColorButton.backgroundColor = color
            homeButtonColorButton.addTarget(self, action: #selector(changeHomeButtonColor), for: .touchUpInside)
            homeButtonStackView.addArrangedSubview(homeButtonColorButton)
        }
        
        for color in colors {
            let homeBackgroundColorButton = UIButton()
            homeBackgroundColorButton.backgroundColor = color
            homeBackgroundColorButton.addTarget(self, action: #selector(changeHomeBackgroundColor), for: .touchUpInside)
            homeBackgroundStackView.addArrangedSubview(homeBackgroundColorButton)
        }
        
        let mainStackView: UIStackView = {
            let stackView = UIStackView()
            stackView.axis = .vertical
            stackView.spacing = 20
            return stackView
        }()
        
        mainStackView.addArrangedSubview(homeButtonLabel)
        mainStackView.addArrangedSubview(homeButtonStackView)
        mainStackView.addArrangedSubview(homeBackgroundColorLabel)
        mainStackView.addArrangedSubview(homeBackgroundStackView)
        
        view.addSubview(mainStackView)
        
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    @objc func changeHomeButtonColor(_ sender: UIButton) {
        if let color = sender.backgroundColor {
            homeButtons.forEach { $0.backgroundColor = color }
            // Buttons aren't changing color at all, and I couldn't figure out how to fix it.
        }
        navigationController?.popViewController(animated: true)
    }
    
    @objc func changeHomeBackgroundColor(_ sender: UIButton) {
        if let color = sender.backgroundColor {
            homeBackgroundView?.backgroundColor = color
        }
        navigationController?.popViewController(animated: true)
    }
}
