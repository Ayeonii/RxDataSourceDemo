//
//  IntermediateModel.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/17.
//

import RxDataSources

struct IntermediateModel {
    var items : [Item]
    var sectionTitle : String
    
    init(itemList : [IntermediateItemModel], sectionTitle : String) {
        self.items = itemList
        self.sectionTitle = sectionTitle
    }
}

struct IntermediateItemModel  {
    var itemTitle : String
    var itemDesc : String
    
    init(itemTitle : String, itemDesc : String) {
        self.itemTitle = itemTitle
        self.itemDesc = itemDesc
    }
}

extension IntermediateModel : SectionModelType {
    typealias Item = IntermediateItemModel
    
    init(original: IntermediateModel, items: [Item]) {
        self = original
    }
}

struct IntermediateDatasource {
    typealias DataSource = RxTableViewSectionedReloadDataSource
    
    static func dataSource() -> DataSource<IntermediateModel> {
        return .init(configureCell: { dataSource, tableView, indexPath, item -> UITableViewCell in
            let cell = tableView.dequeueReusableCell(withIdentifier: "IntermediateTableViewCell", for: indexPath) as! IntermediateTableViewCell

            cell.viewModel = IntermediateItemViewModel(itemModel: item)
            return cell
        }, titleForHeaderInSection: { dataSource, index in
            return dataSource.sectionModels[index].sectionTitle
        })
    }
}


