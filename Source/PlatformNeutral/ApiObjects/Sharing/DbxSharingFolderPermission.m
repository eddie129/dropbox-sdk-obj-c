///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingFolderAction.h"
#import "DbxSharingFolderPermission.h"
#import "DbxSharingPermissionDeniedReason.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingFolderPermission 

- (instancetype)initWithAction:(DbxSharingFolderAction *)action allow:(NSNumber *)allow reason:(DbxSharingPermissionDeniedReason *)reason {

    self = [super init];
    if (self != nil) {
        _action = action;
        _allow = allow;
        _reason = reason;
    }
    return self;
}

- (instancetype)initWithAction:(DbxSharingFolderAction *)action allow:(NSNumber *)allow {
    return [self initWithAction:action allow:allow reason:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingFolderPermissionSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingFolderPermissionSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingFolderPermissionSerializer serialize:self] description];
}

@end


@implementation DbxSharingFolderPermissionSerializer 

+ (NSDictionary *)serialize:(DbxSharingFolderPermission *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"action"] = [DbxSharingFolderActionSerializer serialize:valueObj.action];
    jsonDict[@"allow"] = [DbxBoolSerializer serialize:valueObj.allow];
    if (valueObj.reason) {
        jsonDict[@"reason"] = [DbxSharingPermissionDeniedReasonSerializer serialize:valueObj.reason];
    }

    return jsonDict;
}

+ (DbxSharingFolderPermission *)deserialize:(NSDictionary *)valueDict {
    DbxSharingFolderAction *action = [DbxSharingFolderActionSerializer deserialize:valueDict[@"action"]];
    NSNumber *allow = [DbxBoolSerializer deserialize:valueDict[@"allow"]];
    DbxSharingPermissionDeniedReason *reason = valueDict[@"reason"] != nil ? [DbxSharingPermissionDeniedReasonSerializer deserialize:valueDict[@"reason"]] : nil;

    return [[DbxSharingFolderPermission alloc] initWithAction:action allow:allow reason:reason];
}

@end
