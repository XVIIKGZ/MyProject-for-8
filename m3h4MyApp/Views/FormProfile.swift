//
//  FormProfile.swift
//  m3h4MyApp
//
//  Created by Nazar Kydyraliev on 14/1/23.
//

import UIKit
import SnapKit

class FormProfile: UIViewController{
    
    private let tableView = UITableView()
    
    private let textTT: [String] = ["First Name", "Surname", "Age", "Email", "Number", "Country", "City"]
    
    private let indetifierCell = "cell"
    
    var formText = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(formText)
        initUI()
        // Do any additional setup after loading the view.
    }
    
    private func initUI() {
        view.backgroundColor = .white
        view.addSubview(tableView)
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        tableView.register(UINib(nibName: "TableViewTableViewCell", bundle: nil), forCellReuseIdentifier: indetifierCell)
        
        tableView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview().inset(16.0)
  
        }
    }
}

extension FormProfile: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        formText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: indetifierCell) as! TableViewTableViewCell
        cell.titleForm.text = textTT[indexPath.row]
        cell.titleForm.layer.cornerRadius = 10
        
        cell.titleFormProfile.text = formText[indexPath.row]
        cell.titleFormProfile.backgroundColor = .lightGray
        cell.titleFormProfile.layer.cornerRadius = 10
        cell.imgInfoProfile.image = UIImage(named: "info")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        140
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let endVC = EndApp()
        endVC.titleProfile = textTT[indexPath.row]
        endVC.textProfile = formText[indexPath.row]
        self.navigationController?.pushViewController(endVC, animated: true)
    }
    
}
