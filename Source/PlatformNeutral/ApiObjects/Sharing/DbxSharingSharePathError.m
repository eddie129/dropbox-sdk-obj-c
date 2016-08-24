///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingSharePathError.h"
#import "DbxSharingSharedFolderMetadata.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingSharePathError 

- (instancetype)initWithIsFile {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharePathErrorTag)SharingSharePathErrorIsFile;
    }
    return self;
}

- (instancetype)initWithInsideSharedFolder {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharePathErrorTag)SharingSharePathErrorInsideSharedFolder;
    }
    return self;
}

- (instancetype)initWithContainsSharedFolder {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharePathErrorTag)SharingSharePathErrorContainsSharedFolder;
    }
    return self;
}

- (instancetype)initWithIsAppFolder {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharePathErrorTag)SharingSharePathErrorIsAppFolder;
    }
    return self;
}

- (instancetype)initWithInsideAppFolder {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharePathErrorTag)SharingSharePathErrorInsideAppFolder;
    }
    return self;
}

- (instancetype)initWithIsPublicFolder {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharePathErrorTag)SharingSharePathErrorIsPublicFolder;
    }
    return self;
}

- (instancetype)initWithInsidePublicFolder {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharePathErrorTag)SharingSharePathErrorInsidePublicFolder;
    }
    return self;
}

- (instancetype)initWithAlreadyShared:(DbxSharingSharedFolderMetadata *)alreadyShared {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharePathErrorTag)SharingSharePathErrorAlreadyShared;
        _alreadyShared = alreadyShared;
    }
    return self;
}

- (instancetype)initWithInvalidPath {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharePathErrorTag)SharingSharePathErrorInvalidPath;
    }
    return self;
}

- (instancetype)initWithIsOsxPackage {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharePathErrorTag)SharingSharePathErrorIsOsxPackage;
    }
    return self;
}

- (instancetype)initWithInsideOsxPackage {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharePathErrorTag)SharingSharePathErrorInsideOsxPackage;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharePathErrorTag)SharingSharePathErrorOther;
    }
    return self;
}

- (BOOL)isIsFile {
    return _tag == (SharingSharePathErrorTag)SharingSharePathErrorIsFile;
}

- (BOOL)isInsideSharedFolder {
    return _tag == (SharingSharePathErrorTag)SharingSharePathErrorInsideSharedFolder;
}

- (BOOL)isContainsSharedFolder {
    return _tag == (SharingSharePathErrorTag)SharingSharePathErrorContainsSharedFolder;
}

- (BOOL)isIsAppFolder {
    return _tag == (SharingSharePathErrorTag)SharingSharePathErrorIsAppFolder;
}

- (BOOL)isInsideAppFolder {
    return _tag == (SharingSharePathErrorTag)SharingSharePathErrorInsideAppFolder;
}

- (BOOL)isIsPublicFolder {
    return _tag == (SharingSharePathErrorTag)SharingSharePathErrorIsPublicFolder;
}

- (BOOL)isInsidePublicFolder {
    return _tag == (SharingSharePathErrorTag)SharingSharePathErrorInsidePublicFolder;
}

- (BOOL)isAlreadyShared {
    return _tag == (SharingSharePathErrorTag)SharingSharePathErrorAlreadyShared;
}

- (BOOL)isInvalidPath {
    return _tag == (SharingSharePathErrorTag)SharingSharePathErrorInvalidPath;
}

- (BOOL)isIsOsxPackage {
    return _tag == (SharingSharePathErrorTag)SharingSharePathErrorIsOsxPackage;
}

- (BOOL)isInsideOsxPackage {
    return _tag == (SharingSharePathErrorTag)SharingSharePathErrorInsideOsxPackage;
}

- (BOOL)isOther {
    return _tag == (SharingSharePathErrorTag)SharingSharePathErrorOther;
}

