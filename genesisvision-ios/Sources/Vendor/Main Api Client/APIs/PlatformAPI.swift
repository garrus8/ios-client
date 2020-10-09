//
// PlatformAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class PlatformAPI {
    /**
     Get all supported assets for funds

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAllPlatformTradingAssets(completion: @escaping ((_ data: PlatformAssets?,_ error: Error?) -> Void)) {
        getAllPlatformTradingAssetsWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all supported assets for funds
     - GET /v2.0/platform/trading/assets
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "assets" : [ {
    "mandatoryFundPercent" : 5.962133916683182,
    "color" : "color",
    "provider" : "Undefined",
    "name" : "name",
    "description" : "description",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "asset" : "asset",
    "logoUrl" : "logoUrl",
    "url" : "url"
  }, {
    "mandatoryFundPercent" : 5.962133916683182,
    "color" : "color",
    "provider" : "Undefined",
    "name" : "name",
    "description" : "description",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "asset" : "asset",
    "logoUrl" : "logoUrl",
    "url" : "url"
  } ],
  "providers" : [ {
    "tradingSchedule" : {
      "hourEnd" : 2,
      "dayStart" : "Sunday",
      "minuteEnd" : 4,
      "hourStart" : 9,
      "hasTradingSchedule" : true,
      "minuteStart" : 3
    },
    "type" : "Undefined"
  }, {
    "tradingSchedule" : {
      "hourEnd" : 2,
      "dayStart" : "Sunday",
      "minuteEnd" : 4,
      "hourStart" : 9,
      "hasTradingSchedule" : true,
      "minuteStart" : 3
    },
    "type" : "Undefined"
  } ]
}}]

     - returns: RequestBuilder<PlatformAssets> 
     */
    open class func getAllPlatformTradingAssetsWithRequestBuilder() -> RequestBuilder<PlatformAssets> {
        let path = "/v2.0/platform/trading/assets"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<PlatformAssets>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get asset description
     - parameter asset: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPlatformAssetInfo(asset: String, completion: @escaping ((_ data: AssetInfo?,_ error: Error?) -> Void)) {
        getPlatformAssetInfoWithRequestBuilder(asset: asset).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get asset description
     - GET /v2.0/platform/asset/{asset}
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "symbol" : "symbol",
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
  "name" : "name",
  "description" : "description",
  "chartSymbol" : "chartSymbol",
  "logoUrl" : "logoUrl",
  "tags" : [ {
    "color" : "color",
    "name" : "name"
  }, {
    "color" : "color",
    "name" : "name"
  } ]
}}]
     - parameter asset: (path)  

     - returns: RequestBuilder<AssetInfo> 
     */
    open class func getPlatformAssetInfoWithRequestBuilder(asset: String) -> RequestBuilder<AssetInfo> {
        var path = "/v2.0/platform/asset/{asset}"
        let assetPreEscape = "\(asset)"
        let assetPostEscape = assetPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{asset}", with: assetPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<AssetInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Server date

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPlatformDate(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        getPlatformDateWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Server date
     - POST /v2.0/platform/date
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example=""}]

     - returns: RequestBuilder<String> 
     */
    open class func getPlatformDateWithRequestBuilder() -> RequestBuilder<String> {
        let path = "/v2.0/platform/date"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get platform events
     - parameter take: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPlatformEvents(take: Int? = nil, completion: @escaping ((_ data: PlatformEvents?,_ error: Error?) -> Void)) {
        getPlatformEventsWithRequestBuilder(take: take).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get platform events
     - GET /v2.0/platform/events
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "events" : [ {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "color" : "color",
    "text" : "text",
    "title" : "title",
    "type" : "Undefined",
    "value" : "value",
    "logoUrl" : "logoUrl",
    "assetUrl" : "assetUrl",
    "userUrl" : "userUrl",
    "assetType" : "None"
  }, {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "color" : "color",
    "text" : "text",
    "title" : "title",
    "type" : "Undefined",
    "value" : "value",
    "logoUrl" : "logoUrl",
    "assetUrl" : "assetUrl",
    "userUrl" : "userUrl",
    "assetType" : "None"
  } ]
}}]
     - parameter take: (query)  (optional)

     - returns: RequestBuilder<PlatformEvents> 
     */
    open class func getPlatformEventsWithRequestBuilder(take: Int? = nil) -> RequestBuilder<PlatformEvents> {
        let path = "/v2.0/platform/events"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "take": take?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<PlatformEvents>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Platform info

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPlatformInfo(completion: @escaping ((_ data: PlatformInfo?,_ error: Error?) -> Void)) {
        getPlatformInfoWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Platform info
     - GET /v2.0/platform/info
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "usersInfo" : {
    "availableBetaFeatures" : [ "None", "None" ],
    "socialLinkTypes" : [ {
      "name" : "name",
      "type" : "Undefined",
      "url" : "url",
      "logoUrl" : "logoUrl"
    }, {
      "name" : "name",
      "type" : "Undefined",
      "url" : "url",
      "logoUrl" : "logoUrl"
    } ],
    "tags" : [ null, null ]
  },
  "appVersionInfo" : {
    "android" : {
      "minVersion" : {
        "versionName" : "versionName",
        "versionCode" : "versionCode"
      }
    },
    "iOS" : {
      "lastVersion" : "lastVersion",
      "minVersion" : "minVersion"
    }
  },
  "filters" : {
    "walletTransactions" : [ {
      "title" : "title",
      "key" : "key"
    }, {
      "title" : "title",
      "key" : "key"
    } ],
    "assets" : [ null, null ],
    "fundsHistoryEvents" : [ null, null ],
    "events" : {
      "tradingHistory" : {
        "all" : [ null, null ],
        "fund" : [ null, null ],
        "program" : [ null, null ],
        "follow" : [ null, null ]
      },
      "investmentHistory" : {
        "all" : [ null, null ],
        "fund" : [ null, null ],
        "program" : [ null, null ]
      }
    },
    "walletExternalTransactions" : [ null, null ]
  },
  "commonInfo" : {
    "platformUrls" : [ {
      "type" : "Program",
      "url" : "url"
    }, {
      "type" : "Program",
      "url" : "url"
    } ],
    "platformCommission" : {
      "investment" : 7.386281948385884
    },
    "platformCurrencies" : [ {
      "color" : "color",
      "minConvertAmount" : 1.2315135367772556,
      "name" : "name"
    }, {
      "color" : "color",
      "minConvertAmount" : 1.2315135367772556,
      "name" : "name"
    } ]
  },
  "assetInfo" : {
    "programInfo" : {
      "createProgramInfo" : {
        "maxSuccessFee" : 6.027456183070403,
        "maxManagementFee" : 1.4658129805029452
      },
      "availableProgramCurrencies" : [ "availableProgramCurrencies", "availableProgramCurrencies" ],
      "periods" : [ 0, 0 ],
      "facets" : [ {
        "timeframe" : "Day",
        "sortType" : "New",
        "sorting" : "sorting",
        "description" : "description",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "title" : "title",
        "logoUrl" : "logoUrl",
        "url" : "url"
      }, {
        "timeframe" : "Day",
        "sortType" : "New",
        "sorting" : "sorting",
        "description" : "description",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "title" : "title",
        "logoUrl" : "logoUrl",
        "url" : "url"
      } ],
      "tags" : [ {
        "color" : "color",
        "name" : "name"
      }, {
        "color" : "color",
        "name" : "name"
      } ],
      "minInvestAmounts" : [ {
        "serverType" : "Undefined",
        "minDepositCreateAsset" : [ {
          "amount" : 7.457744773683766,
          "currency" : "Undefined"
        }, {
          "amount" : 7.457744773683766,
          "currency" : "Undefined"
        } ],
        "minInvestAmountIntoProgram" : [ null, null ]
      }, {
        "serverType" : "Undefined",
        "minDepositCreateAsset" : [ {
          "amount" : 7.457744773683766,
          "currency" : "Undefined"
        }, {
          "amount" : 7.457744773683766,
          "currency" : "Undefined"
        } ],
        "minInvestAmountIntoProgram" : [ null, null ]
      } ]
    },
    "tradingAccountInfo" : {
      "minAmounts" : [ {
        "minDepositCreateAsset" : [ null, null ]
      }, {
        "minDepositCreateAsset" : [ null, null ]
      } ],
      "maxAmounts" : [ {
        "transferDemo" : [ null, null ]
      }, {
        "transferDemo" : [ null, null ]
      } ]
    },
    "followInfo" : {
      "createFollowInfo" : {
        "maxSuccessFee" : 4.145608029883936,
        "maxVolumeFee" : 3.616076749251911,
        "minSuccessFee" : 2.027123023002322,
        "minVolumeFee" : 9.301444243932576
      },
      "subscribeFixedCurrencies" : [ "subscribeFixedCurrencies", "subscribeFixedCurrencies" ],
      "facets" : [ null, null ],
      "tags" : [ null, null ]
    },
    "fundInfo" : {
      "assets" : [ {
        "mandatoryFundPercent" : 5.962133916683182,
        "color" : "color",
        "provider" : "Undefined",
        "name" : "name",
        "description" : "description",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "asset" : "asset",
        "logoUrl" : "logoUrl",
        "url" : "url"
      }, {
        "mandatoryFundPercent" : 5.962133916683182,
        "color" : "color",
        "provider" : "Undefined",
        "name" : "name",
        "description" : "description",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "asset" : "asset",
        "logoUrl" : "logoUrl",
        "url" : "url"
      } ],
      "minWithdrawAmountFromFund" : [ null, null ],
      "createFundInfo" : {
        "maxExitFee" : 2.3021358869347655,
        "minDeposit" : 7.061401241503109,
        "maxEntryFee" : 5.637376656633329
      },
      "minInvestAmountIntoFund" : [ null, null ],
      "facets" : [ null, null ]
    }
  }
}}]

     - returns: RequestBuilder<PlatformInfo> 
     */
    open class func getPlatformInfoWithRequestBuilder() -> RequestBuilder<PlatformInfo> {
        let path = "/v2.0/platform/info"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<PlatformInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Platform landing info
     - parameter eventsTake: (query)  (optional)     - parameter followTake: (query)  (optional)     - parameter programsTake: (query)  (optional)     - parameter fundsTake: (query)  (optional)     - parameter newsTake: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPlatformLandingInfo(eventsTake: Int? = nil, followTake: Int? = nil, programsTake: Int? = nil, fundsTake: Int? = nil, newsTake: Int? = nil, completion: @escaping ((_ data: LandingInfo?,_ error: Error?) -> Void)) {
        getPlatformLandingInfoWithRequestBuilder(eventsTake: eventsTake, followTake: followTake, programsTake: programsTake, fundsTake: fundsTake, newsTake: newsTake).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Platform landing info
     - GET /v2.0/platform/landing
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "news" : [ {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "title" : "title",
    "body" : "body",
    "logoUrl" : "logoUrl",
    "url" : "url",
    "isHot" : true
  }, {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "title" : "title",
    "body" : "body",
    "logoUrl" : "logoUrl",
    "url" : "url",
    "isHot" : true
  } ],
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
        "percent" : 7.061401241503109,
        "logoUrl" : "logoUrl",
        "url" : "url"
      }, {
        "name" : "name",
        "asset" : "asset",
        "percent" : 7.061401241503109,
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
        "percent" : 7.061401241503109,
        "logoUrl" : "logoUrl",
        "url" : "url"
      }, {
        "name" : "name",
        "asset" : "asset",
        "percent" : 7.061401241503109,
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
        "amount" : 7.457744773683766,
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
        "drawdown" : 1.2315135367772556,
        "chart" : [ {
          "date" : 0,
          "value" : 6.027456183070403
        }, {
          "date" : 0,
          "value" : 6.027456183070403
        } ],
        "profit" : 7.386281948385884
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
        "amount" : 7.457744773683766,
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
        "drawdown" : 1.2315135367772556,
        "chart" : [ {
          "date" : 0,
          "value" : 6.027456183070403
        }, {
          "date" : 0,
          "value" : 6.027456183070403
        } ],
        "profit" : 7.386281948385884
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
  "events" : [ {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "color" : "color",
    "text" : "text",
    "title" : "title",
    "type" : "Undefined",
    "value" : "value",
    "logoUrl" : "logoUrl",
    "assetUrl" : "assetUrl",
    "userUrl" : "userUrl",
    "assetType" : "None"
  }, {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "color" : "color",
    "text" : "text",
    "title" : "title",
    "type" : "Undefined",
    "value" : "value",
    "logoUrl" : "logoUrl",
    "assetUrl" : "assetUrl",
    "userUrl" : "userUrl",
    "assetType" : "None"
  } ]
}}]
     - parameter eventsTake: (query)  (optional)     - parameter followTake: (query)  (optional)     - parameter programsTake: (query)  (optional)     - parameter fundsTake: (query)  (optional)     - parameter newsTake: (query)  (optional)

     - returns: RequestBuilder<LandingInfo> 
     */
    open class func getPlatformLandingInfoWithRequestBuilder(eventsTake: Int? = nil, followTake: Int? = nil, programsTake: Int? = nil, fundsTake: Int? = nil, newsTake: Int? = nil) -> RequestBuilder<LandingInfo> {
        let path = "/v2.0/platform/landing"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "eventsTake": eventsTake?.encodeToJSON(), 
                        "followTake": followTake?.encodeToJSON(), 
                        "programsTake": programsTake?.encodeToJSON(), 
                        "fundsTake": fundsTake?.encodeToJSON(), 
                        "newsTake": newsTake?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<LandingInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Investment programs levels
     - parameter currency: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getProgramLevels(currency: Currency? = nil, completion: @escaping ((_ data: ProgramsLevelsInfo?,_ error: Error?) -> Void)) {
        getProgramLevelsWithRequestBuilder(currency: currency).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Investment programs levels
     - GET /v2.0/platform/levels
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "levels" : [ {
    "level" : 0,
    "investmentLimit" : 6.027456183070403
  }, {
    "level" : 0,
    "investmentLimit" : 6.027456183070403
  } ]
}}]
     - parameter currency: (query)  (optional)

     - returns: RequestBuilder<ProgramsLevelsInfo> 
     */
    open class func getProgramLevelsWithRequestBuilder(currency: Currency? = nil) -> RequestBuilder<ProgramsLevelsInfo> {
        let path = "/v2.0/platform/levels"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "currency": currency
        ])

        let requestBuilder: RequestBuilder<ProgramsLevelsInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Investment programs levels parameters
     - parameter currency: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getProgramLevelsParams(currency: Currency? = nil, completion: @escaping ((_ data: LevelsParamsInfo?,_ error: Error?) -> Void)) {
        getProgramLevelsParamsWithRequestBuilder(currency: currency).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Investment programs levels parameters
     - GET /v2.0/platform/levels/parameters
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "genesisRatioMin" : 5.962133916683182,
  "investmentScaleHighRisk" : 1.2315135367772556,
  "maxAvailableToInvest" : 6.027456183070403,
  "volumeScaleMax" : 9.301444243932576,
  "investmentScaleMax" : 7.386281948385884,
  "genesisRatioMax" : 5.637376656633329,
  "ageByVolumeMax" : 2.027123023002322,
  "unverifiedAvailableToInvest" : 1.4658129805029452,
  "programAgeMax" : 3.616076749251911,
  "minAvailableToInvest" : 0.8008281904610115,
  "volumeScaleMin" : 7.061401241503109,
  "investmentScaleMin" : 4.145608029883936,
  "genesisRatioHighRisk" : 2.3021358869347655
}}]
     - parameter currency: (query)  (optional)

     - returns: RequestBuilder<LevelsParamsInfo> 
     */
    open class func getProgramLevelsParamsWithRequestBuilder(currency: Currency? = nil) -> RequestBuilder<LevelsParamsInfo> {
        let path = "/v2.0/platform/levels/parameters"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "currency": currency
        ])

        let requestBuilder: RequestBuilder<LevelsParamsInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Risk control
     - parameter route: (query)       - parameter client: (query)  (optional)     - parameter version: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRiskControlInfo(route: String, client: String? = nil, version: String? = nil, completion: @escaping ((_ data: CaptchaDetails?,_ error: Error?) -> Void)) {
        getRiskControlInfoWithRequestBuilder(route: route, client: client, version: version).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Risk control
     - GET /v2.0/platform/riskcontrol
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "route" : "route",
  "captchaType" : "None",
  "pow" : {
    "difficulty" : 0,
    "secureAlgorithm" : "Sha256",
    "nonce" : "nonce"
  },
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "geeTest" : { }
}}]
     - parameter route: (query)       - parameter client: (query)  (optional)     - parameter version: (query)  (optional)

     - returns: RequestBuilder<CaptchaDetails> 
     */
    open class func getRiskControlInfoWithRequestBuilder(route: String, client: String? = nil, version: String? = nil) -> RequestBuilder<CaptchaDetails> {
        let path = "/v2.0/platform/riskcontrol"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "Route": route, 
                        "Client": client, 
                        "Version": version
        ])

        let requestBuilder: RequestBuilder<CaptchaDetails>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Sitemap info

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSitemapInfo(completion: @escaping ((_ data: SiteMapInfo?,_ error: Error?) -> Void)) {
        getSitemapInfoWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Sitemap info
     - GET /v2.0/platform/sitemap
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "funds" : [ "funds", "funds" ],
  "programs" : [ "programs", "programs" ],
  "follow" : [ "follow", "follow" ],
  "actives" : [ "actives", "actives" ],
  "users" : [ "users", "users" ]
}}]

     - returns: RequestBuilder<SiteMapInfo> 
     */
    open class func getSitemapInfoWithRequestBuilder() -> RequestBuilder<SiteMapInfo> {
        let path = "/v2.0/platform/sitemap"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<SiteMapInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
