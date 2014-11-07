#define HOOK(bundleId, group) do { \
		if(![hooks containsObject:(bundleId)] && [bundleIds containsObject:(bundleId)]) { \
			%init(group); \
			[hooks addObject:(bundleId)]; \
		} \
	} while(false)

%group GitHub
%hook NSObject

- (NSString *)description {
	NSString *ret = %orig;
	return [ret stringByAppendingString:@" (hooked GitHub)"];
}

%end
%end

%group Safari
%hook NSObject

- (NSString *)description {
	NSString *ret = %orig;
	return [ret stringByAppendingString:@" (hooked Safari)"];
}

%end
%end

NSMutableArray *hooks = nil;

static void install_hooks(void) {
	if(!hooks) {
		hooks = [NSMutableArray new];
	}
	
	NSArray *bundles = [[NSBundle allBundles] arrayByAddingObjectsFromArray:[NSBundle allFrameworks]];
	NSArray *bundleIds = [bundles valueForKey:@"bundleIdentifier"];
	
	HOOK(@"com.github.GitHub", GitHub);
		HOOK(@"com.apple.Safari", Safari);
}

%group RecheckHooks
%hook NSBundle
- (BOOL)load {
	BOOL ret = %orig;
	
	install_hooks();
	
	return ret;
}

%end
%end

@interface SIMBLexample : NSObject
+ (void)load;
@end

@implementation SIMBLexample

+ (void)load {
	%init(RecheckHooks);
	
	install_hooks();
	
	BOOL hooked = [hooks count] >= 1;
	
	NSString *mainId = [[NSBundle mainBundle] bundleIdentifier];
	
	if(hooked) {
		NSLog(@"Found patch for process with bundle id: %@", mainId);
	} else {
		NSLog(@"No patches found for process with bundle id: %@", mainId);
	}
}

@end
