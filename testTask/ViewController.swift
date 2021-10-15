//
//  ViewController.swift
//  testTask
//
//  Created by Ramazan on 15.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designMenu()
        
 }
    func designMenu(){
        
        let labelTitle = UILabel()
        labelTitle.text = "Тестовое Задание"
        labelTitle.numberOfLines = 0
        labelTitle.font = UIFont(name: labelTitle.font.fontName, size: 33)
        labelTitle.textColor = .orange
        view.addSubview(labelTitle)

        labelTitle.translatesAutoresizingMaskIntoConstraints = false
        labelTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        labelTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        
        
        
        let buttonStart = UIButton()
        buttonStart.setTitle("Начать", for: .normal)
        buttonStart.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        buttonStart.setTitleColor(.blue, for: .normal)
        buttonStart.addTarget(self, action: #selector(openListView), for: .touchUpInside)
        
        view.addSubview(buttonStart)
        
        buttonStart.translatesAutoresizingMaskIntoConstraints = false
        buttonStart.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonStart.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
    }
    
    @objc func openListView(){
        let listView = listViewController()
        listView.modalPresentationStyle = .fullScreen
       self.present(listView, animated: true)
    }
}

