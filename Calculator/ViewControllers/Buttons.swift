//
//  Buttons.swift
//  Calculator
//
//  Created by MacBook Pro on 16.12.2022.
//

import UIKit

class Buttons: UIButton {
    
    let oneButton: UIButton = {
        let button = UIButton()
        button.setTitle("1", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
        button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
        
        return button
    }()
    
    let twoButton: UIButton = {
        let button = UIButton()
        button.setTitle("2", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
        button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
        
        return button
    }()
    
    let threeButton: UIButton = {
        let button = UIButton()
        button.setTitle("3", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
        button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
        
        return button
    }()
    
    let fourButton: UIButton = {
        let button = UIButton()
        button.setTitle("4", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
        button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
        
        return button
    }()
    
    let fiveButton: UIButton = {
        let button = UIButton()
        button.setTitle("5", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
        button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
        
        
        return button
    }()
    
    let sixButton: UIButton = {
        let button = UIButton()
        button.setTitle("6", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
        button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
        
        return button
    }()
    
    let sevenButton: UIButton = {
        let button = UIButton()
        button.setTitle("7", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
        button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
        
        return button
    }()
    
    let eightButton: UIButton = {
        let button = UIButton()
        button.setTitle("8", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
        button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
        
        return button
    }()
    
    let nineButton: UIButton = {
        let button = UIButton()
        button.setTitle("9", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
        button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
        
        return button
    }()
    
    let zeroButton: UIButton = {
        let button = UIButton()
        button.setTitle("0", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
        button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
        
        return button
    }()
    
    
    let resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("AC", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
        button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
        
        return button
    }()
    
    let plusAndMinusButton: UIButton = {
        let button = UIButton()
        button.setTitle("+/-", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
        button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
        
        return button
    }()
    
    let percentButton: UIButton = {
        let button = UIButton()
        button.setTitle("%", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
        button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
        
        return button
    }()
    
    let divisionButton: UIButton = {
        let button = UIButton()
        button.setTitle("/", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
        button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
        
        return button
    }()
    
    let multiplyButton: UIButton = {
        let button = UIButton()
        button.setTitle("X", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
        button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
        
        return button
    }()
    
    let minusButton: UIButton = {
        let button = UIButton()
        button.setTitle("-", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
        button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
        
        return button
    }()
    
    let plusButton: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
        button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
        
        return button
    }()
    
    let equallyButton: UIButton = {
        let button = UIButton()
        button.setTitle("=", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
        button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
        
        return button
    }()
    
    let floatButton: UIButton = {
        let button = UIButton()
        button.setTitle(".", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 32, weight: .semibold)
        button.layer.cornerRadius = (UIScreen.main.bounds.width - 12 * 12) / 6
        
        return button
    }()
    
}

