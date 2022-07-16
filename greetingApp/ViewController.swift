//
//  ViewController.swift
//  greetingApp
//
//  Created by mitsuaki yabushita on 2022/06/30.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var morningButtonStyle: MaruButton!
    @IBOutlet weak var afternoonButtonStyle: MaruButton!
    @IBOutlet weak var eveningButtonStyle: MaruButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputTextField.delegate = self
    }
    
    @IBAction func tapSendTextButton(_ sender: UIButton) {
        let storyboard = self.storyboard!
        let next = storyboard.instantiateViewController(withIdentifier: "Second") as! SecondViewController
        next.outputValue = self.inputTextField.text
        let tagNum = sender.tag
        next.outputTagValue = tagNum
        self.present(next, animated: true, completion: nil)
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func returnButtonDidTapped(_ sender: Any) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

