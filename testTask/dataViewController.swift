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
        
        
        // Do any additional setup after loading the view.
    }
    

    func designMenu(){
        
        let blurEffect = UIBlurEffect(style: .light)
        let visualEffect = UIVisualEffectView()
        view.addSubview(visualEffect)
        visualEffect.effect = blurEffect
        visualEffect.translatesAutoresizingMaskIntoConstraints = false
        visualEffect.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        visualEffect.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        visualEffect.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        visualEffect.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        
        let labelTitle = UILabel()
        labelTitle.text = structData?.title
        labelTitle.numberOfLines = 0
        labelTitle.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        labelTitle.textColor = .orange
        view.addSubview(labelTitle)

        labelTitle.translatesAutoresizingMaskIntoConstraints = false
        labelTitle.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -25).isActive = true
        labelTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        labelTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        let labelBody = UILabel()
        labelBody.text = structData?.body
        labelBody.numberOfLines = 0
        
        view.addSubview(labelBody)

        labelBody.translatesAutoresizingMaskIntoConstraints = false
        labelBody.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -25).isActive = true
        labelBody.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        labelBody.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        

        
    }

}
