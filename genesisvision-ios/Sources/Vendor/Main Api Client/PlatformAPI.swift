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
    open class func getAllPlatformAssets(completion: @escaping ((_ data: PlatformAssets?,_ error: Error?) -> Void)) {
        getAllPlatformAssetsWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get all supported assets for funds
     - GET /v2.0/platform/assets
     - examples: [{contentType=application/json, example={
  "assets" : [ {
    "mandatoryFundPercent" : 0.8008281904610115,
    "color" : "color",
    "name" : "name",
    "icon" : "icon",
    "description" : "description",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "asset" : "asset"
  }, {
    "mandatoryFundPercent" : 0.8008281904610115,
    "color" : "color",
    "name" : "name",
    "icon" : "icon",
    "description" : "description",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "asset" : "asset"
  } ]
}}]

     - returns: RequestBuilder<PlatformAssets>
     */
    open class func getAllPlatformAssetsWithRequestBuilder() -> RequestBuilder<PlatformAssets> {
        let path = "/v2.0/platform/assets"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


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
            completion(response?.body, error);
        }
    }


    /**
     Get asset description
     - GET /v2.0/platform/asset/{asset}
     - examples: [{contentType=application/json, example={
  "symbol" : "symbol",
  "socialLinks" : [ {
    "name" : "name",
    "logo" : "logo",
    "type" : { },
    "value" : "value",
    "url" : "url"
  }, {
    "name" : "name",
    "logo" : "logo",
    "type" : { },
    "value" : "value",
    "url" : "url"
  } ],
  "name" : "name",
  "logo" : "logo",
  "description" : "description",
  "chartSymbol" : "chartSymbol",
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
        path = path.replacingOccurrences(of: "{asset}", with: "\(asset)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<AssetInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Server date
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPlatformDate(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        getPlatformDateWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Server date
     - POST /v2.0/platform/date
     - examples: [{contentType=application/json, example=""}]

     - returns: RequestBuilder<String>
     */
    open class func getPlatformDateWithRequestBuilder() -> RequestBuilder<String> {
        let path = "/v2.0/platform/date"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Platform info
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPlatformInfo(completion: @escaping ((_ data: PlatformInfo?,_ error: Error?) -> Void)) {
        getPlatformInfoWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Platform info
     - GET /v2.0/platform/info
     - examples: [{contentType=application/json, example={
  "usersInfo" : {
    "facets" : [ {
      "timeframe" : { },
      "sortType" : { },
      "sorting" : "sorting",
      "description" : "description",
      "logo" : "logo",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "title" : "title",
      "url" : "url"
    }, {
      "timeframe" : { },
      "sortType" : { },
      "sorting" : "sorting",
      "description" : "description",
      "logo" : "logo",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "title" : "title",
      "url" : "url"
    } ],
    "tags" : [ {
      "color" : "color",
      "name" : "name"
    }, {
      "color" : "color",
      "name" : "name"
    } ]
  },
  "appVersionInfo" : {
    "android" : {
      "lastVersion" : {
        "versionName" : "versionName",
        "versionCode" : "versionCode"
      },
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
    "events" : [ {
      "title" : "title",
      "key" : "key"
    }, {
      "title" : "title",
      "key" : "key"
    } ],
    "walletExternalTransactions" : [ {
      "title" : "title",
      "key" : "key"
    }, {
      "title" : "title",
      "key" : "key"
    } ]
  },
  "commonInfo" : {
    "platformUrls" : [ {
      "type" : { },
      "url" : "url"
    }, {
      "type" : { },
      "url" : "url"
    } ],
    "eventFilters" : {
      "tradingHistory" : {
        "programDetails" : [ {
          "title" : "title",
          "key" : "key"
        }, {
          "title" : "title",
          "key" : "key"
        } ],
        "fundDetails" : [ {
          "title" : "title",
          "key" : "key"
        }, {
          "title" : "title",
          "key" : "key"
        } ],
        "signalProgramDetails" : [ {
          "title" : "title",
          "key" : "key"
        }, {
          "title" : "title",
          "key" : "key"
        } ],
        "allAssets" : [ {
          "title" : "title",
          "key" : "key"
        }, {
          "title" : "title",
          "key" : "key"
        } ]
      },
      "investingHistory" : {
        "programDetails" : [ {
          "title" : "title",
          "key" : "key"
        }, {
          "title" : "title",
          "key" : "key"
        } ],
        "fundDetails" : [ {
          "title" : "title",
          "key" : "key"
        }, {
          "title" : "title",
          "key" : "key"
        } ],
        "allAssets" : [ {
          "title" : "title",
          "key" : "key"
        }, {
          "title" : "title",
          "key" : "key"
        } ]
      }
    },
    "platformCommission" : {
      "investment" : 2.027123023002322
    },
    "platformCurrencies" : [ {
      "color" : "color",
      "name" : "name"
    }, {
      "color" : "color",
      "name" : "name"
    } ]
  },
  "assetInfo" : {
    "programInfo" : {
      "createProgramInfo" : {
        "maxSuccessFee" : 1.4658129805029452,
        "maxEntryFee" : 6.027456183070403
      },
      "availableProgramCurrencies" : [ "availableProgramCurrencies", "availableProgramCurrencies" ],
      "periods" : [ 0, 0 ],
      "facets" : [ {
        "timeframe" : { },
        "sortType" : { },
        "sorting" : "sorting",
        "description" : "description",
        "logo" : "logo",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "title" : "title",
        "url" : "url"
      }, {
        "timeframe" : { },
        "sortType" : { },
        "sorting" : "sorting",
        "description" : "description",
        "logo" : "logo",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "title" : "title",
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
        "serverType" : { },
        "minDepositCreateAsset" : [ {
          "amount" : 9.301444243932576,
          "currency" : { }
        }, {
          "amount" : 9.301444243932576,
          "currency" : { }
        } ],
        "minInvestAmountIntoProgram" : [ {
          "amount" : 9.301444243932576,
          "currency" : { }
        }, {
          "amount" : 9.301444243932576,
          "currency" : { }
        } ]
      }, {
        "serverType" : { },
        "minDepositCreateAsset" : [ {
          "amount" : 9.301444243932576,
          "currency" : { }
        }, {
          "amount" : 9.301444243932576,
          "currency" : { }
        } ],
        "minInvestAmountIntoProgram" : [ {
          "amount" : 9.301444243932576,
          "currency" : { }
        }, {
          "amount" : 9.301444243932576,
          "currency" : { }
        } ]
      } ]
    },
    "tradingAccountInfo" : {
      "minAmounts" : [ {
        "serverType" : null,
        "minDepositCreateAsset" : [ {
          "amount" : 9.301444243932576,
          "currency" : { }
        }, {
          "amount" : 9.301444243932576,
          "currency" : { }
        } ]
      }, {
        "serverType" : null,
        "minDepositCreateAsset" : [ {
          "amount" : 9.301444243932576,
          "currency" : { }
        }, {
          "amount" : 9.301444243932576,
          "currency" : { }
        } ]
      } ]
    },
    "followInfo" : {
      "createFollowInfo" : {
        "maxSuccessFee" : 3.616076749251911,
        "maxVolumeFee" : 7.061401241503109,
        "minSuccessFee" : 9.301444243932576,
        "minVolumeFee" : 2.3021358869347655
      },
      "facets" : [ {
        "timeframe" : { },
        "sortType" : { },
        "sorting" : "sorting",
        "description" : "description",
        "logo" : "logo",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "title" : "title",
        "url" : "url"
      }, {
        "timeframe" : { },
        "sortType" : { },
        "sorting" : "sorting",
        "description" : "description",
        "logo" : "logo",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "title" : "title",
        "url" : "url"
      } ]
    },
    "fundInfo" : {
      "assets" : [ {
        "mandatoryFundPercent" : 0.8008281904610115,
        "color" : "color",
        "name" : "name",
        "icon" : "icon",
        "description" : "description",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "asset" : "asset"
      }, {
        "mandatoryFundPercent" : 0.8008281904610115,
        "color" : "color",
        "name" : "name",
        "icon" : "icon",
        "description" : "description",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "asset" : "asset"
      } ],
      "createFundInfo" : {
        "maxExitFee" : 5.637376656633329,
        "maxEntryFee" : 5.962133916683182
      },
      "minInvestAmountIntoFund" : [ {
        "amount" : 9.301444243932576,
        "currency" : { }
      }, {
        "amount" : 9.301444243932576,
        "currency" : { }
      } ],
      "facets" : [ {
        "timeframe" : { },
        "sortType" : { },
        "sorting" : "sorting",
        "description" : "description",
        "logo" : "logo",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "title" : "title",
        "url" : "url"
      }, {
        "timeframe" : { },
        "sortType" : { },
        "sorting" : "sorting",
        "description" : "description",
        "logo" : "logo",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "title" : "title",
        "url" : "url"
      } ]
    }
  }
}}]

     - returns: RequestBuilder<PlatformInfo>
     */
    open class func getPlatformInfoWithRequestBuilder() -> RequestBuilder<PlatformInfo> {
        let path = "/v2.0/platform/info"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PlatformInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter currency
     */
    public enum Currency_getProgramLevels: String {
        case usd = "USD"
        case btc = "BTC"
        case eth = "ETH"
        case usdt = "USDT"
        case gvt = "GVT"
        case undefined = "Undefined"
        case ada = "ADA"
        case xrp = "XRP"
        case bch = "BCH"
        case ltc = "LTC"
        case doge = "DOGE"
        case bnb = "BNB"
        case eur = "EUR"
    }

    /**
     Investment programs levels
     
     - parameter currency: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getProgramLevels(currency: Currency_getProgramLevels? = nil, completion: @escaping ((_ data: ProgramsLevelsInfo?,_ error: Error?) -> Void)) {
        getProgramLevelsWithRequestBuilder(currency: currency).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Investment programs levels
     - GET /v2.0/platform/levels
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
    open class func getProgramLevelsWithRequestBuilder(currency: Currency_getProgramLevels? = nil) -> RequestBuilder<ProgramsLevelsInfo> {
        let path = "/v2.0/platform/levels"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "currency": currency?.rawValue
        ])
        

        let requestBuilder: RequestBuilder<ProgramsLevelsInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter currency
     */
    public enum Currency_getProgramLevelsParams: String {
        case usd = "USD"
        case btc = "BTC"
        case eth = "ETH"
        case usdt = "USDT"
        case gvt = "GVT"
        case undefined = "Undefined"
        case ada = "ADA"
        case xrp = "XRP"
        case bch = "BCH"
        case ltc = "LTC"
        case doge = "DOGE"
        case bnb = "BNB"
        case eur = "EUR"
    }

    /**
     Investment programs levels parameters
     
     - parameter currency: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getProgramLevelsParams(currency: Currency_getProgramLevelsParams? = nil, completion: @escaping ((_ data: LevelsParamsInfo?,_ error: Error?) -> Void)) {
        getProgramLevelsParamsWithRequestBuilder(currency: currency).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Investment programs levels parameters
     - GET /v2.0/platform/levels/parameters
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
    open class func getProgramLevelsParamsWithRequestBuilder(currency: Currency_getProgramLevelsParams? = nil) -> RequestBuilder<LevelsParamsInfo> {
        let path = "/v2.0/platform/levels/parameters"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "currency": currency?.rawValue
        ])
        

        let requestBuilder: RequestBuilder<LevelsParamsInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Risk control
     
     - parameter route: (query)
     - parameter client: (query)  (optional)
     - parameter version: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRiskControlInfo(route: String, client: String? = nil, version: String? = nil, completion: @escaping ((_ data: CaptchaDetails?,_ error: Error?) -> Void)) {
        getRiskControlInfoWithRequestBuilder(route: route, client: client, version: version).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Risk control
     - GET /v2.0/platform/riskcontrol
     - examples: [{contentType=application/json, example={
  "route" : "route",
  "captchaType" : { },
  "pow" : {
    "difficulty" : 0,
    "secureAlgorithm" : { },
    "nonce" : "nonce"
  },
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "geeTest" : { }
}}]
     
     - parameter route: (query)
     - parameter client: (query)  (optional)
     - parameter version: (query)  (optional)

     - returns: RequestBuilder<CaptchaDetails>
     */
    open class func getRiskControlInfoWithRequestBuilder(route: String, client: String? = nil, version: String? = nil) -> RequestBuilder<CaptchaDetails> {
        let path = "/v2.0/platform/riskcontrol"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "Route": route,
            "Client": client,
            "Version": version
        ])
        

        let requestBuilder: RequestBuilder<CaptchaDetails>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        url?.percentEncodedQuery = url?.percentEncodedQuery?.replacingOccurrences(of: "+", with: "%2B")
        
        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
