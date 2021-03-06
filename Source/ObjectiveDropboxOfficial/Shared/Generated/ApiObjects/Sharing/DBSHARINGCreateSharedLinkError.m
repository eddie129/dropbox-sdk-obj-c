///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESLookupError.h"
#import "DBSHARINGCreateSharedLinkError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGCreateSharedLinkError

@synthesize path = _path;

#pragma mark - Constructors

- (instancetype)initWithPath:(DBFILESLookupError *)path {
  self = [super init];
  if (self) {
    _tag = DBSHARINGCreateSharedLinkErrorPath;
    _path = path;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBSHARINGCreateSharedLinkErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBFILESLookupError *)path {
  if (![self isPath]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBSHARINGCreateSharedLinkErrorPath, but was %@.", [self tagName]];
  }
  return _path;
}

#pragma mark - Tag state methods

- (BOOL)isPath {
  return _tag == DBSHARINGCreateSharedLinkErrorPath;
}

- (BOOL)isOther {
  return _tag == DBSHARINGCreateSharedLinkErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBSHARINGCreateSharedLinkErrorPath:
    return @"DBSHARINGCreateSharedLinkErrorPath";
  case DBSHARINGCreateSharedLinkErrorOther:
    return @"DBSHARINGCreateSharedLinkErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGCreateSharedLinkErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGCreateSharedLinkErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGCreateSharedLinkErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGCreateSharedLinkErrorSerializer

+ (NSDictionary *)serialize:(DBSHARINGCreateSharedLinkError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isPath]) {
    jsonDict[@"path"] = [[DBFILESLookupErrorSerializer serialize:valueObj.path] mutableCopy];
    jsonDict[@".tag"] = @"path";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBSHARINGCreateSharedLinkError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"path"]) {
    DBFILESLookupError *path = [DBFILESLookupErrorSerializer deserialize:valueDict[@"path"]];
    return [[DBSHARINGCreateSharedLinkError alloc] initWithPath:path];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBSHARINGCreateSharedLinkError alloc] initWithOther];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end
