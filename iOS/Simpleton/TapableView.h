//
//  TapableView.h
//  Simpleton
//
//  Created by Tom Seago on 10/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TapableView : UIView
{
    NSMutableSet* _happies;
}

@property (atomic, retain) NSMutableSet* happies;

-(void) clearHappies;

@end
