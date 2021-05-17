//
//  IntermediateItemViewModel.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/17.
//

import Foundation

struct IntermediateItemViewModel {
    var title : String
    var desc : String
    
    init(itemModel : IntermediateItemModel){
        self.title = itemModel.itemTitle
        self.desc = itemModel.itemDesc
    }
}
