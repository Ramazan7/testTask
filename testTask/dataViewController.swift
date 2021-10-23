//
//  dataViewController.swift
//  testTask
//
//  Created by Ramazan on 15.10.2021.
//

import UIKit

class dataViewController: UIViewController {
    
    var structData:structJson?
    let sizeScreen = UIScreen.main.bounds
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designMenu()
    }
    
    
    func designMenu(){
        //blur background
        let blurEffect = UIBlurEffect(style: .light)
        let visualEffect = UIVisualEffectView()
        view.addSubview(visualEffect)
        visualEffect.effect = blurEffect
        visualEffect.translatesAutoresizingMaskIntoConstraints = false
        visualEffect.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        visualEffect.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        visualEffect.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        visualEffect.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        let stackView = UIStackView()
        stackView.axis  = .vertical
        stackView.spacing = 20
        stackView.alignment = .center
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40).isActive = true
       
        let labelViewTitle = UILabel()
        labelViewTitle.text = "Title:"
        labelViewTitle.numberOfLines = 0
        labelViewTitle.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        labelViewTitle.textColor = .orange
        stackView.addArrangedSubview(labelViewTitle)
        
        let labelTitle = UILabel()
        labelTitle.text = structData?.title
        labelTitle.numberOfLines = 0
        labelTitle.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        labelTitle.textColor = .orange
        stackView.addArrangedSubview(labelTitle)
      
        let labelBody = UILabel()
        labelBody.text = structData?.body
        labelBody.numberOfLines = 0
        
        stackView.addArrangedSubview(labelBody)
        
    }

}
