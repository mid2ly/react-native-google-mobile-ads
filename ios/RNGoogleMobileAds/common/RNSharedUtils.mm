/**
 * Copyright (c) 2016-present Invertase Limited & Contributors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this library except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

#import "RNSharedUtils.h"

#pragma mark -
#pragma mark Constants

@implementation RNSharedUtils
static NSString *const RNErrorDomain = @"RNErrorDomain";

#pragma mark -
#pragma mark Methods

+ (void)rejectPromiseWithUserInfo:(RCTPromiseRejectBlock)reject
                         userInfo:(NSMutableDictionary *)userInfo {
  NSError *error = [NSError errorWithDomain:RNErrorDomain code:666 userInfo:userInfo];
  reject(userInfo[@"code"], userInfo[@"message"], error);
}

@end
