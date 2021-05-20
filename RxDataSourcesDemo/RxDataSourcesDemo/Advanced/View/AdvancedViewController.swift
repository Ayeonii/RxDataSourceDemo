//
//  AdvancedViewController.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/17.
//

import UIKit
import RxSwift
import RxDataSources

class AdvancedViewController: UIViewController {

    private let disposeBag = DisposeBag()
    private let viewModel = AdvancedViewModel()
    
    @IBOutlet weak var tableView: UITableView!{
        didSet {
            tableView.delegate = self
            tableView.register(UINib(nibName: "AdvancedTopTableViewCell", bundle: nil), forCellReuseIdentifier: "AdvancedTopTableViewCell")
            tableView.register(UINib(nibName: "AdvancedFirstTableViewCell", bundle: nil), forCellReuseIdentifier: "AdvancedFirstTableViewCell")
            tableView.register(UINib(nibName: "AdvancedSecondTableViewCell", bundle: nil), forCellReuseIdentifier: "AdvancedSecondTableViewCell")
        }
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        bindView()
    }
}

extension AdvancedViewController  {
 
    
    private func bindView() {
        viewModel.sectionItems
            .bind(to: tableView.rx.items(dataSource: viewModel.dataSource))
            .disposed(by: disposeBag)
    }
}

extension AdvancedViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0 :
            return 200
        case 1 :
            return 50
        default :
            return 150
        }
    }
}
