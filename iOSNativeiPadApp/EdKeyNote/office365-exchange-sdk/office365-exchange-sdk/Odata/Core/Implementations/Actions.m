﻿//
//  Action.m
//
//  Copyright (c) 2014 Microsoft Open Technologies, Inc.
//  All rights reserved.
//

#import "Actions.h"
#import "JsonParser.h"


@implementation ActionFolder
				
-(NSURLSessionDataTask*) Copy : (NSString *) DestinationId : (void (^)(Folder *folder, NSURLResponse *response, NSError *error))callback
{
	EntityContainer *container = [EntityContainer getEntityContainer];
	JsonParser *parser = [[JsonParser alloc] init];

	NSString *url = [NSString stringWithFormat:@"/Folders('%@')/action.Name", self.EntityId];
	
	NSString* param0 = [parser toJsonString:DestinationId Property:@"DestinationId"];
	NSString *jsonString = [NSString stringWithFormat:@"%@",param0];

	NSData *d = [jsonString dataUsingEncoding:NSUTF8StringEncoding];

	return [container executeForPath:url Method:@"POST" Body:d Callback:^(NSData *data, NSURLResponse *response, NSError *error) {
		NSArray* selectors = [[NSArray alloc] initWithObjects:@"value", nil];
		Folder* result = [parser parseWithData:data forType:Folder.class selector:selectors];
		callback(result,response,error);
	}];
}
				
-(NSURLSessionDataTask*) Move : (NSString *) DestinationId : (void (^)(Folder *folder, NSURLResponse *response, NSError *error))callback
{
	EntityContainer *container = [EntityContainer getEntityContainer];
	JsonParser *parser = [[JsonParser alloc] init];

	NSString *url = [NSString stringWithFormat:@"/Folders('%@')/action.Name", self.EntityId];
	
	NSString* param0 = [parser toJsonString:DestinationId Property:@"DestinationId"];
	NSString *jsonString = [NSString stringWithFormat:@"%@",param0];

	NSData *d = [jsonString dataUsingEncoding:NSUTF8StringEncoding];

	return [container executeForPath:url Method:@"POST" Body:d Callback:^(NSData *data, NSURLResponse *response, NSError *error) {
		NSArray* selectors = [[NSArray alloc] initWithObjects:@"value", nil];
		Folder* result = [parser parseWithData:data forType:Folder.class selector:selectors];
		callback(result,response,error);
	}];
}

@end

@implementation ActionMessage
				
-(NSURLSessionDataTask*) Copy : (NSString *) DestinationId : (void (^)(Message *message, NSURLResponse *response, NSError *error))callback
{
	EntityContainer *container = [EntityContainer getEntityContainer];
	JsonParser *parser = [[JsonParser alloc] init];

	NSString *url = [NSString stringWithFormat:@"/Messages('%@')/action.Name", self.EntityId];
	
	NSString* param0 = [parser toJsonString:DestinationId Property:@"DestinationId"];
	NSString *jsonString = [NSString stringWithFormat:@"%@",param0];

	NSData *d = [jsonString dataUsingEncoding:NSUTF8StringEncoding];

	return [container executeForPath:url Method:@"POST" Body:d Callback:^(NSData *data, NSURLResponse *response, NSError *error) {
		NSArray* selectors = [[NSArray alloc] initWithObjects:@"value", nil];
		Message* result = [parser parseWithData:data forType:Message.class selector:selectors];
		callback(result,response,error);
	}];
}
				
-(NSURLSessionDataTask*) Move : (NSString *) DestinationId : (void (^)(Message *message, NSURLResponse *response, NSError *error))callback
{
	EntityContainer *container = [EntityContainer getEntityContainer];
	JsonParser *parser = [[JsonParser alloc] init];

	NSString *url = [NSString stringWithFormat:@"/Messages('%@')/action.Name", self.EntityId];
	
	NSString* param0 = [parser toJsonString:DestinationId Property:@"DestinationId"];
	NSString *jsonString = [NSString stringWithFormat:@"%@",param0];

	NSData *d = [jsonString dataUsingEncoding:NSUTF8StringEncoding];

	return [container executeForPath:url Method:@"POST" Body:d Callback:^(NSData *data, NSURLResponse *response, NSError *error) {
		NSArray* selectors = [[NSArray alloc] initWithObjects:@"value", nil];
		Message* result = [parser parseWithData:data forType:Message.class selector:selectors];
		callback(result,response,error);
	}];
}
				
