//
//  WeatherViewController.swift
//  WeatherApp
//
//  Created by s s on 9/26/25.
//

import Foundation
import UIKit
import SnapKit

class WeatherViewController: UIViewController{
    let weatherMainView = WeatherMainView()
    let weatherTableView = WeatherTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        configureViews()
        setupUI()
    }
    
    private func configureViews(){
        view.addSubview(weatherMainView)
        view.addSubview(weatherTableView)
    }
    
    private func setupUI(){
        weatherMainView.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide).inset(32)
            make.height.equalTo(400)
            make.width.equalTo(300)
        }
        weatherTableView.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalTo(weatherMainView.snp.bottom).offset(16)
            
            make.height.equalTo(300)
            make.width.equalTo(300)
        }
    }
}
#Preview{
    WeatherViewController()
}
