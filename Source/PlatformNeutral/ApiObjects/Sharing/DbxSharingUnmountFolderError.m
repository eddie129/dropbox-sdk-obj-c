///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingSharedFolderAccessError.h"
#import "DbxSharingUnmountFolderError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingUnmountFolderError 

- (instancetype)initWithAccessError:(DbxSharingSharedFolderAccessError *)accessError {
    self = [super init];
    if (self != nil) {
        _tag = (SharingUnmountFolderErrorTag)SharingUnmountFolderErrorAccessError;
        _accessError = accessError;
    }
    return self;
}

- (instancetype)initWithNoPermission {
    self = [super init];
    if (self != nil) {
        _tag = (SharingUnmountFolderErrorTag)SharingUnmountFolderErrorNoPermission;
    }
    return self;
}

- (instancetype)initWithNotUnmountable {
    self = [super init];
    if (self != nil) {
        _tag = (SharingUnmountFolderErrorTag)SharingUnmountFolderErrorNotUnmountable;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (SharingUnmountFolderErrorTag)SharingUnmountFolderErrorOther;
    }
    return self;
}

- (BOOL)isAccessError {
    return _tag == (SharingUnmountFolderErrorTag)SharingUnmountFolderErrorAccessError;
}

- (BOOL)isNoPermission {
    return _tag == (SharingUnmountFolderErrorTag)SharingUnmountFolderErrorNoPermission;
}

- (BOOL)isNotUnmountable {
    return _tag == (SharingUnmountFolderErrorTag)SharingUnmountFolderErrorNotUnmountable;
}

- (BOOL)isOther {
    return _tag == (SharingUnmountFolderErrorTag)SharingUnmountFolderErrorOther;
}

- (NSString *)getTagName {
    if (_tag == (SharingUnmountFolderErrorTag)SharingUnmountFolderErrorAccessError) {
        return @"(SharingUnmountFolderErrorTag)SharingUnmountFolderErrorAccessError";
    }
    if (_tag == (SharingUnmountFolderErrorTag)SharingUnmountFolderErrorNoPermission) {
        return @"(SharingUnmountFolderErrorTag)SharingUnmountFolderErrorNoPermission";
    }
    if (_tag == (SharingUnmountFolderErrorTag)SharingUnmountFolderErrorNotUnmountable) {
        return @"(SharingUnmountFolderErrorTag)SharingUnmountFolderErrorNotUnmountable";
    }
    if (_tag == (SharingUnmountFolderErrorTag)SharingUnmountFolderErrorOther) {
        return @"(SharingUnmountFolderErrorTag)SharingUnmountFolderErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxSharingSharedFolderAccessError *)accessError {
    if (_tag != (SharingUnmountFolderErrorTag)SharingUnmountFolderErrorAccessError) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (SharingUnmountFolderErrorTag)SharingUnmountFolderErrorAccessError, but was %@.", [self getTagName]];
    }
    return _accessError;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingUnmountFolderErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingUnmountFolderErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingUnmountFolderErrorSerializer serialize:self] description];
}

@end


@implementation DbxSharingUnmountFolderErrorSerializer 

+ (NSDictionary *)serialize:(DbxSharingUnmountFolderError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isAccessError]) {
        jsonDict = [[DbxSharingSharedFolderAccessErrorSerializer serialize:valueObj.accessError] mutableCopy];
        jsonDict[@".tag"] = @"access_error";
    }
    else if ([valueObj isNoPermission]) {
        jsonDict[@".tag"] = @"no_permission";
    }
    else if ([valueObj isNotUnmountable]) {
        jsonDict[@".tag"] = @"not_unmountable";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingUnmountFolderError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"access_error"]) {
        DbxSharingSharedFolderAccessError *accessError = [DbxSharingSharedFolderAccessErrorSerializer deserialize:valueDict[@"access_error"]];
        return [[DbxSharingUnmountFolderError alloc] initWithAccessError:accessError];
    }
    if ([tag isEqualToString:@"no_permission"]) {
        return [[DbxSharingUnmountFolderError alloc] initWithNoPermission];
    }
    if ([tag isEqualToString:@"not_unmountable"]) {
        return [[DbxSharingUnmountFolderError alloc] initWithNotUnmountable];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingUnmountFolderError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
