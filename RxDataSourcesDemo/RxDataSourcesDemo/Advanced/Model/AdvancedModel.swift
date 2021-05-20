//
//  AdvancedModel.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/20.
//

import RxDataSources

struct AdvancedTopModel {
    var title : String
    var desc : String
    var url : String
    
    init(title : String, desc : String, url : String) {
        self.title = title
        self.desc = desc
        self.url = url
    }
}

struct AdvancedFirstModel {
    var title : String
    var desc : String
    
    init(title : String, desc : String) {
        self.title = title
        self.desc = desc
    }
}

struct AdvancedSecondModel {
    var title : String
    var desc : String
    var url : String
    var isChecked : Bool
    
    init(title : String, desc : String, url : String, isChecked : Bool) {
        self.title = title
        self.desc = desc
        self.url = url
        self.isChecked = isChecked
    }
}

enum AdvancedSectionItem {
    case Top([AdvancedTopModel])
    case First(AdvancedFirstModel)
    case Second(AdvancedSecondModel)
}

enum AdvancedSectionModel {
    case TopSection(sectionTitle : String, content : [AdvancedSectionItem])
    case FirstSection(sectionTitle : String, content :[AdvancedSectionItem])
    case SecondSection(sectionTitle : String, content :[AdvancedSectionItem])
}

extension AdvancedSectionModel : SectionModelType {
    typealias Item = AdvancedSectionItem
    var items: [Item] {
        switch self {
        case let .TopSection(_, content) :
        return  content
        case let .FirstSection(_, content) :
        return  content
        case let .SecondSection(_, content) :
        return  content
        }
    }
    
    var sectionTitle : String {
        switch self {
        case let .TopSection(sectionTitle, _) :
        return  sectionTitle
        case let .FirstSection(sectionTitle, _) :
        return  sectionTitle
        case let .SecondSection(sectionTitle, _) :
        return  sectionTitle
        }
    }
    
    init(original: Self, items: [Item]) {
        self = original
//        switch original {
//        case let .TopSection(sectionTitle, content):
//        self = .TopSection(sectionTitle : sectionTitle, content : content)
//        case let .FirstSection(sectionTitle, content):
//        self = .FirstSection(sectionTitle : sectionTitle, content : content)
//        case let .SecondSection(sectionTitle, content):
//        self = .SecondSection(sectionTitle : sectionTitle, content : content)
//        }
    }
}

struct AdvancedDataSource {
    typealias DataSource = RxTableViewSectionedReloadDataSource
    
    static func dataSource() -> DataSource<AdvancedSectionModel> {
        return .init(configureCell: { dataSource, tableView, indexPath, sectionItem -> UITableViewCell in
            switch dataSource[indexPath] {
            case .Top(let topItem) :
                let cell = tableView.dequeueReusableCell(withIdentifier: "AdvancedTopTableViewCell", for: indexPath) as! AdvancedTopTableViewCell
                cell.viewModel = AdvancedTopViewModel(data: topItem)
                return cell
            case .First(let firstItem) :
                let cell = tableView.dequeueReusableCell(withIdentifier: "AdvancedFirstTableViewCell", for: indexPath) as! AdvancedFirstTableViewCell
                cell.viewModel = AdvancedFirstViewModel(data: firstItem)
                return cell
            case .Second(let secondItem) :
                let cell = tableView.dequeueReusableCell(withIdentifier: "AdvancedSecondTableViewCell", for: indexPath) as! AdvancedSecondTableViewCell
                cell.viewModel = AdvancedSecondViewModel(data: secondItem)
                return cell

            }
        }, titleForHeaderInSection: {dataSource, index in
            return dataSource.sectionModels[index].sectionTitle
        })
    }
}
