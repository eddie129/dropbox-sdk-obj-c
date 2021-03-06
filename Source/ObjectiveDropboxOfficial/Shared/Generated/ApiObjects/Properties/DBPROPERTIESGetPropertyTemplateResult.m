///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBPROPERTIESGetPropertyTemplateResult.h"
#import "DBPROPERTIESPropertyFieldTemplate.h"
#import "DBPROPERTIESPropertyGroupTemplate.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBPROPERTIESGetPropertyTemplateResult

#pragma mark - Constructors

- (instancetype)initWithName:(NSString *)name
                description_:(NSString *)description_
                      fields:(NSArray<DBPROPERTIESPropertyFieldTemplate *> *)fields {
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](fields);

  self = [super initWithName:name description_:description_ fields:fields];
  if (self) {
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBPROPERTIESGetPropertyTemplateResultSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBPROPERTIESGetPropertyTemplateResultSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBPROPERTIESGetPropertyTemplateResultSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBPROPERTIESGetPropertyTemplateResultSerializer

+ (NSDictionary *)serialize:(DBPROPERTIESGetPropertyTemplateResult *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"name"] = valueObj.name;
  jsonDict[@"description"] = valueObj.description_;
  jsonDict[@"fields"] = [DBArraySerializer serialize:valueObj.fields
                                           withBlock:^id(id elem) {
                                             return [DBPROPERTIESPropertyFieldTemplateSerializer serialize:elem];
                                           }];

  return jsonDict;
}

+ (DBPROPERTIESGetPropertyTemplateResult *)deserialize:(NSDictionary *)valueDict {
  NSString *name = valueDict[@"name"];
  NSString *description_ = valueDict[@"description"];
  NSArray<DBPROPERTIESPropertyFieldTemplate *> *fields =
      [DBArraySerializer deserialize:valueDict[@"fields"]
                           withBlock:^id(id elem) {
                             return [DBPROPERTIESPropertyFieldTemplateSerializer deserialize:elem];
                           }];

  return [[DBPROPERTIESGetPropertyTemplateResult alloc] initWithName:name description_:description_ fields:fields];
}

@end
