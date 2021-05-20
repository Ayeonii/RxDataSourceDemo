//
//  IntermediateTableViewCell.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/17.
//

import UIKit

class IntermediateTableViewCell: UITableViewCell {

    @IBOutlet weak var interTitle: UILabel!
    @IBOutlet weak var interDesc: UILabel!
    
    var viewModel : IntermediateItemViewModel? {
        didSet {
            if let model = viewModel {
                self.interTitle?.text = model.title
                self.interDesc?.text = model.desc
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
