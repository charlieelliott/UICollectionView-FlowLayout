//
//  UICollectionView+FlowLayout.m
//  
//
//  Copyright (c) 2012 Charlie Elliott. All rights reserved.
//

#import "UICollectionView+FlowLayout.h"

@implementation UICollectionView (FlowLayout)

- (id<UICollectionViewDelegateFlowLayout>)delegateFlowLayout
{
    return (id<UICollectionViewDelegateFlowLayout>)self.delegate;
}

- (UICollectionViewFlowLayout *)collectionViewFlowLayout
{
    if([self.collectionViewLayout isKindOfClass:[UICollectionViewFlowLayout class]])
        return (UICollectionViewFlowLayout *)self.collectionViewLayout;
    return nil;
}

- (CGSize)sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if([self.delegateFlowLayout respondsToSelector:@selector(collectionView:layout:sizeForItemAtIndexPath:)])
        return [self.delegateFlowLayout collectionView:self layout:self.collectionViewLayout sizeForItemAtIndexPath:indexPath];
    return self.collectionViewFlowLayout.itemSize;
}

- (CGSize)referenceSizeForHeaderInSection:(NSInteger)section
{
    if([self.delegateFlowLayout respondsToSelector:@selector(collectionView:layout:referenceSizeForHeaderInSection:)])
        return [self.delegateFlowLayout collectionView:self layout:self.collectionViewLayout referenceSizeForHeaderInSection:section];
    return self.collectionViewFlowLayout.headerReferenceSize;
}

- (CGSize)referenceSizeForFooterInSection:(NSInteger)section
{
    if([self.delegateFlowLayout respondsToSelector:@selector(collectionView:layout:referenceSizeForFooterInSection:)])
        return [self.delegateFlowLayout collectionView:self layout:self.collectionViewLayout referenceSizeForFooterInSection:section];
    return self.collectionViewFlowLayout.footerReferenceSize;
}

- (UIEdgeInsets)insetForSectionAtIndex:(NSInteger)section
{
    if([self.delegateFlowLayout respondsToSelector:@selector(collectionView:layout:insetForSectionAtIndex:)])
        return [self.delegateFlowLayout collectionView:self layout:self.collectionViewLayout insetForSectionAtIndex:section];
    return self.collectionViewFlowLayout.sectionInset;
}

- (CGFloat)minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    if([self.delegateFlowLayout respondsToSelector:@selector(collectionView:layout:minimumLineSpacingForSectionAtIndex:)])
        return [self.delegateFlowLayout collectionView:self layout:self.collectionViewLayout minimumLineSpacingForSectionAtIndex:section];
    return self.collectionViewFlowLayout.minimumLineSpacing;
}

- (CGFloat)minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    if([self.delegateFlowLayout respondsToSelector:@selector(collectionView:layout:minimumInteritemSpacingForSectionAtIndex:)])
        return [self.delegateFlowLayout collectionView:self layout:self.collectionViewLayout minimumInteritemSpacingForSectionAtIndex:section];
    return self.collectionViewFlowLayout.minimumInteritemSpacing;
}

@end
