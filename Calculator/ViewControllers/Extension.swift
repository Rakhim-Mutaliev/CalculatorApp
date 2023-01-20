//
//  Extension.swift
//  Calculator
//
//  Created by MacBook Pro on 24.12.2022.
//

import UIKit

extension ViewController {
    
    func viewsConfigure() {
        view.addSubview(contentView)
        contentView.addSubview(viewForResults)
        contentView.addSubview(viewForButtons)
        
        viewForResults.addSubview(calcLabel)
        
        
        
        
        [contentView, viewForResults, viewForButtons, calcLabel].forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
        
        NSLayoutConstraint.activate([
            contentView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contentView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            contentView.widthAnchor.constraint(equalTo: view.widthAnchor),
            contentView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor),
            
            viewForResults.topAnchor.constraint(equalTo: contentView.topAnchor),
            viewForResults.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            viewForResults.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 1/3),
            
            viewForButtons.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            viewForButtons.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            viewForButtons.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 2/3),
            
            calcLabel.bottomAnchor.constraint(equalTo: viewForResults.bottomAnchor),
            calcLabel.widthAnchor.constraint(equalTo: viewForResults.widthAnchor, multiplier: 0.92/1)
        ])
    }

    func stackViewConfigure() {
        viewForButtons.addSubview(stack0)

        stack0.axis = .vertical
        stack1.axis = .horizontal
        stack2.axis = .horizontal
        stack3.axis = .horizontal
        stack4.axis = .horizontal
        stack5.axis = .horizontal
        stack7.axis = .horizontal
        
        stack0.distribution = .fillEqually
        stack1.distribution = .fillEqually
        stack2.distribution = .fillEqually
        stack3.distribution = .fillEqually
        stack4.distribution = .fillEqually
        stack5.distribution = .fillEqually
        stack7.distribution = .fillEqually
        
        
        stack0.spacing = 10
        stack1.spacing = 15
        stack2.spacing = 15
        stack3.spacing = 15
        stack4.spacing = 15
        stack5.spacing = 15
        stack7.spacing = 15
        
        [stack1, stack2, stack3, stack4, stack5].forEach {
            $0.layoutMargins = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
            $0.isLayoutMarginsRelativeArrangement = true
        }
    }
    
    func stackViewConstrains() {
        stack0.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stack0.widthAnchor.constraint(equalTo: viewForButtons.widthAnchor),
            stack0.heightAnchor.constraint(equalTo: viewForButtons.heightAnchor)
        ])
    }
    
    func componentsConfigure() {
       
        for items in stackOne {
            let button = UIButton()
            button.setTitle(items.title, for: .normal)
            button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
            button.backgroundColor = items.color
            button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
            button.tag = items.rawValue
            button.addTarget(self, action: #selector(buttonsAction), for: .touchUpInside)
            stack1.addArrangedSubview(button)
        }
        
        for items in stackTwo {
            let button = UIButton()
            button.setTitle(items.title, for: .normal)
            button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
            button.backgroundColor = items.color
            button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
            button.tag = items.rawValue
            button.addTarget(self, action: #selector(buttonsAction), for: .touchUpInside)
            stack2.addArrangedSubview(button)
        }
        
        for items in stackThree {
            let button = UIButton()
            button.setTitle(items.title, for: .normal)
            button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
            button.backgroundColor = items.color
            button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
            button.tag = items.rawValue
            button.addTarget(self, action: #selector(buttonsAction), for: .touchUpInside)
            stack3.addArrangedSubview(button)
        }
        
        for items in stackFour {
            let button = UIButton()
            button.setTitle(items.title, for: .normal)
            button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
            button.backgroundColor = items.color
            button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
            button.tag = items.rawValue
            button.addTarget(self, action: #selector(buttonsAction), for: .touchUpInside)
            stack4.addArrangedSubview(button)
        }
        
        for items in stackFive {
            let button = UIButton()
            button.setTitle(items.title, for: .normal)
            button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
            button.backgroundColor = items.color
            
            if items == stackFive[.zero] {
                button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
                button.tag = items.rawValue
                button.addTarget(self, action: #selector(buttonsAction), for: .touchUpInside)
                stack6.addArrangedSubview(button)
            } else {
                button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
                button.tag = items.rawValue
                button.addTarget(self, action: #selector(buttonsAction), for: .touchUpInside)
                stack7.addArrangedSubview(button)
            }
        }
        
        stack5 = UIStackView(arrangedSubviews: [stack6, stack7])
        stack0 = UIStackView(arrangedSubviews: [stack1, stack2, stack3, stack4, stack5])
        
        
        [reset, plusAndMinus, percent].forEach { $0.backgroundColor = .lightGray }
        [division, multiply, minus, plus, equally].forEach { $0.backgroundColor = .orange }
        [one, two, three, four, five, six, seven, eight, nine, zero, float].forEach { $0.backgroundColor = .systemGray4 }
        
    }
    
    @objc func buttonsAction(_ sender: UIButton) {
        let tappedButton = CalcButton(rawValue: sender.tag)!
        var isTap = false
        
        if let labelText = calcLabel.text {
            let intValue = Double(labelText)
            currentValue = intValue ?? 0
        }
        
        switch tappedButton {
        case .reset:
            calcLabel.text = "0"
            isPlaced = false
        case .plusAndMinus:
            let current = Double(calcLabel.text ?? "0") ?? 0
            calcLabel.text = "\(-current)"
        case .percent:
            currentOperation = .percent
            calcLabel.text = "0"
            runningNumber = Double(self.currentValue)
            isPlaced = false
        case .division:
            currentOperation = .division
            calcLabel.text = "0"
            runningNumber = Double(self.currentValue)
            isPlaced = false
        case .multiply:
            currentOperation = .multiply
            calcLabel.text = "0"
            runningNumber = Double(self.currentValue)
            isPlaced = false
        case .minus:
            currentOperation = .minus
            calcLabel.text = "0"
            runningNumber = Double(self.currentValue)
            isPlaced = false
        case .plus:
            currentOperation = .add
            if isTap == false {
                calcLabel.text = "0"
                runningNumber = Double(self.currentValue)
                isTap = true
            } else {
               
            }
            
            isPlaced = false
        case .float:
            currentOperation = .float
            let number = "."
            
            if self.calcLabel.text != "0" && isPlaced == false {
                calcLabel.text = "\(self.calcLabel.text ?? "0")\(number)"
                isPlaced.toggle()
            } else if self.calcLabel.text != "0" && isPlaced == true {
                return
            } else {
                calcLabel.text = "0."
            }
        case .equally:
            let running = runningNumber
            let current = Double(calcLabel.text ?? "0") ?? 0
            isPlaced = false
            
            
            switch self.currentOperation {
            case .add: calcLabel.text = "\(running + current)"
            case .minus: calcLabel.text = "\(running - current)"
            case .multiply: calcLabel.text = "\(running * current)"
            case .division: calcLabel.text = "\(running / current)"
            default: break
            }
            
        default:
            let number = tappedButton.title
            
            if self.calcLabel.text == "0" {
                calcLabel.text = String(number)
            } else {
                calcLabel.text = "\(self.calcLabel.text ?? "0")\(number)"
            }
            
            
        }
    }
    
}
