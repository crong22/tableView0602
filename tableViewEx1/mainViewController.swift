//
//  mainViewController.swift
//  tableViewEx1
//
//  Created by 여누 on 6/1/24.
//

import UIKit

class mainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    let toplist = ["카페","지하철역","식당","영화관"]
    var bottomlist = StoreList.store
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var mainUIView: UIView!
    @IBOutlet var findTextField: UITextField!
    
    @IBOutlet var findButton: UIButton!
    
    @IBOutlet var topTableView: UITableView!
    @IBOutlet var bottomTableView: UITableView!
    
    @IBOutlet var tableView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 검색필드 설정
        
        findTextField.borderStyle = .line
        findTextField.layer.borderWidth = 1.5
        findTextField.text = "장소를 입력해주세요"
        findTextField.textAlignment = .center
        findTextField.font = .systemFont(ofSize: 14)
        findTextField.textColor = .darkGray
        findTextField.keyboardType = .default
        
        findTextField.delegate = self
        
        // 검색버튼
        findButton.setTitle("검 색", for: .normal)
        findButton.setTitleColor(.black, for: .normal)
        findButton.layer.borderWidth = 1.5
        findButton.titleLabel?.font = .systemFont(ofSize: 14)
        
        configureTableView()
        
        
    }
        
    func configureTableView() {
        let xib = UINib(nibName: "CategoryTableViewCell", bundle: nil)
        topTableView.register(xib, forCellReuseIdentifier: "CategoryTableViewCell")
        let xib2 = UINib(nibName: "MainTableViewCell", bundle: nil)
        bottomTableView.register(xib2, forCellReuseIdentifier: "MainTableViewCell")
        
        topTableView.delegate = self
        topTableView.dataSource = self
        topTableView.register(xib, forCellReuseIdentifier: "CategoryTableViewCell")
        
        bottomTableView.delegate = self
        bottomTableView.dataSource = self
        bottomTableView.register(xib, forCellReuseIdentifier: "CategoryTableViewCell")

    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == topTableView {
            return UITableView.automaticDimension
        }else {
            return UITableView.automaticDimension
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == topTableView {
            print("topTableView \(toplist.count)")
            return toplist.count
        }else {
            return bottomlist.count
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == topTableView {
            if indexPath.row == 0 {
                var cafe : [Store] = []
                var list1 = StoreList.store
                
                for i in list1 {
                    if i.category == "카페" {
                        cafe.append(i)
                    }
                }
                bottomlist = cafe
                bottomTableView.reloadData()
            }else if indexPath.row == 1 {
                var station : [Store] = []
                var list2 = StoreList.store
                
                for i in list2 {
                    if i.category == "지하철역" {
                        station.append(i)
                    }
                }
                bottomlist = station
                bottomTableView.reloadData()
            }else if indexPath.row == 2{
                var restaurant : [Store] = []
                var list3 = StoreList.store
                
                for i in list3 {
                    if i.category == "식당" {
                        restaurant.append(i)
                    }
                }
                bottomlist = restaurant
                bottomTableView.reloadData()
            }else {
                var cinema : [Store] = []
                var list4 = StoreList.store
                
                for i in list4 {
                    if i.category == "영화관" {
                        cinema.append(i)
                    }
                }
                bottomlist = cinema
                bottomTableView.reloadData()
            }
        }else {
            print("범주에없는카테고리입니다.")
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell", for: indexPath) as! CategoryTableViewCell


        
        if tableView == topTableView {
            let data = toplist[indexPath.row]
            
            if data == "카페"{
                cell.mainImageView.image = UIImage(named: "cafe")
                cell.titleLabel.text = "카페"
                return cell
            }else if data == "지하철역" {
                cell.mainImageView.image = UIImage(named: "station")
                cell.titleLabel.text = "지하철역"
                return cell
            }else if data == "식당"{
                cell.mainImageView.image = UIImage(named: "restaurant")
                cell.titleLabel.text = "식당"
                return cell
            }else {
                cell.mainImageView.image = UIImage(named: "cinema")
                cell.titleLabel.text = "영화관"
                return cell
            }
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as! MainTableViewCell
            var data = bottomlist[indexPath.row]
            cell.titleLabel.text = data.title
            cell.subLabel.text = data.address
            return cell
        }
        
    }
}

extension mainViewController : UITextFieldDelegate {

    func textFieldDidBeginEditing(_ textField: UITextField) {
        if findTextField.textColor == .darkGray {
            findTextField.text = nil
            findTextField.textColor = .black
        }
    }
}
