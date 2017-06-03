//
//  ViewController.swift
//  ios-uikit-uiserchbar-demo
//
//  Created by Kushida　Eiji on 2017/02/22.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    
    // MARK: - view life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    // MARK: - private methods
    
    private func setup() {
        setupDelegate()
        setupShowCancelButton()
        setupPrompt()
        setupPlaceHolder()
        setupKeyboard()
    }
    
    private func setupDelegate() {
        searchBar.delegate = self
    }

    /// キャンセルボタンを付加する
    private func setupShowCancelButton() {
        searchBar.showsCancelButton = true
    }
    
    /// タイトルを付加する
    private func setupPrompt() {
        searchBar.prompt = "タイトル"
    }
    
    /// プレースホルダーを付加する
    private func setupPlaceHolder() {
        searchBar.placeholder = "入力してください"
    }
    
    /// キーボードを付加する
    private func setupKeyboard() {
        searchBar.keyboardType = .default
    }
}

// MARK: - UISearchBarDelegate
extension ViewController: UISearchBarDelegate {
    
    /// 検索をクリックしたときに呼ばれる
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        print(#function)
        if let searchText = searchBar.text {
            print("searchText:\(searchText)")
        }
    }
    
    /// サーチバーの中身が更新されるときに呼ばれる
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(#function)
        print(searchText)
    }
    
    /// キャンセルボタンをクリックしたときに呼ばれる
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = ""
        searchBar.resignFirstResponder()
    }
}

