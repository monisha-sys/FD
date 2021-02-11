//
//  DisplaySliderViewController.swift
//  CoverFlow
//
//  Created by Mounika Reddy on 11/02/21.
//

import UIKit


class DisplaySliderViewController: UIViewController,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource, UIGestureRecognizerDelegate,UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var collectionView: UICollectionView!    
    @IBOutlet weak var pageControl: UIPageControl!
    
    var titles=["Browse Food","Order Food","Make Reservation","Quick Search","Apple pay"]
    var subTitles=["Welcome to our restaurant app! Login and checkout our delicious food.","Hungry? Order food in just a few clicks and we'll take care for you..","Book a table in advance to avoid waiting in line.","Quickly find out the food items you like the most.","We know you're busy,so you can pay with your phone in just one click."]
    var images = ["network","car","calendar","binoculars","applelogo"]
    
    var swipeLeft:UISwipeGestureRecognizer!
    var swipeRight:UISwipeGestureRecognizer!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate=self
        
        collectionView.delegate=self
        collectionView.dataSource=self
        collectionView.isUserInteractionEnabled=false
        pageControl.numberOfPages=titles.count
        pageControl.pageIndicatorTintColor = .white
        pageControl.currentPageIndicatorTintColor = .systemBlue
        pageControl.currentPage = 0
        pageControl.addTarget(self, action: #selector(pageTapped), for: .valueChanged)
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        flowLayout.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumInteritemSpacing = 0.0
        collectionView.collectionViewLayout = flowLayout

        swipeLeft=UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes))
        swipeLeft.direction = .left
        swipeRight=UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes))
        swipeRight.direction = .right
        swipeRight.delegate=self
        swipeLeft.delegate=self

        view.addGestureRecognizer(swipeLeft)
        view.addGestureRecognizer(swipeRight)
        
//        let pageSize = self.view.bounds.size
//        let contentOffset = CGPoint(x: Int(pageSize.width) * self.titles.count, y: 0)
//        self.collectionView.setContentOffset(contentOffset, animated: false)

        
    }
    
    @objc func pageTapped(){
        
        collectionView.scrollToItem(at: IndexPath(item: pageControl.currentPage, section: 0), at: .centeredHorizontally, animated: true)
        
        
    }
    
    
    @objc func handleSwipes(_ sender:UISwipeGestureRecognizer) {
        
        if sender.direction == swipeLeft.direction{
            self.pageControl.currentPage += 1
            collectionView.scrollToItem(at: IndexPath(item: pageControl.currentPage, section: 0), at: .centeredHorizontally, animated: true)
            
        }
        
        if sender.direction == swipeRight.direction{
            self.pageControl.currentPage -= 1
            collectionView.scrollToItem(at: IndexPath(item: pageControl.currentPage, section: 0), at: .centeredHorizontally, animated: true)
        }
                
    }

    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return titles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: "CollectionViewCell"), for: indexPath) as! CollectionViewCell
        
        cell.imageView.clipsToBounds=true
        cell.imageView.layer.cornerRadius = 20
        cell.imageView.contentMode = .scaleAspectFit
        cell.imageView.tintColor = .white
        cell.titleLbl.text = titles[indexPath.row]
        cell.detailLabel.text=subTitles[indexPath.row]
        cell.imageView.image = UIImage(systemName: images[indexPath.row])
        
        return cell
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenWidth = UIScreen.main.bounds.width
        return CGSize(width: screenWidth, height: screenWidth);

    }
    


}

    
    
    

