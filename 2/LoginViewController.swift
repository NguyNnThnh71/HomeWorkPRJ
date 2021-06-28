//
//  LoginViewController.swift
//  2
//
//  Created by Apple on 25/06/2021.
//

import UIKit

class LoginViewController: UIViewController {
    var isState: Bool = true
    let containerView: UIView = {
          let view = UIView()
          view.translatesAutoresizingMaskIntoConstraints = false
          view.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.97, alpha: 1.00)
          return view
      }()
      
      let loginLable: UILabel = {
          let lable = UILabel()
          lable.translatesAutoresizingMaskIntoConstraints = false
          lable.text = "L O G I N"
          lable.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
          lable.font = UIFont.boldSystemFont(ofSize: 24)
          return lable
      }()
    let forgot: UILabel = {
        let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.text = "Forgot?"
        lable.textColor = .gray
        lable.font = UIFont.boldSystemFont(ofSize: 12)
        return lable
    }()
      let passwordButton: UIButton = {
          let button = UIButton()
          button.translatesAutoresizingMaskIntoConstraints = false
          button.setTitle("Login", for: .normal)
        button.tintColor = .white
        button.backgroundColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
          return button
      }()
    let mobileNumber: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15)
        label.text = "Number phone"
        label.textColor =  UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        return label
    }()
    let Passwood: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        label.text = " Passwood "
        return label
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
    let textPass: UITextField = {
        let text = UITextField ()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.placeholder = ""
        text.textColor =  .black
        text.backgroundColor = .white
        text.keyboardType = .emailAddress
        text.layer.cornerRadius = 10
        text.isSecureTextEntry = true
        

        return text
    }()
    let Hint: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "New Users? Resignter Here "
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor =  UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        label.attributedText = NSAttributedString(string: "Have account? Log In", attributes: [.underlineStyle: NSUnderlineStyle.single.rawValue])

        return label
    }()
      
    override func viewDidLoad() {
        super.viewDidLoad()

       
              self.view.addSubview(containerView)
              containerView.addSubview(loginLable)
              containerView.addSubview(Passwood)
              containerView.addSubview(mobileNumber)
              containerView.addSubview(textPass)
              containerView.addSubview(textNumber)
              containerView.addSubview(passwordButton)
              containerView.addSubview(forgot)
              containerView.addSubview(Hint)
              addRightImageTo(textPass, "open")
              isState = false
              setupLayout()
          }
          
          func setupLayout() {
              containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
              containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
              containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
              containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
              
              loginLable.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
              loginLable.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 50).isActive = true
              
              
            textNumber.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
            textNumber.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 300).isActive = true
            textNumber.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
            textNumber.heightAnchor.constraint(equalTo: containerView.heightAnchor,multiplier: 0.05).isActive = true
            
            textPass.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
            textPass.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 400).isActive = true
            textPass.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
            textPass.heightAnchor.constraint(equalTo: containerView.heightAnchor,multiplier: 0.05).isActive = true
            
            passwordButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
            passwordButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -350).isActive = true
            passwordButton.layer.cornerRadius = 10
            passwordButton.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
            passwordButton.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 0.05).isActive = true
            
            Passwood.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: -130).isActive = true
            Passwood.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 375).isActive = true
            
            mobileNumber.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: -112).isActive = true
            mobileNumber.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 275).isActive = true
            
            forgot.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 135).isActive = true
            forgot.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 375).isActive = true
            
            
            
            Hint.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: -10).isActive = true
            Hint.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -300).isActive = true
          }
          
    func addRightImageTo(_ textField: UITextField, _ nameImage: String) {
        let imageView = UIImageView(frame: CGRect(x: 8.0, y: 8.0, width: 24.0, height: 24.0))
        let image = UIImage(named: "open")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        

        let view = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        view.addSubview(imageView)
        view.backgroundColor = .white
        textPass.rightViewMode = .always
        textPass.rightView = view
    }
    
    
    
}
