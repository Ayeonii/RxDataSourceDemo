//
//  IntermediateMoreViewController.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/18.
//

import UIKit
import RxSwift
import RxDataSources

class IntermediateMoreViewController: UIViewController {
    
    private let disposeBag = DisposeBag()
    private let viewModel = IntermediateMoreViewModel()
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.register(UINib(nibName: "IntermediateFirstTableViewCell", bundle: nil), forCellReuseIdentifier: "IntermediateFirstTableViewCell")
            tableView.register(UINib(nibName: "IntermediateSecondTableViewCell", bundle: nil), forCellReuseIdentifier: "IntermediateSecondTableViewCell")
            tableView.register(UINib(nibName: "IntermediateThirdTableViewCell", bundle: nil), forCellReuseIdentifier: "IntermediateThirdTableViewCell")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindView()
    }
}

extension IntermediateMoreViewController {
    private func bindView() {
        viewModel.sections.bind(to: tableView.rx.items(dataSource: viewModel.dataSource))
            .disposed(by: disposeBag)
    }
}

extension IntermediateMoreViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0 :
            return 50
        default :
            return 150
        }
    }
}