-(NSURLSessionDataTask*) CreateReply : (void (^)(Message *message, NSURLResponse *response, NSError *error))callback
{
	EntityContainer *container = [EntityContainer getEntityContainer];
	JsonParser *parser = [[JsonParser alloc] init];

	NSString *url = [NSString stringWithFormat:@"/Messages('%@')/action.Name", self.EntityId];
	
	
	NSString *jsonString =nil;

	NSData *d = [jsonString dataUsingEncoding:NSUTF8StringEncoding];

	return [container executeForPath:url Method:@"POST" Body:d Callback:^(NSData *data, NSURLResponse *response, NSError *error) {
		NSArray* selectors = [[NSArray alloc] initWithObjects:@"value", nil];
		Message* result = [parser parseWithData:data forType:Message.class selector:selectors];
		callback(result,response,error);
	}];
}
				
-(NSURLSessionDataTask*) CreateReplyAll : (void (^)(Message *message, NSURLResponse *response, NSError *error))callback
{
	EntityContainer *container = [EntityContainer getEntityContainer];
	JsonParser *parser = [[JsonParser alloc] init];

	NSString *url = [NSString stringWithFormat:@"/Messages('%@')/action.Name", self.EntityId];
	
	
	NSString *jsonString =nil;

	NSData *d = [jsonString dataUsingEncoding:NSUTF8StringEncoding];

	return [container executeForPath:url Method:@"POST" Body:d Callback:^(NSData *data, NSURLResponse *response, NSError *error) {
		NSArray* selectors = [[NSArray alloc] initWithObjects:@"value", nil];
		Message* result = [parser parseWithData:data forType:Message.class selector:selectors];
		callback(result,response,error);
	}];
}
				
-(NSURLSessionDataTask*) CreateForward : (void (^)(Message *message, NSURLResponse *response, NSError *error))callback
{
	EntityContainer *container = [EntityContainer getEntityContainer];
	JsonParser *parser = [[JsonParser alloc] init];

	NSString *url = [NSString stringWithFormat:@"/Messages('%@')/action.Name", self.EntityId];
	
	
	NSString *jsonString =nil;

	NSData *d = [jsonString dataUsingEncoding:NSUTF8StringEncoding];

	return [container executeForPath:url Method:@"POST" Body:d Callback:^(NSData *data, NSURLResponse *response, NSError *error) {
		NSArray* selectors = [[NSArray alloc] initWithObjects:@"value", nil];
		Message* result = [parser parseWithData:data forType:Message.class selector:selectors];
		callback(result,response,error);
	}];
}
				
-(NSURLSessionDataTask*) Reply : (NSString *) Comment : (void (^)(int returnValue, NSURLResponse *response, NSError *error))callback
{
	EntityContainer *container = [EntityContainer getEntityContainer];
	JsonParser *parser = [[JsonParser alloc] init];

	NSString *url = [NSString stringWithFormat:@"/Messages('%@')/action.Name", self.EntityId];
	
	NSString* param0 = [parser toJsonString:Comment Property:@"Comment"];
	NSString *jsonString = [NSString stringWithFormat:@"%@",param0];

	NSData *d = [jsonString dataUsingEncoding:NSUTF8StringEncoding];

	return [container executeForPath:url Method:@"POST" Body:d Callback:^(NSData *data, NSURLResponse *response, NSError *error) {
		NSArray* selectors = [[NSArray alloc] initWithObjects:@"value", nil];
		int result = [parser parseWithData:data forType:nil selector:selectors];
		callback(result,response,error);
	}];
}
				
-(NSURLSessionDataTask*) ReplyAll : (NSString *) Comment : (void (^)(int returnValue, NSURLResponse *response, NSError *error))callback
{
	EntityContainer *container = [EntityContainer getEntityContainer];
	JsonParser *parser = [[JsonParser alloc] init];

	NSString *url = [NSString stringWithFormat:@"/Messages('%@')/action.Name", self.EntityId];
	
	NSString* param0 = [parser toJsonString:Comment Property:@"Comment"];
	NSString *jsonString = [NSString stringWithFormat:@"%@",param0];

	NSData *d = [jsonString dataUsingEncoding:NSUTF8StringEncoding];

	return [container executeForPath:url Method:@"POST" Body:d Callback:^(NSData *data, NSURLResponse *response, NSError *error) {
		NSArray* selectors = [[NSArray alloc] initWithObjects:@"value", nil];
		int result = [parser parseWithData:data forType:nil selector:selectors];
		callback(result,response,error);
	}];
}
				
