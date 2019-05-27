//
// ProfileAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ProfileAPI {
    /**
     Remove avatar
     
     - parameter authorization: (header) JWT access token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func v10ProfileAvatarRemovePost(authorization: String, completion: @escaping ((_ error: Error?) -> Void)) {
        v10ProfileAvatarRemovePostWithRequestBuilder(authorization: authorization).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Remove avatar
     - POST /v1.0/profile/avatar/remove
     
     - parameter authorization: (header) JWT access token 

     - returns: RequestBuilder<Void> 
     */
    open class func v10ProfileAvatarRemovePostWithRequestBuilder(authorization: String) -> RequestBuilder<Void> {
        let path = "/v1.0/profile/avatar/remove"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Update avatar
     
     - parameter fileId: (path)  
     - parameter authorization: (header) JWT access token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func v10ProfileAvatarUpdateByFileIdPost(fileId: String, authorization: String, completion: @escaping ((_ error: Error?) -> Void)) {
        v10ProfileAvatarUpdateByFileIdPostWithRequestBuilder(fileId: fileId, authorization: authorization).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update avatar
     - POST /v1.0/profile/avatar/update/{fileId}
     
     - parameter fileId: (path)  
     - parameter authorization: (header) JWT access token 

     - returns: RequestBuilder<Void> 
     */
    open class func v10ProfileAvatarUpdateByFileIdPostWithRequestBuilder(fileId: String, authorization: String) -> RequestBuilder<Void> {
        var path = "/v1.0/profile/avatar/update/{fileId}"
        path = path.replacingOccurrences(of: "{fileId}", with: "\(fileId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get full profile
     
     - parameter authorization: (header) JWT access token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func v10ProfileGet(authorization: String, completion: @escaping ((_ data: ProfileFullViewModel?,_ error: Error?) -> Void)) {
        v10ProfileGetWithRequestBuilder(authorization: authorization).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get full profile
     - GET /v1.0/profile
     - examples: [{contentType=application/json, example={
  "birthday" : "2000-01-23T04:56:07.000+00:00",
  "lastName" : "lastName",
  "country" : "country",
  "address" : "address",
  "gender" : true,
  "city" : "city",
  "verificationStatus" : "NotVerified",
  "citizenship" : "citizenship",
  "about" : "about",
  "index" : "index",
  "avatar" : "avatar",
  "userName" : "userName",
  "phoneNumberConfirmed" : true,
  "firstName" : "firstName",
  "phone" : "phone",
  "middleName" : "middleName",
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "refUrl" : "refUrl",
  "email" : "email"
}}]
     
     - parameter authorization: (header) JWT access token 

     - returns: RequestBuilder<ProfileFullViewModel> 
     */
    open class func v10ProfileGetWithRequestBuilder(authorization: String) -> RequestBuilder<ProfileFullViewModel> {
        let path = "/v1.0/profile"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ProfileFullViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get header profile
     
     - parameter authorization: (header) JWT access token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func v10ProfileHeaderGet(authorization: String, completion: @escaping ((_ data: ProfileHeaderViewModel?,_ error: Error?) -> Void)) {
        v10ProfileHeaderGetWithRequestBuilder(authorization: authorization).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get header profile
     - GET /v1.0/profile/header
     - examples: [{contentType=application/json, example={
  "totalBalance" : 3.5571952270680973,
  "pending" : 2.8841621266687802,
  "available" : 1.284659006116532,
  "notificationsCount" : 9,
  "kycConfirmed" : true,
  "availableGvt" : 6.438423552598547,
  "avatar" : "avatar",
  "investedGvt" : 9.018348186070783,
  "favoritesCount" : 6,
  "isNewUser" : true,
  "isTwoFactorEnabled" : true,
  "allowForex" : true,
  "name" : "name",
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "userType" : "Investor",
  "totalBalanceGvt" : 8.762042012749001,
  "email" : "email",
  "invested" : 6.965117697638846
}}]
     
     - parameter authorization: (header) JWT access token 

     - returns: RequestBuilder<ProfileHeaderViewModel> 
     */
    open class func v10ProfileHeaderGetWithRequestBuilder(authorization: String) -> RequestBuilder<ProfileHeaderViewModel> {
        let path = "/v1.0/profile/header"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ProfileHeaderViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Update user personal details
     
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func v10ProfilePersonalUpdatePost(authorization: String, model: UpdatePersonalDetailViewModel? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        v10ProfilePersonalUpdatePostWithRequestBuilder(authorization: authorization, model: model).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update user personal details
     - POST /v1.0/profile/personal/update
     
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func v10ProfilePersonalUpdatePostWithRequestBuilder(authorization: String, model: UpdatePersonalDetailViewModel? = nil) -> RequestBuilder<Void> {
        let path = "/v1.0/profile/personal/update"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: model)

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**

     - parameter authorization: (header) JWT access token 
     - parameter token: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func v10ProfilePushTokenPost(authorization: String, token: FcmTokenViewModel? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        v10ProfilePushTokenPostWithRequestBuilder(authorization: authorization, token: token).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     - POST /v1.0/profile/push/token
     
     - parameter authorization: (header) JWT access token 
     - parameter token: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func v10ProfilePushTokenPostWithRequestBuilder(authorization: String, token: FcmTokenViewModel? = nil) -> RequestBuilder<Void> {
        let path = "/v1.0/profile/push/token"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: token)

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Get social links
     
     - parameter authorization: (header) JWT access token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func v10ProfileSociallinksGet(authorization: String, completion: @escaping ((_ data: SocialLinksViewModel?,_ error: Error?) -> Void)) {
        v10ProfileSociallinksGetWithRequestBuilder(authorization: authorization).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get social links
     - GET /v1.0/profile/sociallinks
     - examples: [{contentType=application/json, example={
  "socialLinks" : [ {
    "name" : "name",
    "logo" : "logo",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "value" : "value",
    "url" : "url"
  }, {
    "name" : "name",
    "logo" : "logo",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "value" : "value",
    "url" : "url"
  } ]
}}]
     
     - parameter authorization: (header) JWT access token 

     - returns: RequestBuilder<SocialLinksViewModel> 
     */
    open class func v10ProfileSociallinksGetWithRequestBuilder(authorization: String) -> RequestBuilder<SocialLinksViewModel> {
        let path = "/v1.0/profile/sociallinks"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SocialLinksViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Add or update social links
     
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func v10ProfileSociallinksUpdatePost(authorization: String, model: UpdateSocialLinkViewModel? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        v10ProfileSociallinksUpdatePostWithRequestBuilder(authorization: authorization, model: model).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Add or update social links
     - POST /v1.0/profile/sociallinks/update
     
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func v10ProfileSociallinksUpdatePostWithRequestBuilder(authorization: String, model: UpdateSocialLinkViewModel? = nil) -> RequestBuilder<Void> {
        let path = "/v1.0/profile/sociallinks/update"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: model)

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update profile
     
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func v10ProfileUpdatePost(authorization: String, model: UpdateProfileViewModel? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        v10ProfileUpdatePostWithRequestBuilder(authorization: authorization, model: model).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update profile
     - POST /v1.0/profile/update
     
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func v10ProfileUpdatePostWithRequestBuilder(authorization: String, model: UpdateProfileViewModel? = nil) -> RequestBuilder<Void> {
        let path = "/v1.0/profile/update"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: model)

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**

     - parameter authorization: (header) JWT access token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func v10ProfileVerificationTokenPost(authorization: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        v10ProfileVerificationTokenPostWithRequestBuilder(authorization: authorization).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     - POST /v1.0/profile/verification/token
     - examples: [{contentType=application/json, example=""}]
     
     - parameter authorization: (header) JWT access token 

     - returns: RequestBuilder<String> 
     */
    open class func v10ProfileVerificationTokenPostWithRequestBuilder(authorization: String) -> RequestBuilder<String> {
        let path = "/v1.0/profile/verification/token"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

}
