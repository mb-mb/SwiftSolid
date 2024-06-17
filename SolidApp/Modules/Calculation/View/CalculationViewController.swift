//
//  CalculationViewController.swift
//  SolidApp
//
//  Created by Suporte2 on 16/06/24.
//


import UIKit

class CalculationViewController: UIViewController, CalculationViewProtocol {
    var presenter: CalculationPresenterProtocol?

    private let valueTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter value"
        textField.keyboardType = .decimalPad
        textField.borderStyle = .roundedRect
        return textField
    }()

    private let thresholdTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter threshold"
        textField.keyboardType = .decimalPad
        textField.borderStyle = .roundedRect
        return textField
    }()

    private let basicTaxRateTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter basic tax rate"
        textField.keyboardType = .decimalPad
        textField.borderStyle = .roundedRect
        return textField
    }()

    private let luxuryTaxRateTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter luxury tax rate"
        textField.keyboardType = .decimalPad
        textField.borderStyle = .roundedRect
        return textField
    }()
    private let calculatorTypeSegmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl(items: ["Basic", "Imported", "Complex", "Luxury"])
        segmentedControl.selectedSegmentIndex = 0
        return segmentedControl
    }()

    private let resultLabel: UILabel = {
        let label = UILabel()
        label.text = "Result"
        label.textAlignment = .center
        return label
    }()

    private let calculateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Calculate", for: .normal)
        button.addTarget(self, action: #selector(didTapCalculate), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSubviews()
    }

    private func setupSubviews() {
        let stackView = UIStackView(arrangedSubviews: [valueTextField, thresholdTextField, basicTaxRateTextField, luxuryTaxRateTextField, calculatorTypeSegmentedControl, resultLabel, calculateButton])
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
    }

    @objc private func didTapCalculate() {
        guard let text = valueTextField.text, let value = Double(text) else { return }
        let selectedIndex = calculatorTypeSegmentedControl.selectedSegmentIndex

        let type: TaxCalculatorType
        if selectedIndex == 3,
           let thresholdText = thresholdTextField.text, let threshold = Double(thresholdText),
           let basicRateText = basicTaxRateTextField.text, let basicRate = Double(basicRateText),
           let luxuryRateText = luxuryTaxRateTextField.text, let luxuryRate = Double(luxuryRateText) {
            type = .type(for: selectedIndex, threshold: threshold, basicTaxRate: basicRate, luxuryTaxRate: luxuryRate)
        } else {
            type = .type(for: selectedIndex)
        }

        presenter?.calculate(value: value, using: type)    }

    func show(result: CalculationResult) {
        resultLabel.text = "Result: \(result.value)"
    }
}

