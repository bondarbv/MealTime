//
//  MyTableViewCell.swift
//  MealTime
//
//  Created by Bohdan on 18.05.2022.
//

import UIKit
import SnapKit


class MyTableViewCell: UITableViewCell {
    
    static let id = "Identifier"
    
    let label = UILabel()

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layout() {
        contentView.addSubview(label)
        label.snp.makeConstraints { make in
            make.leading.equalTo(contentView.snp.leading).offset(20)
            make.centerY.equalToSuperview()
        }
    }

}
