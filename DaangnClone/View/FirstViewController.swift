//
//  FirstViewController.swift
//  DaangnClone
//
//  Created by miori Lee on 2021/07/16.
//

import UIKit
import SnapKit
import Then

class FirstViewController: UIViewController {
    
    let mainLogo = UIImageView().then {
        let tmpImg = UIImage(named: "TextLogo.png")
        // image Resize
        $0.image = tmpImg?.aspectFittedToHeight(45)
        //$0.image = #imageLiteral(resourceName: "TextLogo")
        $0.contentMode = .scaleAspectFit
        //$0.clipsToBounds = false
    }
    
    
    let startBtn = UIButton().then {
        $0.backgroundColor = .daangn
        $0.setTitle("내 동네 설정하고 시작하기", for: .normal)
        $0.tintColor = .white
    }
    
    let boldLabel = UILabel().then {
        $0.numberOfLines = 0
        $0.text = "우리 동네 중고 직거래 당근마켓"
        $0.textColor = .black
        $0.font = UIFont.boldSystemFont(ofSize: 20)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        
        _ = [mainLogo,startBtn,boldLabel].map { self.view.addSubview($0)}
        
        bindConstraints()
    }
    
    

}

extension FirstViewController {
    
    private func bindConstraints(){
        mainLogo.snp.makeConstraints {
            $0.top.equalToSuperview().offset(130)
            $0.centerX.equalToSuperview()
        }
        
        startBtn.snp.makeConstraints {
            $0.trailing.equalToSuperview().offset(-20)
            $0.leading.equalToSuperview().offset(20)
            $0.bottom.equalToSuperview().offset(-50)
            $0.height.equalTo(70)
        }
        
        boldLabel.snp.makeConstraints {
            $0.top.equalTo(mainLogo.snp.bottom).offset(10)
            $0.centerX.equalToSuperview()
        }
    }
}
