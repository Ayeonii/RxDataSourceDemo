//
//  AdvancedTopTableViewCell.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/20.
//

import UIKit
import RxSwift
import RxCocoa

class AdvancedTopTableViewCell: UITableViewCell {

    private let disposeBag = DisposeBag()
    private var flowLayout : UICollectionViewFlowLayout?
    var viewModel : AdvancedTopViewModel! {
        didSet {
            self.bindCollectionView()
        }
    }
    
    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            flowLayout = UICollectionViewFlowLayout()
            flowLayout?.itemSize = CGSize(width: 100, height: 200)
            flowLayout?.minimumLineSpacing = 20
            flowLayout?.scrollDirection = .horizontal
            collectionView.collectionViewLayout = flowLayout!
            
            collectionView.register(UINib(nibName: "AdvancedCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "AdvancedCollectionViewCell")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

extension AdvancedTopTableViewCell {
    private func bindCollectionView() {
        collectionView.dataSource = nil
        viewModel.list
            .bind(to : collectionView.rx.items(
                    cellIdentifier: "AdvancedCollectionViewCell",
                    cellType: AdvancedCollectionViewCell.self)
            ){ indexPath, data, cell in
                cell.dataModel = data
            }.disposed(by: disposeBag)
    }
}
