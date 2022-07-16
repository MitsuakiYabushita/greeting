//
//  SecondViewController.swift
//  greetingApp
//
//  Created by mitsuaki yabushita on 2022/06/30.
//

import UIKit


class SecondViewController: UIViewController {
    
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var backButtonStyle: MaruButton!
    var outputValue:String?
    var outputTagValue:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setText()
        buttonSetup()
        setColor()
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setText() {
        if outputTagValue! == 1 {
            if outputValue! == "" {
                outputLabel.text = "おはよう、名無しさん"
            } else {
                outputLabel.text = "おはよう、\(outputValue!)さん"
            }
        } else if outputTagValue! == 2 {
            if outputValue! == "" {
                outputLabel.text = "こんにちは、名無しさん"
            } else {
                outputLabel.text = "こんにちは、\(outputValue!)さん"
            }
        } else {
            if outputValue! == "" {
                outputLabel.text = "こんばんは、名無しさん"
            } else {
                outputLabel.text = "こんばんは、\(outputValue!)さん"
            }
        }
        
        
        
    }
    
    func buttonSetup() {
        backButtonStyle.layer.cornerRadius = 18.0
        backButtonStyle.layer.shadowColor = UIColor.lightGray.cgColor
        backButtonStyle.layer.shadowOpacity = 0.5
        backButtonStyle.layer.shadowRadius = 18.0
        backButtonStyle.layer.shadowOffset = CGSize(width: 8, height: 8)
    }
    
    func setColor() {
        if outputTagValue! == 1 {
            self.view.backgroundColor = UIColor(hex: "FFFFDD")
            backButtonStyle.backgroundColor = UIColor(hex: "F0FFA6")
        } else if outputTagValue! == 2 {
            self.view.backgroundColor = UIColor(hex: "FFF0FF")
            backButtonStyle.backgroundColor = UIColor(hex: "FFBBA8")
        } else {
            self.view.backgroundColor = UIColor(hex: "DDFFFF")
            backButtonStyle.backgroundColor = UIColor(hex: "72FFFC")
        }
    }
}

extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        let v = Int("000000" + hex, radix: 16) ?? 0
        let r = CGFloat(v / Int(powf(256, 2)) % 256) / 255
        let g = CGFloat(v / Int(powf(256, 1)) % 256) / 255
        let b = CGFloat(v / Int(powf(256, 0)) % 256) / 255
        self.init(red: r, green: g, blue: b, alpha: min(max(alpha,0), 1))
    }
}
