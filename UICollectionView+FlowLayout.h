//
//  UICollectionView+FlowLayout.h
//  
//
//  Copyright (c) 2012 Charlie Elliott. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (FlowLayout)

@property (nonatomic, readonly) id<UICollectionViewDelegateFlowLayout> delegateFlowLayout;
@property (nonatomic, readonly) UICollectionViewFlowLayout *collectionViewFlowLayout;

- (CGSize)sizeForItemAtIndexPath:(NSIndexPath *)indexPath;
- (CGSize)referenceSizeForHeaderInSection:(NSInteger)section;
- (CGSize)referenceSizeForFooterInSection:(NSInteger)section;
- (UIEdgeInsets)insetForSectionAtIndex:(NSInteger)section;
- (CGFloat)minimumLineSpacingForSectionAtIndex:(NSInteger)section;
- (CGFloat)minimumInteritemSpacingForSectionAtIndex:(NSInteger)section;

@end
