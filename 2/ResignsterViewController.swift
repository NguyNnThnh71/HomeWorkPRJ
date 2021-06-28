//
//  ResignsterViewController.swift
//  2
//
//  Created by Apple on 27/06/2021.
//

import UIKit

class ResignsterViewController: UIViewController {
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false // set = false thì vô hiệu hoá chế độ frame của đối tượng
        view.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.97, alpha: 1.00)
        return view
    }()
    

    let RegisterLable: UILabel = {
        let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.text = "R E G I S T E R S"
        lable.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        lable.font = UIFont.boldSystemFont(ofSize: 24)
        return lable
    }()
    let textNumber: UITextField = {
        let text = UITextField()
        text.placeholder = ""
        text.textColor =  .black
        text.backgroundColor = .white
        text.translatesAutoresizingMaskIntoConstraints = false
        text.keyboardType = .numberPad
        text.layer.cornerRadius = 10
        return text
    }()
    let textAadhaar: UITextField = {
        let text = UITextField()
        text.placeholder = ""
        text.textColor =  .black
        text.backgroundColor = .white
        text.translatesAutoresizingMaskIntoConstraints = false
        text.keyboardType = .numberPad
        text.layer.cornerRadius = 10
        return text
    }()
    let textPass: UITextField = {
        let text = UITextField()
        text.placeholder = ""
        text.textColor =  .black
        text.backgroundColor = .white
        text.translatesAutoresizingMaskIntoConstraints = false
        text.keyboardType = .emailAddress
        text.layer.cornerRadius = 10
        return text
    }()
    let textConfirm: UITextField = {
        let text = UITextField()
        text.placeholder = ""
        text.textColor =  .black
        text.backgroundColor = .white
        text.translatesAutoresizingMaskIntoConstraints = false
        text.keyboardType = .emailAddress
        text.layer.cornerRadius = 10
        return text
    }()
    let mobileNumber: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15)
        label.text = "Number phone"
        label.textColor =  UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        return label
    }()
    let NumberAadhaar: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15)
        label.text = "Number Aadhaar"
        label.textColor =  UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        return label
    }()
    let Passwood: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15)
        label.text = "New Passwood"
        label.textColor =  UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        return label
    }()
    let Confirm: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15)
        label.text = "Confirm Passwood"
        label.textColor =  UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        return label
    }()
    let Hint: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 13)
        label.text = "By registering you automatically accept the Terms & Policies of COVID-19 app"
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 3
        label.textAlignment = .center
        label.textColor =  UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
       

        return label
    }()
    let Hint2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.text = "Have account? Log In"
        label.textColor =  UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        return label
    }()
    let Button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Register", for: .normal)
      button.tintColor = .white
      button.backgroundColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(containerView)
        containerView.addSubview(RegisterLable)
        containerView.addSubview(textPass)
        containerView.addSubview(textAadhaar)
        containerView.addSubview(textNumber)
        containerView.addSubview(textConfirm)
        containerView.addSubview(Confirm)
        containerView.addSubview(Passwood)
        containerView.addSubview(NumberAadhaar)
        containerView.addSubview(mobileNumber)
        containerView.addSubview(Button)
        containerView.addSubview(Hint)
        containerView.addSubview(Hint2)
        setUpLayOut()
       
    }
    func setUpLayOut () {
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        RegisterLable.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        RegisterLable.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 50).isActive = true
        
        textNumber.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        textNumber.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 200).isActive = true
        textNumber.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.9).isActive = true
        textNumber.heightAnchor.constraint(equalTo: containerView.heightAnchor,multiplier: 0.05).isActive = true
        
        textAadhaar.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        textAadhaar.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 300).isActive = true
        textAadhaar.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.9).isActive = true
        textAadhaar.heightAnchor.constraint(equalTo: containerView.heightAnchor,multiplier: 0.05).isActive = true
        
        textPass.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        textPass.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 400).isActive = true
        textPass.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.9).isActive = true
        textPass.heightAnchor.constraint(equalTo: containerView.heightAnchor,multiplier: 0.05).isActive = true
        
        textConfirm.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        textConfirm.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 500).isActive = true
        textConfirm.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.9).isActive = true
        textConfirm.heightAnchor.constraint(equalTo: containerView.heightAnchor,multiplier: 0.05).isActive = true
        
        Passwood.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: -130).isActive = true
        Passwood.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 375).isActive = true
        
        NumberAadhaar.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: -125).isActive = true
        NumberAadhaar.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 275).isActive = true
        
        mobileNumber.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: -130).isActive = true
        mobileNumber.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 175).isActive = true
        
        Confirm.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: -120).isActive = true
        Confirm.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 475).isActive = true
        
        Button.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        Button.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -250).isActive = true
        Button.layer.cornerRadius = 10
        Button.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.9).isActive = true
        Button.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 0.05).isActive = true
        
        Hint.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        Hint.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -160).isActive = true
        Hint.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.5).isActive = true
        
        Hint2.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        Hint2.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -100).isActive = true
    }
    
        
    

}