-(NSURLSessionDataTask*) Forward : (NSString *) Comment : (NSMutableArray<Recipient> *) ToRecipients : (void (^)(int returnValue, NSURLResponse *response, NSError *error))callback
{
	EntityContainer *container = [EntityContainer getEntityContainer];
	JsonParser *parser = [[JsonParser alloc] init];

	NSString *url = [NSString stringWithFormat:@"/Messages('%@')/action.Name", self.EntityId];
	
	NSString* param0 = [parser toJsonString:Comment Property:@"Comment"];
    NSString* param1 = [parser toJsonString:ToRecipients];

	NSString *jsonString = [NSString stringWithFormat:@"%@,%@",param0,param1];

	NSData *d = [jsonString dataUsingEncoding:NSUTF8StringEncoding];

	return [container executeForPath:url Method:@"POST" Body:d Callback:^(NSData *data, NSURLResponse *response, NSError *error) {
		NSArray* selectors = [[NSArray alloc] initWithObjects:@"value", nil];
		int result = [parser parseWithData:data forType:nil selector:selectors];
		callback(result,response,error);
	}];
}
				
-(NSURLSessionDataTask*) Send : (void (^)(int returnValue, NSURLResponse *response, NSError *error))callback
{
	EntityContainer *container = [EntityContainer getEntityContainer];
	JsonParser *parser = [[JsonParser alloc] init];

	NSString *url = [NSString stringWithFormat:@"/Messages('%@')/Send", self.EntityId];
	
	
	NSString *jsonString =nil;

	NSData *d = [jsonString dataUsingEncoding:NSUTF8StringEncoding];

	return [container executeForPath:url Method:@"POST" Body:d Callback:^(NSData *data, NSURLResponse *response, NSError *error) {
		//NSArray* selectors = [[NSArray alloc] initWithObjects:@"value", nil];
		int result = [parser parseWithData:data forType:nil selector:nil];
		callback(result,response,error);
	}];
}

@end

@implementation ActionEvent
				
-(NSURLSessionDataTask*) Accept : (NSString *) Comment : (void (^)(int returnValue, NSURLResponse *response, NSError *error))callback
{
	EntityContainer *container = [EntityContainer getEntityContainer];
	JsonParser *parser = [[JsonParser alloc] init];

	NSString *url = [NSString stringWithFormat:@"/Events('%@')/action.Name", self.EntityId];
	
	NSString* param0 = [parser toJsonString:Comment Property:@"Comment"];
	NSString *jsonString = [NSString stringWithFormat:@"%@",param0];

	NSData *d = [jsonString dataUsingEncoding:NSUTF8StringEncoding];

	return [container executeForPath:url Method:@"POST" Body:d Callback:^(NSData *data, NSURLResponse *response, NSError *error) {
		NSArray* selectors = [[NSArray alloc] initWithObjects:@"value", nil];
		int result = [parser parseWithData:data forType:nil selector:selectors];
		callback(result,response,error);
	}];
}
				
-(NSURLSessionDataTask*) Decline : (NSString *) Comment : (void (^)(int returnValue, NSURLResponse *response, NSError *error))callback
{
	EntityContainer *container = [EntityContainer getEntityContainer];
	JsonParser *parser = [[JsonParser alloc] init];

	NSString *url = [NSString stringWithFormat:@"/Events('%@')/action.Name", self.EntityId];
	
	NSString* param0 = [parser toJsonString:Comment Property:@"Comment"];
	NSString *jsonString = [NSString stringWithFormat:@"%@",param0];

	NSData *d = [jsonString dataUsingEncoding:NSUTF8StringEncoding];

	return [container executeForPath:url Method:@"POST" Body:d Callback:^(NSData *data, NSURLResponse *response, NSError *error) {
		NSArray* selectors = [[NSArray alloc] initWithObjects:@"value", nil];
		int result = [parser parseWithData:data forType:nil selector:selectors];
		callback(result,response,error);
	}];
}
				
-(NSURLSessionDataTask*) TentativelyAccept : (NSString *) Comment : (void (^)(int returnValue, NSURLResponse *response, NSError *error))callback
{
	EntityContainer *container = [EntityContainer getEntityContainer];
	JsonParser *parser = [[JsonParser alloc] init];

	NSString *url = [NSString stringWithFormat:@"/Events('%@')/action.Name", self.EntityId];
	
	NSString* param0 = [parser toJsonString:Comment Property:@"Comment"];
	NSString *jsonString = [NSString stringWithFormat:@"%@",param0];

	NSData *d = [jsonString dataUsingEncoding:NSUTF8StringEncoding];

	return [container executeForPath:url Method:@"POST" Body:d Callback:^(NSData *data, NSURLResponse *response, NSError *error) {
		NSArray* selectors = [[NSArray alloc] initWithObjects:@"value", nil];
		int result = [parser parseWithData:data forType:nil selector:selectors];
		callback(result,response,error);
	}];
}

@end
