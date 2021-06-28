//
//  Menu1ViewController.swift
//  2
//
//  Created by Apple on 27/06/2021.
//

import UIKit

class Menu1ViewController: UIViewController {
    @IBOutlet weak var ViewUI: UIImageView!
    let containerView: UIView = {
          let view = UIView()
          view.translatesAutoresizingMaskIntoConstraints = false
          view.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.97, alpha: 1.00)
          return view
      }()
    let topView: UIView = {
          let view = UIView()
          view.translatesAutoresizingMaskIntoConstraints = false
          view.backgroundColor = UIColor(red: 0.53, green: 0.81, blue: 0.65, alpha: 1.00)
          return view
      }()
    
    let photoImageView: UIView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "line")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    let Hint: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 30)
        label.text = "What are you looking for --"
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 3
        label.textAlignment = .left
        label.textColor =  UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        return label
    }()
    let Button1: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("COVID-19 Test Request", for: .normal)
        button.setTitleColor(UIColor(red: 0.00, green: 0.55, blue: 0.01, alpha: 1.00), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.contentHorizontalAlignment = .left
        button.backgroundColor = .white
        return button
    }()
    let Button2: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("COVID-19 Prevention", for: .normal)
        button.setTitleColor(UIColor(red: 0.00, green: 0.55, blue: 0.01, alpha: 1.00), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.contentHorizontalAlignment = .left
        button.backgroundColor = .white
        return button
    }()
    let Button3: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Important Number", for: .normal)
        button.setTitleColor(UIColor(red: 0.00, green: 0.55, blue: 0.01, alpha: 1.00),for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.contentHorizontalAlignment = .left
        button.backgroundColor = .white
        return button
    }()
    let Button4: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Support", for: .normal)
        button.setTitleColor(UIColor(red: 0.00, green: 0.55, blue: 0.01, alpha: 1.00), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.contentHorizontalAlignment = .left
        button.backgroundColor = .white
        
        return button
    }()
    let photoButton1: UIView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "circle")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    let photoButton2: UIView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "circle")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    let photoButton3: UIView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "circle")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    let photoButton4: UIView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "circle")
        imageView.contentMode = .scaleAspectFill
        imageView.tintColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        imageView.backgroundColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(containerView)
        containerView.addSubview(photoImageView)
        containerView.addSubview(Hint)
        containerView.addSubview(ViewUI)
        containerView.addSubview(topView)
        containerView.addSubview(Button1)
        containerView.addSubview(Button2)
        containerView.addSubview(Button3)
        containerView.addSubview(Button4)
        containerView.addSubview(photoButton4)
        containerView.addSubview(photoButton1)
        containerView.addSubview(photoButton2)
        containerView.addSubview(photoButton3)
        setUpLayOut()
    }
    func setUpLayOut () {
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        photoImageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: -150).isActive = true
        photoImageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: -350).isActive = true
        photoImageView.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.1).isActive = true
        
        Hint.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: -70).isActive = true
        Hint.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 200).isActive = true
        Hint.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.5).isActive = true
        
        
        ViewUI.layer.cornerRadius = 20
        ViewUI.backgroundColor = .black
        ViewUI.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 150).isActive = true
        ViewUI.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: -400).isActive = true
        
       
        topView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        topView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 50).isActive = true
        topView.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.5).isActive = true
        topView.backgroundColor = UIColor(red: 0.53, green: 0.81, blue: 0.65, alpha: 1.00)
        
        Button1.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        Button1.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 300).isActive = true
        Button1.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.9).isActive = true
        Button1.heightAnchor.constraint(equalTo: containerView.heightAnchor,multiplier: 0.1).isActive = true
        
        Button2.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        Button2.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 450).isActive = true
        Button2.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.9).isActive = true
        Button2.heightAnchor.constraint(equalTo: containerView.heightAnchor,multiplier: 0.1).isActive = true
        
        Button3.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        Button3.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 600).isActive = true
        Button3.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.9).isActive = true
        Button3.heightAnchor.constraint(equalTo: containerView.heightAnchor,multiplier: 0.1).isActive = true
        
        Button4.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        Button4.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 750).isActive = true
        Button4.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.9).isActive = true
        Button4.heightAnchor.constraint(equalTo: containerView.heightAnchor,multiplier: 0.1).isActive = true
        
        photoButton4.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 150).isActive = true
        photoButton4.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.09).isActive = true
        photoButton4.heightAnchor.constraint(equalTo: containerView.heightAnchor,multiplier: 0.1).isActive = true
        photoButton4.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 750).isActive = true
        
        photoButton3.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 150).isActive = true
        photoButton3.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.09).isActive = true
        photoButton3.heightAnchor.constraint(equalTo: containerView.heightAnchor,multiplier: 0.1).isActive = true
        photoButton3.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 600).isActive = true
        
        photoButton2.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 150).isActive = true
        photoButton2.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.09).isActive = true
        photoButton2.heightAnchor.constraint(equalTo: containerView.heightAnchor,multiplier: 0.1).isActive = true
        photoButton2.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 450).isActive = true
        
        photoButton1.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 150).isActive = true
        photoButton1.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.09).isActive = true
        photoButton1.heightAnchor.constraint(equalTo: containerView.heightAnchor,multiplier: 0.1).isActive = true
        photoButton1.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 300).isActive = true
    }



}
