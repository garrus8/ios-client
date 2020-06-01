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
     Get full profile

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getProfileFull(completion: @escaping ((_ data: ProfileFullViewModel?,_ error: Error?) -> Void)) {
        getProfileFullWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get full profile
     - GET /v2.0/profile
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "birthday" : "2000-01-23T04:56:07.000+00:00",
  "lastName" : "lastName",
  "country" : "country",
  "address" : "address",
  "gender" : true,
  "whoCanPostToMayWall" : "AllUsers",
  "city" : "city",
  "verificationStatus" : "NotVerified",
  "isPublicInvestor" : true,
  "citizenship" : "citizenship",
  "about" : "about",
  "index" : "index",
  "userName" : "userName",
  "phoneNumberConfirmed" : true,
  "logoUrl" : "logoUrl",
  "firstName" : "firstName",
  "phone" : "phone",
  "middleName" : "middleName",
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "refUrl" : "refUrl",
  "platformCurrency" : "Undefined",
  "email" : "email"
}}]

     - returns: RequestBuilder<ProfileFullViewModel> 
     */
    open class func getProfileFullWithRequestBuilder() -> RequestBuilder<ProfileFullViewModel> {
        let path = "/v2.0/profile"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ProfileFullViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get header profile

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getProfileHeader(completion: @escaping ((_ data: ProfileHeaderViewModel?,_ error: Error?) -> Void)) {
        getProfileHeaderWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get header profile
     - GET /v2.0/profile/header
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "isPublicInvestor" : true,
  "isUserNameFilled" : true,
  "notificationsCount" : 0,
  "isNewUser" : true,
  "url" : "url",
  "logoUrl" : "logoUrl",
  "isForexAllowed" : true,
  "isTwoFactorEnabled" : true,
  "betaTester" : [ "None", "None" ],
  "countryCode" : "countryCode",
  "isKycConfirmed" : true,
  "isCountryUS" : true,
  "name" : "name",
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "platformCurrency" : "Undefined",
  "email" : "email"
}}]

     - returns: RequestBuilder<ProfileHeaderViewModel> 
     */
    open class func getProfileHeaderWithRequestBuilder() -> RequestBuilder<ProfileHeaderViewModel> {
        let path = "/v2.0/profile/header"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ProfileHeaderViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get social links

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSocialLinks(completion: @escaping ((_ data: SocialLinksViewModel?,_ error: Error?) -> Void)) {
        getSocialLinksWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get social links
     - GET /v2.0/profile/sociallinks
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "socialLinks" : [ {
    "name" : "name",
    "type" : "Undefined",
    "value" : "value",
    "url" : "url",
    "logoUrl" : "logoUrl"
  }, {
    "name" : "name",
    "type" : "Undefined",
    "value" : "value",
    "url" : "url",
    "logoUrl" : "logoUrl"
  } ]
}}]

     - returns: RequestBuilder<SocialLinksViewModel> 
     */
    open class func getSocialLinksWithRequestBuilder() -> RequestBuilder<SocialLinksViewModel> {
        let path = "/v2.0/profile/sociallinks"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<SocialLinksViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVerificationToken(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        getVerificationTokenWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /v2.0/profile/verification/token
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example=""}]

     - returns: RequestBuilder<String> 
     */
    open class func getVerificationTokenWithRequestBuilder() -> RequestBuilder<String> {
        let path = "/v2.0/profile/verification/token"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove avatar

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func removeAvatar(completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        removeAvatarWithRequestBuilder().execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Remove avatar
     - POST /v2.0/profile/avatar/remove
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer

     - returns: RequestBuilder<Void> 
     */
    open class func removeAvatarWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/v2.0/profile/avatar/remove"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func removeFcmToken(body: FcmTokenViewModel? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        removeFcmTokenWithRequestBuilder(body: body).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - POST /v2.0/profile/push/token/remove
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func removeFcmTokenWithRequestBuilder(body: FcmTokenViewModel? = nil) -> RequestBuilder<Void> {
        let path = "/v2.0/profile/push/token/remove"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Disable beta feature
     - parameter feature: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func switchBetaFeatureOff(feature: BetaTestingType? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        switchBetaFeatureOffWithRequestBuilder(feature: feature).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Disable beta feature
     - POST /v2.0/profile/beta/off
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter feature: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func switchBetaFeatureOffWithRequestBuilder(feature: BetaTestingType? = nil) -> RequestBuilder<Void> {
        let path = "/v2.0/profile/beta/off"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "feature": feature
        ])

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Enable beta feature
     - parameter feature: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func switchBetaFeatureOn(feature: BetaTestingType? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        switchBetaFeatureOnWithRequestBuilder(feature: feature).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Enable beta feature
     - POST /v2.0/profile/beta/on
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter feature: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func switchBetaFeatureOnWithRequestBuilder(feature: BetaTestingType? = nil) -> RequestBuilder<Void> {
        let path = "/v2.0/profile/beta/on"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "feature": feature
        ])

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Disable public investor profile

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func switchPublicInvestorOff(completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        switchPublicInvestorOffWithRequestBuilder().execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Disable public investor profile
     - POST /v2.0/profile/investor/public/off
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer

     - returns: RequestBuilder<Void> 
     */
    open class func switchPublicInvestorOffWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/v2.0/profile/investor/public/off"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Enable public investor profile

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func switchPublicInvestorOn(completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        switchPublicInvestorOnWithRequestBuilder().execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Enable public investor profile
     - POST /v2.0/profile/investor/public/on
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer

     - returns: RequestBuilder<Void> 
     */
    open class func switchPublicInvestorOnWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/v2.0/profile/investor/public/on"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Add or update all social links
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateAllSocialLinks(body: UpdateSocialLinksViewModel? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        updateAllSocialLinksWithRequestBuilder(body: body).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Add or update all social links
     - POST /v2.0/profile/sociallinks/all/update
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateAllSocialLinksWithRequestBuilder(body: UpdateSocialLinksViewModel? = nil) -> RequestBuilder<Void> {
        let path = "/v2.0/profile/sociallinks/all/update"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update avatar
     - parameter fileId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateAvatar(fileId: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        updateAvatarWithRequestBuilder(fileId: fileId).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Update avatar
     - POST /v2.0/profile/avatar/update/{fileId}
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter fileId: (path)  

     - returns: RequestBuilder<Void> 
     */
    open class func updateAvatarWithRequestBuilder(fileId: String) -> RequestBuilder<Void> {
        var path = "/v2.0/profile/avatar/update/{fileId}"
        let fileIdPreEscape = "\(fileId)"
        let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateFcmToken(body: FcmTokenViewModel? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        updateFcmTokenWithRequestBuilder(body: body).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - POST /v2.0/profile/push/token
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateFcmTokenWithRequestBuilder(body: FcmTokenViewModel? = nil) -> RequestBuilder<Void> {
        let path = "/v2.0/profile/push/token"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update user personal details
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updatePersonalDetails(body: UpdatePersonalDetailViewModel? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        updatePersonalDetailsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Update user personal details
     - POST /v2.0/profile/personal/update
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updatePersonalDetailsWithRequestBuilder(body: UpdatePersonalDetailViewModel? = nil) -> RequestBuilder<Void> {
        let path = "/v2.0/profile/personal/update"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update profile
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateProfile(body: UpdateProfileViewModel? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        updateProfileWithRequestBuilder(body: body).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Update profile
     - POST /v2.0/profile/update
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateProfileWithRequestBuilder(body: UpdateProfileViewModel? = nil) -> RequestBuilder<Void> {
        let path = "/v2.0/profile/update"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add or update social links
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateSocialLinks(body: UpdateSocialLinkViewModel? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        updateSocialLinksWithRequestBuilder(body: body).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Add or update social links
     - POST /v2.0/profile/sociallinks/update
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateSocialLinksWithRequestBuilder(body: UpdateSocialLinkViewModel? = nil) -> RequestBuilder<Void> {
        let path = "/v2.0/profile/sociallinks/update"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update platform currency
     - parameter currency: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateUserPlatformCurrency(currency: Currency? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        updateUserPlatformCurrencyWithRequestBuilder(currency: currency).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Update platform currency
     - POST /v2.0/profile/currency/update
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter currency: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateUserPlatformCurrencyWithRequestBuilder(currency: Currency? = nil) -> RequestBuilder<Void> {
        let path = "/v2.0/profile/currency/update"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "currency": currency
        ])

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update user social settings
     - parameter whoCanPostToMayWall: (query)  (optional)     - parameter whoCanViewCommentsOnMyPosts: (query)  (optional)     - parameter whoCanCommentOnMyPosts: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateUserSocialSettings(whoCanPostToMayWall: SocialViewMode? = nil, whoCanViewCommentsOnMyPosts: SocialViewMode? = nil, whoCanCommentOnMyPosts: SocialViewMode? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        updateUserSocialSettingsWithRequestBuilder(whoCanPostToMayWall: whoCanPostToMayWall, whoCanViewCommentsOnMyPosts: whoCanViewCommentsOnMyPosts, whoCanCommentOnMyPosts: whoCanCommentOnMyPosts).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Update user social settings
     - POST /v2.0/profile/social/settings/update
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter whoCanPostToMayWall: (query)  (optional)     - parameter whoCanViewCommentsOnMyPosts: (query)  (optional)     - parameter whoCanCommentOnMyPosts: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateUserSocialSettingsWithRequestBuilder(whoCanPostToMayWall: SocialViewMode? = nil, whoCanViewCommentsOnMyPosts: SocialViewMode? = nil, whoCanCommentOnMyPosts: SocialViewMode? = nil) -> RequestBuilder<Void> {
        let path = "/v2.0/profile/social/settings/update"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "WhoCanPostToMayWall": whoCanPostToMayWall, 
                        "WhoCanViewCommentsOnMyPosts": whoCanViewCommentsOnMyPosts, 
                        "WhoCanCommentOnMyPosts": whoCanCommentOnMyPosts
        ])

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