- (NSString *)getTagName {
    if (_tag == (SharingSharePathErrorTag)SharingSharePathErrorIsFile) {
        return @"(SharingSharePathErrorTag)SharingSharePathErrorIsFile";
    }
    if (_tag == (SharingSharePathErrorTag)SharingSharePathErrorInsideSharedFolder) {
        return @"(SharingSharePathErrorTag)SharingSharePathErrorInsideSharedFolder";
    }
    if (_tag == (SharingSharePathErrorTag)SharingSharePathErrorContainsSharedFolder) {
        return @"(SharingSharePathErrorTag)SharingSharePathErrorContainsSharedFolder";
    }
    if (_tag == (SharingSharePathErrorTag)SharingSharePathErrorIsAppFolder) {
        return @"(SharingSharePathErrorTag)SharingSharePathErrorIsAppFolder";
    }
    if (_tag == (SharingSharePathErrorTag)SharingSharePathErrorInsideAppFolder) {
        return @"(SharingSharePathErrorTag)SharingSharePathErrorInsideAppFolder";
    }
    if (_tag == (SharingSharePathErrorTag)SharingSharePathErrorIsPublicFolder) {
        return @"(SharingSharePathErrorTag)SharingSharePathErrorIsPublicFolder";
    }
    if (_tag == (SharingSharePathErrorTag)SharingSharePathErrorInsidePublicFolder) {
        return @"(SharingSharePathErrorTag)SharingSharePathErrorInsidePublicFolder";
    }
    if (_tag == (SharingSharePathErrorTag)SharingSharePathErrorAlreadyShared) {
        return @"(SharingSharePathErrorTag)SharingSharePathErrorAlreadyShared";
    }
    if (_tag == (SharingSharePathErrorTag)SharingSharePathErrorInvalidPath) {
        return @"(SharingSharePathErrorTag)SharingSharePathErrorInvalidPath";
    }
    if (_tag == (SharingSharePathErrorTag)SharingSharePathErrorIsOsxPackage) {
        return @"(SharingSharePathErrorTag)SharingSharePathErrorIsOsxPackage";
    }
    if (_tag == (SharingSharePathErrorTag)SharingSharePathErrorInsideOsxPackage) {
        return @"(SharingSharePathErrorTag)SharingSharePathErrorInsideOsxPackage";
    }
    if (_tag == (SharingSharePathErrorTag)SharingSharePathErrorOther) {
        return @"(SharingSharePathErrorTag)SharingSharePathErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxSharingSharedFolderMetadata *)alreadyShared {
    if (_tag != (SharingSharePathErrorTag)SharingSharePathErrorAlreadyShared) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (SharingSharePathErrorTag)SharingSharePathErrorAlreadyShared, but was %@.", [self getTagName]];
    }
    return _alreadyShared;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingSharePathErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingSharePathErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingSharePathErrorSerializer serialize:self] description];
}

@end


@implementation DbxSharingSharePathErrorSerializer 

+ (NSDictionary *)serialize:(DbxSharingSharePathError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isIsFile]) {
        jsonDict[@".tag"] = @"is_file";
    }
    else if ([valueObj isInsideSharedFolder]) {
        jsonDict[@".tag"] = @"inside_shared_folder";
    }
    else if ([valueObj isContainsSharedFolder]) {
        jsonDict[@".tag"] = @"contains_shared_folder";
    }
    else if ([valueObj isIsAppFolder]) {
        jsonDict[@".tag"] = @"is_app_folder";
    }
    else if ([valueObj isInsideAppFolder]) {
        jsonDict[@".tag"] = @"inside_app_folder";
    }
    else if ([valueObj isIsPublicFolder]) {
        jsonDict[@".tag"] = @"is_public_folder";
    }
    else if ([valueObj isInsidePublicFolder]) {
        jsonDict[@".tag"] = @"inside_public_folder";
    }
    else if ([valueObj isAlreadyShared]) {
        jsonDict = [[DbxSharingSharedFolderMetadataSerializer serialize:valueObj.alreadyShared] mutableCopy];
        jsonDict[@".tag"] = @"already_shared";
    }
    else if ([valueObj isInvalidPath]) {
        jsonDict[@".tag"] = @"invalid_path";
    }
    else if ([valueObj isIsOsxPackage]) {
        jsonDict[@".tag"] = @"is_osx_package";
    }
    else if ([valueObj isInsideOsxPackage]) {
        jsonDict[@".tag"] = @"inside_osx_package";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingSharePathError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"is_file"]) {
        return [[DbxSharingSharePathError alloc] initWithIsFile];
    }
    if ([tag isEqualToString:@"inside_shared_folder"]) {
        return [[DbxSharingSharePathError alloc] initWithInsideSharedFolder];
    }
    if ([tag isEqualToString:@"contains_shared_folder"]) {
        return [[DbxSharingSharePathError alloc] initWithContainsSharedFolder];
    }
    if ([tag isEqualToString:@"is_app_folder"]) {
        return [[DbxSharingSharePathError alloc] initWithIsAppFolder];
    }
    if ([tag isEqualToString:@"inside_app_folder"]) {
        return [[DbxSharingSharePathError alloc] initWithInsideAppFolder];
    }
    if ([tag isEqualToString:@"is_public_folder"]) {
        return [[DbxSharingSharePathError alloc] initWithIsPublicFolder];
    }
    if ([tag isEqualToString:@"inside_public_folder"]) {
        return [[DbxSharingSharePathError alloc] initWithInsidePublicFolder];
    }
    if ([tag isEqualToString:@"already_shared"]) {
        DbxSharingSharedFolderMetadata *alreadyShared = [DbxSharingSharedFolderMetadataSerializer deserialize:valueDict];
        return [[DbxSharingSharePathError alloc] initWithAlreadyShared:alreadyShared];
    }
    if ([tag isEqualToString:@"invalid_path"]) {
        return [[DbxSharingSharePathError alloc] initWithInvalidPath];
    }
    if ([tag isEqualToString:@"is_osx_package"]) {
        return [[DbxSharingSharePathError alloc] initWithIsOsxPackage];
    }
    if ([tag isEqualToString:@"inside_osx_package"]) {
        return [[DbxSharingSharePathError alloc] initWithInsideOsxPackage];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingSharePathError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
