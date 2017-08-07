//
//  ViewController.swift
//  HDImagePicker
//
//  Created by ddd on 17/8/2.
//  Copyright © 2017年 HuangDong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var picArr:NSMutableArray!     //图片数组
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picArr = NSMutableArray()
        
        initView()
    }
    
    func initView() {
        mainTableView.tableHeaderView = headerView
        view.addSubview(mainTableView)
    }

    //MARK:懒加载控件
    
    //headerView
    lazy var headerView:HDTableHeaderView = {
    
        let headerV = Bundle.main.loadNibNamed("HDTableHeaderView", owner: nil, options: nil)?[0] as! HDTableHeaderView
        headerV.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 260)
        return headerV
        
    }()
    
    //mainTableView
    lazy var mainTableView:UITableView = {
    
        let mainT = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height), style: .plain)
        
        mainT.delegate = self
        mainT.dataSource = self
        
        mainT.separatorStyle = .none
        
        mainT.register(UINib.init(nibName: "HDPicTableViewCell", bundle: nil), forCellReuseIdentifier: "HDPicTableViewCell")
        
        return mainT
    }()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return picArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HDPicTableViewCell", for: indexPath) as! HDPicTableViewCell
        
        return cell
        
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        headerView.hdMaxPicNum.resignFirstResponder()
    }
}
