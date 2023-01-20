//
//  ViewController.swift
//  Calculator
//
//  Created by MacBook Pro on 10.12.2022.
//

import UIKit

enum CalcButton: Int, CaseIterable {
    case reset
    case plusAndMinus
    case percent
    case division
    case seven
    case eight
    case nine
    case multiply
    case four
    case five
    case six
    case minus
    case one
    case two
    case three
    case plus
    case zero
    case float
    case equally


    var title: String {
        switch self {
        case .reset: return "AC"
        case .plusAndMinus: return "+/-"
        case .percent: return "%"
        case .division: return "/"
        case .seven: return "7"
        case .eight: return "8"
        case .nine: return "9"
        case .multiply: return "x"
        case .four: return "4"
        case .five: return "5"
        case .six: return "6"
        case .minus: return "-"
        case .one: return "1"
        case .two: return "2"
        case .three: return "3"
        case .plus: return "+"
        case .zero: return "0"
        case .float: return "."
        case .equally: return "="
        }
    }
    
    var color: UIColor {
        switch self {
            case .reset: return UIColor.lightGray
            case .plusAndMinus: return UIColor.lightGray
            case .percent: return UIColor.lightGray
            case .division: return UIColor.orange
            case .seven: return UIColor.systemGray4
            case .eight: return UIColor.systemGray4
            case .nine: return UIColor.systemGray4
            case .multiply: return UIColor.orange
            case .four: return UIColor.systemGray4
            case .five: return UIColor.systemGray4
            case .six: return UIColor.systemGray4
            case .minus: return UIColor.orange
            case .one: return UIColor.systemGray4
            case .two: return UIColor.systemGray4
            case .three: return UIColor.systemGray4
            case .plus: return UIColor.orange
            case .zero: return UIColor.systemGray4
            case .float: return UIColor.systemGray4
            case .equally: return UIColor.orange
        }
    }
    
}

enum Operation {
    case add, minus, multiply, division, percent, equal, float, none
}

class ViewController: UIViewController {
    
    let contentView = UIView()
    let viewForResults = UIView()
    let viewForButtons = UIView()
    
    var stack0 = UIStackView()
    var stack1 = UIStackView()
    var stack2 = UIStackView()
    var stack3 = UIStackView()
    var stack4 = UIStackView()
    var stack5 = UIStackView()
    var stack6 = UIStackView()
    var stack7 = UIStackView()
    
    let one = Buttons().oneButton
    let two = Buttons().twoButton
    let three = Buttons().threeButton
    let four = Buttons().fourButton
    let five = Buttons().fiveButton
    let six = Buttons().sixButton
    let seven = Buttons().sevenButton
    let eight = Buttons().eightButton
    let nine = Buttons().nineButton
    let zero = Buttons().zeroButton
    
    let reset = Buttons().resetButton
    let plusAndMinus = Buttons().plusAndMinusButton
    let percent = Buttons().percentButton
    let division = Buttons().divisionButton
    let multiply = Buttons().multiplyButton
    let minus = Buttons().minusButton
    let plus = Buttons().plusButton
    let equally = Buttons().equallyButton
    let float = Buttons().floatButton
    
    let calcLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 90, weight: .bold)
        label.textAlignment = .right
        
        return label
    }()
    
    var runningNumber: Double = 0.0
    var currentValue: Double = 0.0
    var isPlaced = false
    let buttons = CalcButton.allCases
    var currentOperation: Operation? = Operation.none
    
    var stackOne: [CalcButton] {
        return [.reset, .plusAndMinus, .percent, .division]
    }
    
    var stackTwo: [CalcButton] {
        return [.seven, .eight, .nine, .multiply]
    }
    
    var stackThree: [CalcButton] {
        return [.four, .five, .six, .minus]
    }
    
    var stackFour: [CalcButton] {
        return [.one, .two, .three, .plus]
    }
    
    var stackFive: [CalcButton] {
        return [.zero, .float, .equally]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        
        componentsConfigure()
        viewsConfigure()
        stackViewConfigure()
        stackViewConstrains()
    }
    
}

/*
 
 Прогамма не полностью закончена:
 1. Например нельзя складывать (или любая другая операция) значение просто нажимая плюс надо нажать равно,
    то есть работает только с одним выражением
 
 2. Не работает операции если второй операнд с точкой, с первым операндом с точкой все нормально но второй проблемный
 
 */
