//
//  AdvancedSecondTableViewCell.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/20.
//

import UIKit

class AdvancedSecondTableViewCell: UITableViewCell {
    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var titleV: UILabel!
    @IBOutlet weak var descV: UILabel!
    @IBOutlet weak var toggle: UISwitch!
    
    var viewModel : AdvancedSecondViewModel? {
        didSet {
            if let vm = viewModel {
                self.imageV.kf.setImage(with: URL(string: vm.url),options: [.transition(.fade(0.7))])
                self.titleV.text = vm.title
                self.descV.text = vm.desc
                self.toggle.isOn = vm.isChecked
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
