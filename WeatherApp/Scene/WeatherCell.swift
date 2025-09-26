//
//  WeatherCell.swift
//  WeatherApp
//
//  Created by s s on 9/26/25.
//

import Foundation
import UIKit
import SnapKit

class WeatherCell: UITableViewCell{
    
    static let identifier = "WeatherCell"
    
    var dtText: UILabel = {
        let uiLabel = UILabel()
        uiLabel.text = "2025-09-26 18:00:00"
        uiLabel.textColor = .white
        return uiLabel
    }()
    
    var temp: UILabel = {
        let uiLabel = UILabel()
        uiLabel.text = "22.08°C"
        uiLabel.textColor = .white
        return uiLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .clear
        configureViews()
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureViews(){
        [dtText,temp].forEach{contentView.addSubview($0)}
    }
    private func setupUI(){
        dtText.snp.makeConstraints{ make in
            make.leading.equalToSuperview().inset(16)
            make.centerY.equalToSuperview()
        }
        temp.snp.makeConstraints{ make in
            make.centerY.equalToSuperview()
            make.trailing.equalToSuperview().inset(16)
        }
    }
    
    func configure(dtText: String, temp: String){
        self.dtText.text = dtText
        self.temp.text = temp
    }
    
}
