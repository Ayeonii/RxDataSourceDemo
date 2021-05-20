//
//  InterMediateSecondTableViewCell.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/18.
//

import UIKit
import Kingfisher

class IntermediateSecondTableViewCell: UITableViewCell {
    
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var secondTitle: UILabel!
    @IBOutlet weak var secondDesc: UILabel!
    
    var viewModel : IntermediateSecondeViewModel? {
        didSet {
            if let vm = viewModel {
                self.secondTitle.text = vm.title
                self.secondDesc.text = vm.desc
                self.secondImage.kf.setImage(with: URL(string: vm.url),options: [.transition(.fade(0.7))])
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        secondImage.contentMode = .scaleAspectFill
        secondImage.clipsToBounds = true
    }

}
