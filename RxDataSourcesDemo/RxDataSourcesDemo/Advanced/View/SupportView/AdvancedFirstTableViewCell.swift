//
//  AdvancedFirstTableViewCell.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/20.
//

import UIKit

class AdvancedFirstTableViewCell: UITableViewCell {

    @IBOutlet weak var titleV: UILabel!
    @IBOutlet weak var descV: UILabel!
    
    var viewModel : AdvancedFirstViewModel? {
        didSet {
            if let vm = viewModel {
                self.titleV.text = vm.title
                self.descV.text = vm.desc
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
