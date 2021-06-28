//
//  CoCoaViewController.swift
//  2
//
//  Created by Apple on 25/06/2021.
//

import UIKit

class CoCoaViewController: UIViewController {
   

    
        
       
        
        let containerView: UIView = {
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false // set = false thì vô hiệu hoá chế độ frame của đối tượng
            view.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.97, alpha: 1.00)
            return view
        }()
        
        let photoImageView: UIView = {
            let imageView = UIImageView()
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.image = UIImage(named: "y-te")
            imageView.contentMode = .scaleAspectFill
            return imageView
            
        }()
        
        let covidLable: UILabel = {
            let labale = UILabel()
            labale.translatesAutoresizingMaskIntoConstraints = false
            labale.text = "COVID - 19"
            labale.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
            labale.font = UIFont.boldSystemFont(ofSize: 40)
            return labale
        }()
        
        let bookingLable: UILabel = {
            let labale = UILabel()
            labale.translatesAutoresizingMaskIntoConstraints = false
            labale.text = "Test booking app"
            labale.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
            labale.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.light)

            return labale
        }()
        
        

        override func viewDidLoad() {
            super.viewDidLoad()
            
            // MARK: add subViews
            self.view.addSubview(containerView)
            containerView.addSubview(photoImageView)
            containerView.addSubview(covidLable)
            containerView.addSubview(bookingLable)
            
            // MARK: auto lauout
            setupLayout() // gọi hàm xử lý lauout bên dưới phần addSubView
            

        }
        
        func setupLayout() {
            
            // containerView
            containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
            containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
            containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
            containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
            
            photoImageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
            photoImageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: -100).isActive = true
            photoImageView.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.5).isActive = true

            covidLable.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
            covidLable.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 50).isActive = true
            bookingLable.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
            bookingLable.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 100).isActive = true
            
            
        }
            
        
    }
