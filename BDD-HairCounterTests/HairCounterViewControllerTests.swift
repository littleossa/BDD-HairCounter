//
//  BDD_HairCounterTests.swift
//  BDD-HairCounterTests
//
//  Created by Osamu Hiraoka on 2021/08/17.
//

import XCTest
@testable import BDD_HairCounter

class HairCounterViewControllerTests: XCTestCase {
    
    private var viewController: HairCounterViewController!

    override func setUpWithError() throws {
        let stroyboard = UIStoryboard(name: "HairCounter", bundle: nil)
        viewController = stroyboard.instantiateInitialViewController() as? HairCounterViewController
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = viewController
        // 画面表示を行う
        window.makeKeyAndVisible()
        // 初期起動時の処理を実行する
        viewController.viewDidLoad()
    }
    
    func test_初期起動時_画像にhair0が表示されていること() {
        XCTAssertEqual(viewController.hairImageView.image, UIImage(named: "hair0"))
    }
    
    func test_初期表示時_文字入力ルール説明の文字が表示されていること() {
        XCTAssertEqual(viewController.ruleDescriptionLabel.text, "0~10までの数字を入力してください")
    }
    
    func test_初期起動時_テキストフィールドに0という文字が入力されていること() {
        XCTAssertEqual(viewController.hairCountTextField.text, "0")
    }
    
    func test_初期起動時_キーボードのタイプが数字入力になっていること() {
        XCTAssertEqual(viewController.hairCountTextField.keyboardType, .numberPad)
    }
    
    func test_初期起動時_キーボードが表示されていること() {
        XCTAssertTrue(viewController.hairCountTextField.isFirstResponder)
    }
    
    func test_TextFieldの文字の値が変わった時_値が0から10_画像にその値に紐づく画像が表示されていること() {
        for i in 0...10 {
            viewController.hairCountTextField.changeValue(into: "\(i)", on: viewController)
            XCTAssertEqual(viewController.hairImageView.image, UIImage(named: "hair\(i)"))
        }
    }
    
    func test_TextFieldの文字の値が変わった時_値が11_画像にerrorが表示されていること() {
        viewController.hairCountTextField.changeValue(into: "11", on: viewController)
        XCTAssertEqual(viewController.hairImageView.image, UIImage(named: "error"))
    }
    
    func test_TextFieldの文字の値が変わった時_値が12_画像にerrorが表示されていること() {
        viewController.hairCountTextField.changeValue(into: "12", on: viewController)
        XCTAssertEqual(viewController.hairImageView.image, UIImage(named: "error"))
    }
}

private extension UITextField {
    
    func changeValue(into value: String, on viewController: HairCounterViewController) {
        self.text = value
        _ = viewController.textField(self, shouldChangeCharactersIn: NSRange(), replacementString: "")
    }
}
