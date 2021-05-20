//
//  IntermediateThirdTableViewCell.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/18.
//

import UIKit
import Kingfisher

class IntermediateThirdTableViewCell: UITableViewCell {
    
    @IBOutlet weak var thirdImage: UIImageView!
    @IBOutlet weak var thirdTitle: UILabel!
    @IBOutlet weak var thirdDesc: UILabel!
    @IBOutlet weak var toggleBtn: UISwitch!
    
    var viewModel : IntermediateThirdViewModel? {
        didSet {
            if let vm = viewModel {
                self.thirdTitle.text = vm.title
                self.thirdDesc.text = vm.desc
                self.thirdImage.kf.setImage(with: URL(string: vm.url),options: [.transition(.fade(0.7))])

                toggleBtn.isOn = vm.isChecked
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        thirdImage.contentMode = .scaleAspectFill
        thirdImage.clipsToBounds = true
    }
}
