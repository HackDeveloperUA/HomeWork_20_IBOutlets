
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *arrayForCell;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *arrayForChecker;

@property (strong, nonatomic)  UIColor* randomColor;

@end

