//
// SearchAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class SearchAPI {
    /**
     Program / fund / manager search
     - parameter mask: (query)  (optional)     - parameter take: (query)  (optional)     - parameter skipStatistic: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func search(mask: String? = nil, take: Int? = nil, skipStatistic: Bool? = nil, completion: @escaping ((_ data: CommonPublicAssetsViewModel?,_ error: Error?) -> Void)) {
        searchWithRequestBuilder(mask: mask, take: take, skipStatistic: skipStatistic).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Program / fund / manager search
     - GET /v2.0/search
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "follows" : {
    "total" : 6,
    "items" : [ {
      "leverageMin" : 1,
      "brokerId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "color" : "color",
      "isExternal" : true,
      "subscribersCount" : 7,
      "brokerType" : "Undefined",
      "description" : "description",
      "title" : "title",
      "creationDate" : "2000-01-23T04:56:07.000+00:00",
      "logoUrl" : "logoUrl",
      "url" : "url",
      "tags" : [ null, null ],
      "tradesCount" : 1,
      "leverageMax" : 1,
      "personalDetails" : {
        "isOwnAsset" : true,
        "isFavorite" : true
      },
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "status" : "status"
    }, {
      "leverageMin" : 1,
      "brokerId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "color" : "color",
      "isExternal" : true,
      "subscribersCount" : 7,
      "brokerType" : "Undefined",
      "description" : "description",
      "title" : "title",
      "creationDate" : "2000-01-23T04:56:07.000+00:00",
      "logoUrl" : "logoUrl",
      "url" : "url",
      "tags" : [ null, null ],
      "tradesCount" : 1,
      "leverageMax" : 1,
      "personalDetails" : {
        "isOwnAsset" : true,
        "isFavorite" : true
      },
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "status" : "status"
    } ]
  },
  "funds" : {
    "total" : 4,
    "items" : [ {
      "totalAssetsCount" : 2,
      "color" : "color",
      "topFundAssets" : [ {
        "name" : "name",
        "asset" : "asset",
        "percent" : 1.4658129805029452,
        "logoUrl" : "logoUrl",
        "url" : "url"
      }, {
        "name" : "name",
        "asset" : "asset",
        "percent" : 1.4658129805029452,
        "logoUrl" : "logoUrl",
        "url" : "url"
      } ],
      "description" : "description",
      "title" : "title",
      "creationDate" : "2000-01-23T04:56:07.000+00:00",
      "logoUrl" : "logoUrl",
      "url" : "url",
      "personalDetails" : {
        "isOwnAsset" : true,
        "isFavorite" : true
      },
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "investorsCount" : 3,
      "status" : "status"
    }, {
      "totalAssetsCount" : 2,
      "color" : "color",
      "topFundAssets" : [ {
        "name" : "name",
        "asset" : "asset",
        "percent" : 1.4658129805029452,
        "logoUrl" : "logoUrl",
        "url" : "url"
      }, {
        "name" : "name",
        "asset" : "asset",
        "percent" : 1.4658129805029452,
        "logoUrl" : "logoUrl",
        "url" : "url"
      } ],
      "description" : "description",
      "title" : "title",
      "creationDate" : "2000-01-23T04:56:07.000+00:00",
      "logoUrl" : "logoUrl",
      "url" : "url",
      "personalDetails" : {
        "isOwnAsset" : true,
        "isFavorite" : true
      },
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "investorsCount" : 3,
      "status" : "status"
    } ]
  },
  "programs" : {
    "total" : 9,
    "items" : [ {
      "color" : "color",
      "description" : "description",
      "type" : "DailyPeriod",
      "title" : "title",
      "periodStarts" : "2000-01-23T04:56:07.000+00:00",
      "balance" : {
        "amount" : 7.386281948385884,
        "currency" : "Undefined"
      },
      "availableToInvest" : 5.962133916683182,
      "currency" : "Undefined",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "levelProgress" : 6.027456183070403,
      "investorsCount" : 5,
      "owner" : {
        "personalDetails" : {
          "isFollow" : true,
          "allowFollow" : true,
          "canCommentPosts" : true,
          "canWritePost" : true
        },
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "url" : "url",
        "logoUrl" : "logoUrl",
        "username" : "username"
      },
      "periodDuration" : 1,
      "brokerId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "statistic" : {
        "drawdown" : 3.616076749251911,
        "chart" : [ {
          "date" : "2000-01-23T04:56:07.000+00:00",
          "value" : 0.8008281904610115
        }, {
          "date" : "2000-01-23T04:56:07.000+00:00",
          "value" : 0.8008281904610115
        } ],
        "profit" : 9.301444243932576
      },
      "level" : 0,
      "entryFeeCurrent" : 7.061401241503109,
      "entryFeeSelected" : 2.3021358869347655,
      "creationDate" : "2000-01-23T04:56:07.000+00:00",
      "logoUrl" : "logoUrl",
      "url" : "url",
      "tags" : [ {
        "color" : "color",
        "name" : "name"
      }, {
        "color" : "color",
        "name" : "name"
      } ],
      "periodEnds" : "2000-01-23T04:56:07.000+00:00",
      "personalDetails" : {
        "isReinvest" : true,
        "isAutoJoin" : true,
        "isOwnAsset" : true,
        "isFavorite" : true
      },
      "status" : "status"
    }, {
      "color" : "color",
      "description" : "description",
      "type" : "DailyPeriod",
      "title" : "title",
      "periodStarts" : "2000-01-23T04:56:07.000+00:00",
      "balance" : {
        "amount" : 7.386281948385884,
        "currency" : "Undefined"
      },
      "availableToInvest" : 5.962133916683182,
      "currency" : "Undefined",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "levelProgress" : 6.027456183070403,
      "investorsCount" : 5,
      "owner" : {
        "personalDetails" : {
          "isFollow" : true,
          "allowFollow" : true,
          "canCommentPosts" : true,
          "canWritePost" : true
        },
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "url" : "url",
        "logoUrl" : "logoUrl",
        "username" : "username"
      },
      "periodDuration" : 1,
      "brokerId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "statistic" : {
        "drawdown" : 3.616076749251911,
        "chart" : [ {
          "date" : "2000-01-23T04:56:07.000+00:00",
          "value" : 0.8008281904610115
        }, {
          "date" : "2000-01-23T04:56:07.000+00:00",
          "value" : 0.8008281904610115
        } ],
        "profit" : 9.301444243932576
      },
      "level" : 0,
      "entryFeeCurrent" : 7.061401241503109,
      "entryFeeSelected" : 2.3021358869347655,
      "creationDate" : "2000-01-23T04:56:07.000+00:00",
      "logoUrl" : "logoUrl",
      "url" : "url",
      "tags" : [ {
        "color" : "color",
        "name" : "name"
      }, {
        "color" : "color",
        "name" : "name"
      } ],
      "periodEnds" : "2000-01-23T04:56:07.000+00:00",
      "personalDetails" : {
        "isReinvest" : true,
        "isAutoJoin" : true,
        "isOwnAsset" : true,
        "isFavorite" : true
      },
      "status" : "status"
    } ]
  },
  "managers" : {
    "total" : 4,
    "items" : [ {
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
      } ],
      "assets" : [ "assets", "assets" ],
      "followers" : 7,
      "following" : 1,
      "about" : "about",
      "regDate" : "2000-01-23T04:56:07.000+00:00",
      "personalDetails" : {
        "isFollow" : true,
        "allowFollow" : true,
        "canCommentPosts" : true,
        "canWritePost" : true
      },
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "logoUrl" : "logoUrl",
      "url" : "url",
      "username" : "username"
    }, {
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
      } ],
      "assets" : [ "assets", "assets" ],
      "followers" : 7,
      "following" : 1,
      "about" : "about",
      "regDate" : "2000-01-23T04:56:07.000+00:00",
      "personalDetails" : {
        "isFollow" : true,
        "allowFollow" : true,
        "canCommentPosts" : true,
        "canWritePost" : true
      },
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "logoUrl" : "logoUrl",
      "url" : "url",
      "username" : "username"
    } ]
  }
}}]
     - parameter mask: (query)  (optional)     - parameter take: (query)  (optional)     - parameter skipStatistic: (query)  (optional)

     - returns: RequestBuilder<CommonPublicAssetsViewModel> 
     */
    open class func searchWithRequestBuilder(mask: String? = nil, take: Int? = nil, skipStatistic: Bool? = nil) -> RequestBuilder<CommonPublicAssetsViewModel> {
        let path = "/v2.0/search"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "mask": mask, 
                        "take": take?.encodeToJSON(), 
                        "skipStatistic": skipStatistic
        ])

        let requestBuilder: RequestBuilder<CommonPublicAssetsViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
