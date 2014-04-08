UICollectionView-FlowLayout
===========================

Category on UICollectionView to expose FlowLayout delegate methods.

This is an attempt to mirror the way collectionViewFlowLayout exposes UICollectionView's 'extensable delegate' pattern. The delegate is the collectionView's, not the layouts, and it should have to ask the collectionView for the data. 

Rather than reach inside the collectionView: 
``` objc
[(id<MyCustomDelegate>)self.collectionView.delegate collectionView:self.collectionView layout:self sizeForItemAtIndexPath:indexPath]
```

We simply ask our custom delegate
``` objc
[self.collectionView.delegateFlowLayout sizeForItemAtIndexPath:indexPath];
```

License
-------
UICollectionView-FlowLayout is available under the MIT license. See the LICENSE file for more info.