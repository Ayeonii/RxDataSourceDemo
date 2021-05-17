//
//  BasicViewController.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/17.
//

/*
 - TableView 한 Section 기준.
 */
import UIKit
import RxSwift
import RxDataSources

class BasicViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "ReuseTableViewCell")
            tableView.delegate = self
        }
    }
    
    private let disposeBag = DisposeBag()
    private let viewModel = BasicViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindView()
    }
    
    func bindView() {
        self.viewModel.items
            .bind(to: tableView.rx.items(cellIdentifier : "ReuseTableViewCell")){ indexPath, title, cell in
                cell.textLabel?.text = title
            }.disposed(by: disposeBag)
    }
}

extension BasicViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 50
        default:
            return 100
        }
    }
}
