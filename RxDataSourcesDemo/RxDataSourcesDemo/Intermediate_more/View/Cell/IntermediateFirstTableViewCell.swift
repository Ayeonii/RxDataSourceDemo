//
//  InterMediateFirstTableViewCell.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/18.
//

import UIKit

class IntermediateFirstTableViewCell: UITableViewCell {

    @IBOutlet weak var firstTitle: UILabel!
    @IBOutlet weak var firstDesc: UILabel!
    
    var viewModel : IntermediateFirstViewModel? {
        didSet {
            if let data = viewModel {
                firstTitle.text = data.title
                firstDesc.text = data.desc
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
