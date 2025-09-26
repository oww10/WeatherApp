
import Foundation
import UIKit
import SnapKit

class WeatherMainView: UIView{
    let cityLabel: UILabel = {
        var label = UILabel()
        label.text = "서울특별시"
        label.font = .systemFont(ofSize: 32, weight: .semibold)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()

    let temp:UILabel = {
        var label = UILabel()
        label.text = "22°C"
        label.font = .systemFont(ofSize: 48, weight: .bold)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()

    let minTemp: UILabel = {
        var label = UILabel()
        label.text = "최소: 22°C"
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()

    let maxTemp: UILabel = {
        var label = UILabel()
        label.text = "최고: 22°C"
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        
        label.textColor = .white
        return label
    }()
    
    let minMaxStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 48
        return stackView
    }()

    let weatherImg: UIImageView = {
        var img = UIImageView()
        img.backgroundColor = .systemGray3
        
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        configureViews()
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureViews(){
        [cityLabel,temp,maxTemp,weatherImg,minMaxStackView].forEach{self.addSubview($0)}
        
        [minTemp,maxTemp].forEach{minMaxStackView.addArrangedSubview($0)}
    }
    private func setupUI(){
        cityLabel.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
        }
        temp.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalTo(cityLabel.snp.bottom).offset(8)
        }
        minMaxStackView.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalTo(temp.snp.bottom).offset(8)
        }
        weatherImg.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalTo(minMaxStackView.snp.bottom).offset(16)
            make.height.equalTo(200)
            make.width.equalTo(200)
        }
    }
}

