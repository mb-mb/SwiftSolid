//
//  ViewController.swift
//  SolidApp
//
//  Created by Suporte2 on 14/06/24.
//

import UIKit

class ViewController: UIViewController {
    var labelPrice: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect  // Adicionando estilo de borda para visualização
        textField.placeholder = "Enter price" // Placeholder para visualização
        return textField
    }()
    
    var resultPrice: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Result:"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        setupViews()
        setupConstraints()
    }

    private func setupViews() {
        view.addSubview(labelPrice)
        view.addSubview(resultPrice)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            // Constraints para labelPrice
            labelPrice.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            labelPrice.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            labelPrice.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            labelPrice.heightAnchor.constraint(equalToConstant: 40),
            
            // Constraints para resultPrice
            resultPrice.topAnchor.constraint(equalTo: labelPrice.bottomAnchor, constant: 20),
            resultPrice.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            resultPrice.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
}

