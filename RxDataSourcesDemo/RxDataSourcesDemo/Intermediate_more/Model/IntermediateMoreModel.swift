//
//  IntermediateMoreModel.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/18.
//

import RxDataSources

struct InterFirstModel {
    var title : String
    var desc : String
    
    init(title : String, desc : String) {
        self.title = title
        self.desc = desc
    }
}

struct InterSecondModel {
    var title : String
    var desc : String
    var url : String
    
    init(title : String, desc : String, url : String){
        self.title = title
        self.desc = desc
        self.url = url
    }
}

struct InterThirdModel {
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

// MARK: - DataSources
enum IntermediateMoreSectionItem {
    case First(InterFirstModel)
    case Second(InterSecondModel)
    case Third(InterThirdModel)
}

enum IntermediateMoreSectionModel {
    case FirstSection(content : [IntermediateMoreSectionItem])
    case SecondSection(content : [IntermediateMoreSectionItem])
    case ThirdSection(content : [IntermediateMoreSectionItem])
}

extension IntermediateMoreSectionModel : SectionModelType {
    typealias Item = IntermediateMoreSectionItem
    
    var items : [Item] {
        switch self {
        case let .FirstSection(content) :
            return content
        case let .SecondSection(content) :
            return content
        case let .ThirdSection(content) :
            return content
        }
    }
    
    var sectionTitles : String {
        switch self {
        case .FirstSection(_) :
            return "FirstSection"
        case .SecondSection(_) :
            return "SecondSection"
        case .ThirdSection(_) :
            return "ThirdSection"
        }
    }
    
    init(original: IntermediateMoreSectionModel, items: [IntermediateMoreSectionItem]) {
        switch original {
        case let .FirstSection(content) :
            self = .FirstSection(content : content)
        case let .SecondSection(content) :
            self = .SecondSection(content : content)
        case let .ThirdSection(content) :
            self = .ThirdSection(content : content)
        }
    }
}

struct IntermediateMoreDataSource {
    typealias DataSource = RxTableViewSectionedReloadDataSource
    
    static func dataSource() -> DataSource<IntermediateMoreSectionModel> {
        return .init(configureCell: { dataSource, tableView, indexPath, sectionItem -> UITableViewCell in
            switch dataSource[indexPath] {
            case .First(let firstItem) :
                let cell = tableView.dequeueReusableCell(withIdentifier: "IntermediateFirstTableViewCell", for: indexPath) as! IntermediateFirstTableViewCell
                cell.viewModel = IntermediateFirstViewModel(data : firstItem)
                return cell
            case .Second(let secondItem) :
                let cell = tableView.dequeueReusableCell(withIdentifier: "IntermediateSecondTableViewCell", for: indexPath) as! IntermediateSecondTableViewCell
                cell.viewModel = IntermediateSecondeViewModel(data : secondItem)
                return cell
            case .Third(let thirdItem) :
                let cell = tableView.dequeueReusableCell(withIdentifier: "IntermediateThirdTableViewCell", for: indexPath) as! IntermediateThirdTableViewCell
                cell.viewModel = IntermediateThirdViewModel(data : thirdItem)
                return cell
            }
        },
        titleForHeaderInSection: {dataSource, index in
            return dataSource.sectionModels[index].sectionTitles
        })
    }
}



