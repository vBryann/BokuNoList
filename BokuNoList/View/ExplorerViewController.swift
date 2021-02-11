//
//  ExplorerViewController.swift
//  BokuNoList
//
//  Created by Vitor Bryan on 14/08/20.
//  Copyright © 2020 Vitor Bryan. All rights reserved.
//  swiftlint:disable line_length

import UIKit

class ExplorerViewController: UIViewController {
    
    var arrayAnimes = [Animes]()
    
    var arrayTrending: [Media] = []
    
    private var explorerViewModel = ExplorerViewModel()
    
    fileprivate let searchBar: UISearchController = {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.placeholder = "Search"
        searchController.searchBar.searchBarStyle = .prominent
        searchController.searchBar.isTranslucent = true
        searchController.definesPresentationContext = true
        let cancelButtonAttributes = [NSAttributedString.Key.foregroundColor: UIColor.actionColor]
        UIBarButtonItem.appearance().setTitleTextAttributes(cancelButtonAttributes, for: .normal)
        return searchController
    }()
    
    fileprivate let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.showsHorizontalScrollIndicator = false
        collection.register(CustomCellViewController.self, forCellWithReuseIdentifier: "cell")
        collection.register(TrendingCollectionViewCell.self, forCellWithReuseIdentifier: "trendingCell")
        return collection
    }()
    
    fileprivate let collectionView2: UICollectionView = {
           let layout = UICollectionViewFlowLayout()
           layout.scrollDirection = .horizontal
           let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
           collection.translatesAutoresizingMaskIntoConstraints = false
           collection.showsHorizontalScrollIndicator = false
           collection.register(CustomCellViewController.self, forCellWithReuseIdentifier: "cell")
           collection.register(TrendingCollectionViewCell.self, forCellWithReuseIdentifier: "trendingCell")
           return collection
       }()
    
    fileprivate let header: UILabel = {
       let text = UILabel()
        text.text = "FEATURED"
        text.textColor = .black
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = .left
        text.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        return text
    }()
    
    fileprivate let header2: UILabel = {
       let text = UILabel()
        text.text = "HIGHEST RATED"
        text.textColor = .black
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = .left
        text.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        return text
    }()
    
    fileprivate let topView: UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        return topView
    }()
    
    fileprivate let botView: UIView = {
        let botView = UIView()
        botView.translatesAutoresizingMaskIntoConstraints = false
        return botView
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
//        explorerViewModel.getAnime()
//        explorerViewModel.dataTrending.bind { _ in
//            self.collectionView.reloadData()
//        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        explorerViewModel.getAnime()
        explorerViewModel.dataTrending.bind { _ in
            self.collectionView.reloadData()
        }
        
        view.backgroundColor = .white
        
        title = "Explore"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.searchController = searchBar
        
        view.addSubview(UIView())
        view.addSubview(topView)
        view.addSubview(botView)
        view.addSubview(collectionView)
        view.addSubview(collectionView2)
        view.addSubview(header)
//        view.addSubview(header2)

        topView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.23).isActive = true
        
        botView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        botView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        botView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        botView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
        
        collectionView.backgroundColor = .white
        collectionView.topAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        collectionView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.35 ).isActive = true
        
        collectionView2.backgroundColor = .white
        collectionView2.topAnchor.constraint(equalTo: collectionView.bottomAnchor).isActive = true
        collectionView2.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionView2.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        collectionView2.bottomAnchor.constraint(equalTo: botView.topAnchor).isActive = true
        
        header.topAnchor.constraint(equalTo: collectionView.topAnchor, constant: 10).isActive = true
        header.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        
//        header2.topAnchor.constraint(equalTo: collectionView2.topAnchor, constant: 10).isActive = true
//        header2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView2.delegate = self
        collectionView2.dataSource = self
    }

}

extension ExplorerViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.4, height: collectionView.frame.height/1.3)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionView2 {
            return 0 //data.count
        }
        return explorerViewModel.dataTrending.value.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCellViewController
        cell.data = explorerViewModel.dataTrending.value[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let nextVC = DetailsViewController()
        self.navigationController?.pushViewController(nextVC, animated: true)
        nextVC.data = explorerViewModel.dataTrending.value[indexPath.row]
    }
}
