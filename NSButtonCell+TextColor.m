//
//  NSButtonCellTextColor.m
//  MineSweeper
//
//  Created by Nicholas Ewing on 4/27/09.
//  Copyright 2009 Kuzoa, LLC. All rights reserved.
//

#import "NSButtonCell+TextColor.h"


@implementation NSButtonCell (TextColor)

- (NSColor *) textColor
{
    NSAttributedString *attrTitle = [self attributedTitle];
    NSUInteger len = [attrTitle length];
    NSRange range = NSMakeRange(0, MIN((int)len, 1)); // take color from first char
    NSDictionary *attrs = [attrTitle fontAttributesInRange:range];
    NSColor *textColor = [NSColor controlTextColor];
    if (attrs) {
        textColor = [attrs objectForKey:NSForegroundColorAttributeName];
    }
    return textColor;
}

- (void) setTextColor: (NSColor *) textColor
{
    NSMutableAttributedString *attrTitle = [[NSMutableAttributedString alloc]
                                 initWithAttributedString:[self attributedTitle]];
    NSUInteger len = [attrTitle length];
    NSLog(@"%i", (int)len);
    NSRange range = NSMakeRange(0, (int)len);
    NSLog(@"%@", attrTitle);
    [attrTitle addAttribute:NSForegroundColorAttributeName
                      value:textColor
                      range:range];
    [attrTitle fixAttributesInRange:range];
    [self setAttributedTitle:attrTitle];
}

@end