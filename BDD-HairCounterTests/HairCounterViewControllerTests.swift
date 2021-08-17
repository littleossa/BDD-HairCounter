//
//  BDD_HairCounterTests.swift
//  BDD-HairCounterTests
//
//  Created by Osamu Hiraoka on 2021/08/17.
//

import XCTest
@testable import BDD_HairCounter

class HairCounterViewControllerTests: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }
    
    func test_初期起動時_画像にhair0が表示されていること() {
        let stroyboard = UIStoryboard(name: "HairCounter", bundle: nil)
        let viewController = stroyboard.instantiateInitialViewController() as! HairCounterViewController
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = viewController
        // 画面表示を行う
        window.makeKeyAndVisible()
        // 初期起動時の処理を実行する
        viewController.viewDidLoad()
        XCTAssertEqual(viewController.hairImageView.image, UIImage(named: "hair0"))
    }
    
//    初期表示時に文字入力のルール説明の文字が表示されていること
    func test_初期表示時_文字入力ルール説明の文字が表示されていること() {
        let stroyboard = UIStoryboard(name: "HairCounter", bundle: nil)
        let viewController = stroyboard.instantiateInitialViewController() as! HairCounterViewController
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = viewController
        window.makeKeyAndVisible()
        viewController.viewDidLoad()
        XCTAssertEqual(viewController.ruleDescriptionLabel.text, "0~10までの数字を入力してください")
    }
    
    
//    初期表示時に０という文字が入力されていること
}
