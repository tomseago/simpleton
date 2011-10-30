//
//  TapableView.m
//  Simpleton
//
//  Created by Tom Seago on 10/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TapableView.h"

@implementation TapableView

@synthesize happies = _happies;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) 
    {
        // Initialization code
        self.happies = [NSMutableSet set];
    }
    return self;
}

-(void) awakeFromNib
{
    self.happies = [NSMutableSet set];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    for (UITouch* touch in touches) 
    {
        // Add a new UIImage at the touch location
        CGPoint point = [touch locationInView:self];
        
        NSLog(@"Touched at %f, %f", point.x, point.y);
        
        UIImageView* view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"simpleton face"]];
        
        view.center = point;
        [self addSubview:view];
        
        [_happies addObject:view];
    }
}

-(void) clearHappies
{
    for(UIView* view in _happies)
    {
        [view removeFromSuperview];
    }
    
    [_happies removeAllObjects];
}

@end
