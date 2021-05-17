//
//  IntermediateViewController.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/17.
//

import UIKit
import RxSwift
import RxDataSources

class IntermediateViewController: UIViewController {
    /*
     - TableView 여러 Section
     */
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.register(UINib(nibName: "IntermediateTableViewCell", bundle: nil), forCellReuseIdentifier: "IntermediateTableViewCell")
        }
    }
    
    private var viewModel = IntermediateViewModel()
    private var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindData()
    }
    
    private func bindData() {
        self.viewModel.sectionItems
            .bind(to : tableView.rx.items(dataSource: viewModel.dataSource))
            .disposed(by: disposeBag)
    }
}

extension IntermediateViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
