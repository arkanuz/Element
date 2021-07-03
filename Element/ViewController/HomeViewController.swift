//
//  HomeViewController.swift
//  Element
//
//  Created by Adolfo Lozada Serena on 01/07/21.
//

import UIKit

private let homeTableCellId = "homeTableCellId"

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Array con los nombres de los libros que mostrará cada celda. Con tiempo suficiente se debe generar una clase que maneje estos datos.
    let coll1:[String] = ["Book_1.png", "Book_2.png", "Book_3.png", "Book_1.png", "Book_2.png", "Book_3.png"]
    let coll2:[String] = ["Book_4.png", "Book_5.png", "Book_4.png", "Book_5.png"]
    
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var textView: UIView!
    @IBOutlet weak var homeTableView: UITableView!
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchView.layer.borderColor = UIColor.gray.cgColor
        searchView.layer.borderWidth = 1
        searchView.layer.cornerRadius = searchView.frame.size.height/2
        
        textView.layer.borderColor = UIColor.gray.cgColor
        textView.layer.borderWidth = 1
        textView.layer.cornerRadius = 5
        
        homeTableView.register(UINib.init(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: homeTableCellId)
    }
    
    // MARK: - Actions
    
    @IBAction func tapAction(_ sender: Any) {
        view.endEditing(true)
    }
    
    // MARK: - TableView Delegate + DataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        // Los tamaños son fijos, con un poco más de tiempo se debe generar un diccionario para estos tamaños
        if indexPath.row == 0 {
            return 185
        } else {
            return 230
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Se usó un collectionview para cada celda y así crear el efecto deseado. Se deben pasar 3 parámetros obligatorios: section, array y titleColLabel.text
        let cell = tableView.dequeueReusableCell(withIdentifier: homeTableCellId, for: indexPath) as! TableViewCell
        
        cell.section = indexPath.row
        if indexPath.row == 0 {
            cell.array = coll1
            cell.titleColLabel.text = "TestColl"
        } else {
            cell.array = coll2
            cell.titleColLabel.text = "TestColl 2"
        }
        return cell
    }
}
