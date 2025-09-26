
import Foundation
import UIKit
import SnapKit

class WeatherTableView: UIView, UITableViewDelegate, UITableViewDataSource{
    let tableView = UITableView()
    let datas = ["1","2","3","4","5"]
    override init(frame: CGRect) {
        super.init(frame: frame)
        tableView.backgroundColor = .clear
        configureViews()
        setupUI()
        tableViewDelegate()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureViews(){
        self.addSubview(tableView)
    }
    
    private func setupUI(){
        tableView.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.edges.equalToSuperview()
        }
        
    }
    
    private func tableViewDelegate(){
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(WeatherCell.self, forCellReuseIdentifier: WeatherCell.identifier)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: WeatherCell.identifier, for: indexPath) as? WeatherCell else {
            return UITableViewCell()
        }
        
        
        let data = datas[indexPath.row]
        cell.configure(dtText: data, temp: data)
        
        return cell
    }
}
