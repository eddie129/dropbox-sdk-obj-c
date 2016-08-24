///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingRelinquishFileMembershipError.h"
#import "DbxSharingSharingFileAccessError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingRelinquishFileMembershipError 

- (instancetype)initWithAccessError:(DbxSharingSharingFileAccessError *)accessError {
    self = [super init];
    if (self != nil) {
        _tag = (SharingRelinquishFileMembershipErrorTag)SharingRelinquishFileMembershipErrorAccessError;
        _accessError = accessError;
    }
    return self;
}

- (instancetype)initWithGroupAccess {
    self = [super init];
    if (self != nil) {
        _tag = (SharingRelinquishFileMembershipErrorTag)SharingRelinquishFileMembershipErrorGroupAccess;
    }
    return self;
}

- (instancetype)initWithNoPermission {
    self = [super init];
    if (self != nil) {
        _tag = (SharingRelinquishFileMembershipErrorTag)SharingRelinquishFileMembershipErrorNoPermission;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (SharingRelinquishFileMembershipErrorTag)SharingRelinquishFileMembershipErrorOther;
    }
    return self;
}

- (BOOL)isAccessError {
    return _tag == (SharingRelinquishFileMembershipErrorTag)SharingRelinquishFileMembershipErrorAccessError;
}

- (BOOL)isGroupAccess {
    return _tag == (SharingRelinquishFileMembershipErrorTag)SharingRelinquishFileMembershipErrorGroupAccess;
}

- (BOOL)isNoPermission {
    return _tag == (SharingRelinquishFileMembershipErrorTag)SharingRelinquishFileMembershipErrorNoPermission;
}

- (BOOL)isOther {
    return _tag == (SharingRelinquishFileMembershipErrorTag)SharingRelinquishFileMembershipErrorOther;
}

- (NSString *)getTagName {
    if (_tag == (SharingRelinquishFileMembershipErrorTag)SharingRelinquishFileMembershipErrorAccessError) {
        return @"(SharingRelinquishFileMembershipErrorTag)SharingRelinquishFileMembershipErrorAccessError";
    }
    if (_tag == (SharingRelinquishFileMembershipErrorTag)SharingRelinquishFileMembershipErrorGroupAccess) {
        return @"(SharingRelinquishFileMembershipErrorTag)SharingRelinquishFileMembershipErrorGroupAccess";
    }
    if (_tag == (SharingRelinquishFileMembershipErrorTag)SharingRelinquishFileMembershipErrorNoPermission) {
        return @"(SharingRelinquishFileMembershipErrorTag)SharingRelinquishFileMembershipErrorNoPermission";
    }
    if (_tag == (SharingRelinquishFileMembershipErrorTag)SharingRelinquishFileMembershipErrorOther) {
        return @"(SharingRelinquishFileMembershipErrorTag)SharingRelinquishFileMembershipErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxSharingSharingFileAccessError *)accessError {
    if (_tag != (SharingRelinquishFileMembershipErrorTag)SharingRelinquishFileMembershipErrorAccessError) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (SharingRelinquishFileMembershipErrorTag)SharingRelinquishFileMembershipErrorAccessError, but was %@.", [self getTagName]];
    }
    return _accessError;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingRelinquishFileMembershipErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingRelinquishFileMembershipErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingRelinquishFileMembershipErrorSerializer serialize:self] description];
}

@end


@implementation DbxSharingRelinquishFileMembershipErrorSerializer 

+ (NSDictionary *)serialize:(DbxSharingRelinquishFileMembershipError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isAccessError]) {
        jsonDict = [[DbxSharingSharingFileAccessErrorSerializer serialize:valueObj.accessError] mutableCopy];
        jsonDict[@".tag"] = @"access_error";
    }
    else if ([valueObj isGroupAccess]) {
        jsonDict[@".tag"] = @"group_access";
    }
    else if ([valueObj isNoPermission]) {
        jsonDict[@".tag"] = @"no_permission";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingRelinquishFileMembershipError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"access_error"]) {
        DbxSharingSharingFileAccessError *accessError = [DbxSharingSharingFileAccessErrorSerializer deserialize:valueDict[@"access_error"]];
        return [[DbxSharingRelinquishFileMembershipError alloc] initWithAccessError:accessError];
    }
    if ([tag isEqualToString:@"group_access"]) {
        return [[DbxSharingRelinquishFileMembershipError alloc] initWithGroupAccess];
    }
    if ([tag isEqualToString:@"no_permission"]) {
        return [[DbxSharingRelinquishFileMembershipError alloc] initWithNoPermission];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingRelinquishFileMembershipError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
