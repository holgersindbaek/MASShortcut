#import "NSImage+RHResizableImageAdditions.h"

@class MASShortcut;

typedef enum {
    MASShortcutViewAppearanceDefault = 0,  // Height = 19 px
    MASShortcutViewAppearanceTexturedRect, // Height = 25 px
    MASShortcutViewAppearanceRounded       // Height = 43 px
} MASShortcutViewAppearance;

@interface MASShortcutView : NSView

@property (nonatomic, strong) MASShortcut *shortcutValue;
@property (nonatomic, getter = isRecording) BOOL recording;
@property (nonatomic, getter = isEnabled) BOOL enabled;
@property (nonatomic, copy) void (^shortcutValueChange)(MASShortcutView *sender);
@property (nonatomic) MASShortcutViewAppearance appearance;
@property (nonatomic, strong) RHResizableImage *background_image;
@property (nonatomic, strong) RHResizableImage *background_image_down;
@property (nonatomic, strong) NSFont *font;
@property (nonatomic) NSColor *textColor;

@end
