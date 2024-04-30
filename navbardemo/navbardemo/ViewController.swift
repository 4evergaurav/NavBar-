//
//  ViewController.swift
//  navbardemo
//
//  Created by STUDENT on 4/29/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Bar items"
        view.backgroundColor = .systemTeal
        
        // Change navigation bar color
        navigationController?.navigationBar.barTintColor = .systemTeal
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemGreen
        button.setTitle("Go to View 2", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        navigationController?.navigationBar.tintColor = .label
        configureItems()
    }

    private func configureItems() {
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: nil
            ),
            
            UIBarButtonItem(
            image: UIImage(systemName: "person.circle"),
            style: .done,
            target: self,
            action: nil
            )
        ]
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "gear"),
            style: .done,
            target: self,
            action: nil
            )
    }
    
    @objc func didTapButton(){
        let vc = UIViewController()
        vc.title = "View 2"
        vc.view.backgroundColor = .systemMint
        
        vc.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign out",
                                                               style: .done,
                                                               target: self,
                                                               action: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
}
