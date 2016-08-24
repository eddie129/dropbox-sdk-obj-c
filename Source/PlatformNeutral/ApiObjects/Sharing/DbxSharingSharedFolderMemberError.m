///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingMemberAccessLevelResult.h"
#import "DbxSharingSharedFolderMemberError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingSharedFolderMemberError 

- (instancetype)initWithInvalidDropboxId {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharedFolderMemberErrorTag)SharingSharedFolderMemberErrorInvalidDropboxId;
    }
    return self;
}

- (instancetype)initWithNotAMember {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharedFolderMemberErrorTag)SharingSharedFolderMemberErrorNotAMember;
    }
    return self;
}

- (instancetype)initWithNoExplicitAccess:(DbxSharingMemberAccessLevelResult *)noExplicitAccess {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharedFolderMemberErrorTag)SharingSharedFolderMemberErrorNoExplicitAccess;
        _noExplicitAccess = noExplicitAccess;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharedFolderMemberErrorTag)SharingSharedFolderMemberErrorOther;
    }
    return self;
}

- (BOOL)isInvalidDropboxId {
    return _tag == (SharingSharedFolderMemberErrorTag)SharingSharedFolderMemberErrorInvalidDropboxId;
}

- (BOOL)isNotAMember {
    return _tag == (SharingSharedFolderMemberErrorTag)SharingSharedFolderMemberErrorNotAMember;
}

- (BOOL)isNoExplicitAccess {
    return _tag == (SharingSharedFolderMemberErrorTag)SharingSharedFolderMemberErrorNoExplicitAccess;
}

- (BOOL)isOther {
    return _tag == (SharingSharedFolderMemberErrorTag)SharingSharedFolderMemberErrorOther;
}

- (NSString *)getTagName {
    if (_tag == (SharingSharedFolderMemberErrorTag)SharingSharedFolderMemberErrorInvalidDropboxId) {
        return @"(SharingSharedFolderMemberErrorTag)SharingSharedFolderMemberErrorInvalidDropboxId";
    }
    if (_tag == (SharingSharedFolderMemberErrorTag)SharingSharedFolderMemberErrorNotAMember) {
        return @"(SharingSharedFolderMemberErrorTag)SharingSharedFolderMemberErrorNotAMember";
    }
    if (_tag == (SharingSharedFolderMemberErrorTag)SharingSharedFolderMemberErrorNoExplicitAccess) {
        return @"(SharingSharedFolderMemberErrorTag)SharingSharedFolderMemberErrorNoExplicitAccess";
    }
    if (_tag == (SharingSharedFolderMemberErrorTag)SharingSharedFolderMemberErrorOther) {
        return @"(SharingSharedFolderMemberErrorTag)SharingSharedFolderMemberErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxSharingMemberAccessLevelResult *)noExplicitAccess {
    if (_tag != (SharingSharedFolderMemberErrorTag)SharingSharedFolderMemberErrorNoExplicitAccess) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (SharingSharedFolderMemberErrorTag)SharingSharedFolderMemberErrorNoExplicitAccess, but was %@.", [self getTagName]];
    }
    return _noExplicitAccess;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingSharedFolderMemberErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingSharedFolderMemberErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingSharedFolderMemberErrorSerializer serialize:self] description];
}

@end


@implementation DbxSharingSharedFolderMemberErrorSerializer 

+ (NSDictionary *)serialize:(DbxSharingSharedFolderMemberError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isInvalidDropboxId]) {
        jsonDict[@".tag"] = @"invalid_dropbox_id";
    }
    else if ([valueObj isNotAMember]) {
        jsonDict[@".tag"] = @"not_a_member";
    }
    else if ([valueObj isNoExplicitAccess]) {
        jsonDict = [[DbxSharingMemberAccessLevelResultSerializer serialize:valueObj.noExplicitAccess] mutableCopy];
        jsonDict[@".tag"] = @"no_explicit_access";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingSharedFolderMemberError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"invalid_dropbox_id"]) {
        return [[DbxSharingSharedFolderMemberError alloc] initWithInvalidDropboxId];
    }
    if ([tag isEqualToString:@"not_a_member"]) {
        return [[DbxSharingSharedFolderMemberError alloc] initWithNotAMember];
    }
    if ([tag isEqualToString:@"no_explicit_access"]) {
        DbxSharingMemberAccessLevelResult *noExplicitAccess = [DbxSharingMemberAccessLevelResultSerializer deserialize:valueDict];
        return [[DbxSharingSharedFolderMemberError alloc] initWithNoExplicitAccess:noExplicitAccess];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingSharedFolderMemberError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
