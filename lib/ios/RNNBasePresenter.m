#import "RNNBasePresenter.h"
#import "RNNBottomTabPresenter.h"

@interface RNNBasePresenter()

@property (nonatomic, strong) RNNBottomTabPresenter* bottomTabPresenter;

@end

@implementation RNNBasePresenter

- (instancetype)init {
	self = [super init];
	self.bottomTabPresenter = [[RNNBottomTabPresenter alloc] init];
	return self;
}

- (void)bindViewController:(UIViewController *)bindedViewController {
	_bindedViewController = bindedViewController;
	[self.bottomTabPresenter bindViewController:bindedViewController];
}

- (void)applyOptionsOnInit:(RNNNavigationOptions *)initialOptions {
	
}

- (void)applyOptionsOnWillMoveToParentViewController:(RNNNavigationOptions *)options {
	[self.bottomTabPresenter applyOptions:options];
}

- (void)applyOptions:(RNNNavigationOptions *)initialOptions {
	[self.bottomTabPresenter applyOptions:initialOptions];
}

- (void)mergeOptions:(RNNNavigationOptions *)options resolvedOptions:(RNNNavigationOptions *)resolvedOptions {
	[self.bottomTabPresenter mergeOptions:options resolvedOptions:resolvedOptions];
}

- (void)setDefaultOptions:(RNNNavigationOptions *)defaultOptions {
	_defaultOptions = defaultOptions;
	[self.bottomTabPresenter setDefaultOptions:defaultOptions];
}

@end
