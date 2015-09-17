//
//  TPKeyboardAvoidingTableView.h
//
#import <UIKit/UIKit.h>

@interface TPKeyboardAvoidingTableView : UITableView {
    UIEdgeInsets    _priorInset;
    BOOL            _priorInsetSaved;
    BOOL            _keyboardVisible;
    CGRect          _keyboardRect;
}

- (void)adjustOffsetToIdealIfNeeded;
@end
