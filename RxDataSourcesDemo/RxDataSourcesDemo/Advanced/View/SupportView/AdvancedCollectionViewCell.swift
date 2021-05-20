//
//  AdvancedCollectionViewCell.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/20.
//

import UIKit

class AdvancedCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var titleV: UILabel!
    @IBOutlet weak var descV: UILabel!
    
    var dataModel : AdvancedTopModel! {
        didSet {
            self.imageV.kf.setImage(with: URL(string: dataModel.url),options: [.transition(.fade(0.7))])
            self.titleV.text = dataModel.title
            self.descV.text = dataModel.desc
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageV.contentMode = .scaleAspectFill
        imageV.clipsToBounds = true
    }

}
