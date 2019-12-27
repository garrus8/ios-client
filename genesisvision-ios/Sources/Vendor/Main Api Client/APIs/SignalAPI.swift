//
// SignalAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class SignalAPI {
    /**
     Subscribe to external signal using common account
     
     - parameter id: (path)  
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func attachSlaveToMasterExternalCommonAccount(id: UUID, authorization: String, model: AttachToExternalSignalProviderCommon? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        attachSlaveToMasterExternalCommonAccountWithRequestBuilder(id: id, authorization: authorization, model: model).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Subscribe to external signal using common account
     - POST /v2.0/signal/external/attach/{id}/common
     
     - parameter id: (path)  
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func attachSlaveToMasterExternalCommonAccountWithRequestBuilder(id: UUID, authorization: String, model: AttachToExternalSignalProviderCommon? = nil) -> RequestBuilder<Void> {
        var path = "/v2.0/signal/external/attach/{id}/common"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
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
     Subscribe to external signal account
     
     - parameter id: (path)  
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func attachSlaveToMasterExternalPrivateAccount(id: UUID, authorization: String, model: AttachToExternalSignalProviderExt? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        attachSlaveToMasterExternalPrivateAccountWithRequestBuilder(id: id, authorization: authorization, model: model).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Subscribe to external signal account
     - POST /v2.0/signal/external/attach/{id}/private
     
     - parameter id: (path)  
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func attachSlaveToMasterExternalPrivateAccountWithRequestBuilder(id: UUID, authorization: String, model: AttachToExternalSignalProviderExt? = nil) -> RequestBuilder<Void> {
        var path = "/v2.0/signal/external/attach/{id}/private"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
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
     Subscribe to signal provider
     
     - parameter id: (path)  
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func attachSlaveToMasterInternal(id: UUID, authorization: String, model: AttachToSignalProvider? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        attachSlaveToMasterInternalWithRequestBuilder(id: id, authorization: authorization, model: model).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Subscribe to signal provider
     - POST /v2.0/signal/attach/{id}
     
     - parameter id: (path)  
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func attachSlaveToMasterInternalWithRequestBuilder(id: UUID, authorization: String, model: AttachToSignalProvider? = nil) -> RequestBuilder<Void> {
        var path = "/v2.0/signal/attach/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
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
     Close signal trade
     
     - parameter id: (path) Trade id 
     - parameter authorization: (header) JWT access token 
     - parameter assetId: (query) Provider asset id (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func closeTradeInternal(id: UUID, authorization: String, assetId: UUID? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        closeTradeInternalWithRequestBuilder(id: id, authorization: authorization, assetId: assetId).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Close signal trade
     - POST /v2.0/signal/trades/{id}/close
     
     - parameter id: (path) Trade id 
     - parameter authorization: (header) JWT access token 
     - parameter assetId: (query) Provider asset id (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func closeTradeInternalWithRequestBuilder(id: UUID, authorization: String, assetId: UUID? = nil) -> RequestBuilder<Void> {
        var path = "/v2.0/signal/trades/{id}/close"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "assetId": assetId
        ])
        
        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**

     - parameter id: (path)  
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func detachSlaveFromMasterExternal(id: UUID, authorization: String, model: DetachFromExternalSignalProvider? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        detachSlaveFromMasterExternalWithRequestBuilder(id: id, authorization: authorization, model: model).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     - POST /v2.0/signal/external/detach/{id}
     
     - parameter id: (path)  
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func detachSlaveFromMasterExternalWithRequestBuilder(id: UUID, authorization: String, model: DetachFromExternalSignalProvider? = nil) -> RequestBuilder<Void> {
        var path = "/v2.0/signal/external/detach/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
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
     Unsubscribe from signal provider
     
     - parameter id: (path)  
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func detachSlaveFromMasterInternal(id: UUID, authorization: String, model: DetachFromSignalProvider? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        detachSlaveFromMasterInternalWithRequestBuilder(id: id, authorization: authorization, model: model).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Unsubscribe from signal provider
     - POST /v2.0/signal/detach/{id}
     
     - parameter id: (path)  
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func detachSlaveFromMasterInternalWithRequestBuilder(id: UUID, authorization: String, model: DetachFromSignalProvider? = nil) -> RequestBuilder<Void> {
        var path = "/v2.0/signal/detach/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
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
     * enum for parameter sorting
     */
    public enum Sorting_getOpenSignalTrades: String { 
        case byDateAsc = "ByDateAsc"
        case byDateDesc = "ByDateDesc"
        case byTicketAsc = "ByTicketAsc"
        case byTicketDesc = "ByTicketDesc"
        case bySymbolAsc = "BySymbolAsc"
        case bySymbolDesc = "BySymbolDesc"
        case byDirectionAsc = "ByDirectionAsc"
        case byDirectionDesc = "ByDirectionDesc"
        case byVolumeAsc = "ByVolumeAsc"
        case byVolumeDesc = "ByVolumeDesc"
        case byPriceAsc = "ByPriceAsc"
        case byPriceDesc = "ByPriceDesc"
        case byPriceCurrentAsc = "ByPriceCurrentAsc"
        case byPriceCurrentDesc = "ByPriceCurrentDesc"
        case byProfitAsc = "ByProfitAsc"
        case byProfitDesc = "ByProfitDesc"
        case byCommissionAsc = "ByCommissionAsc"
        case byCommissionDesc = "ByCommissionDesc"
        case bySwapAsc = "BySwapAsc"
        case bySwapDesc = "BySwapDesc"
    }

    /**
     * enum for parameter accountCurrency
     */
    public enum AccountCurrency_getOpenSignalTrades: String { 
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
     Get investors signals open trades
     
     - parameter authorization: (header) JWT access token 
     - parameter sorting: (query)  (optional)
     - parameter symbol: (query)  (optional)
     - parameter accountId: (query)  (optional)
     - parameter accountCurrency: (query)  (optional)
     - parameter skip: (query)  (optional)
     - parameter take: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getOpenSignalTrades(authorization: String, sorting: Sorting_getOpenSignalTrades? = nil, symbol: String? = nil, accountId: UUID? = nil, accountCurrency: AccountCurrency_getOpenSignalTrades? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping ((_ data: TradesSignalViewModel?,_ error: Error?) -> Void)) {
        getOpenSignalTradesWithRequestBuilder(authorization: authorization, sorting: sorting, symbol: symbol, accountId: accountId, accountCurrency: accountCurrency, skip: skip, take: take).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get investors signals open trades
     - GET /v2.0/signal/trades/open
     - examples: [{contentType=application/json, example={
  "total" : 7,
  "showSwaps" : true,
  "showTickets" : true,
  "items" : [ {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "originalCommissionCurrency" : "originalCommissionCurrency",
    "symbol" : "symbol",
    "originalCommission" : 1.2315135367772556,
    "totalCommission" : 7.061401241503109,
    "login" : "login",
    "priceCurrent" : 4.145608029883936,
    "price" : 2.027123023002322,
    "showOriginalCommission" : true,
    "currency" : null,
    "commission" : 1.0246457001441578,
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "baseVolume" : 7.386281948385884,
    "signalData" : {
      "masters" : [ {
        "share" : 6.84685269835264,
        "login" : "login"
      }, {
        "share" : 6.84685269835264,
        "login" : "login"
      } ]
    },
    "profit" : 3.616076749251911,
    "direction" : { },
    "externalSignalAccountId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "ticket" : "ticket",
    "swap" : 1.4894159098541704,
    "volume" : 9.301444243932576,
    "totalCommissionByType" : [ {
      "amount" : 9.301444243932576,
      "description" : "description",
      "currency" : null,
      "title" : "title",
      "type" : { }
    }, {
      "amount" : 9.301444243932576,
      "description" : "description",
      "currency" : null,
      "title" : "title",
      "type" : { }
    } ],
    "entry" : { },
    "tradingAccountId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "profitCurrency" : "profitCurrency",
    "providers" : [ {
      "volume" : 1.4658129805029452,
      "firstOrderDate" : "2000-01-23T04:56:07.000+00:00",
      "fees" : [ {
        "amount" : 2.3021358869347655,
        "currency" : { },
        "type" : { }
      }, {
        "amount" : 2.3021358869347655,
        "currency" : { },
        "type" : { }
      } ],
      "manager" : {
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
        "registrationDate" : "2000-01-23T04:56:07.000+00:00",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "avatar" : "avatar",
        "url" : "url",
        "username" : "username"
      },
      "priceOpenAvg" : 5.962133916683182,
      "program" : {
        "color" : "color",
        "level" : 0,
        "logo" : "logo",
        "title" : "title",
        "type" : { },
        "url" : "url",
        "levelProgress" : 6.027456183070403
      },
      "profit" : 5.637376656633329,
      "programId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
    }, {
      "volume" : 1.4658129805029452,
      "firstOrderDate" : "2000-01-23T04:56:07.000+00:00",
      "fees" : [ {
        "amount" : 2.3021358869347655,
        "currency" : { },
        "type" : { }
      }, {
        "amount" : 2.3021358869347655,
        "currency" : { },
        "type" : { }
      } ],
      "manager" : {
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
        "registrationDate" : "2000-01-23T04:56:07.000+00:00",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "avatar" : "avatar",
        "url" : "url",
        "username" : "username"
      },
      "priceOpenAvg" : 5.962133916683182,
      "program" : {
        "color" : "color",
        "level" : 0,
        "logo" : "logo",
        "title" : "title",
        "type" : { },
        "url" : "url",
        "levelProgress" : 6.027456183070403
      },
      "profit" : 5.637376656633329,
      "programId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
    } ]
  }, {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "originalCommissionCurrency" : "originalCommissionCurrency",
    "symbol" : "symbol",
    "originalCommission" : 1.2315135367772556,
    "totalCommission" : 7.061401241503109,
    "login" : "login",
    "priceCurrent" : 4.145608029883936,
    "price" : 2.027123023002322,
    "showOriginalCommission" : true,
    "currency" : null,
    "commission" : 1.0246457001441578,
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "baseVolume" : 7.386281948385884,
    "signalData" : {
      "masters" : [ {
        "share" : 6.84685269835264,
        "login" : "login"
      }, {
        "share" : 6.84685269835264,
        "login" : "login"
      } ]
    },
    "profit" : 3.616076749251911,
    "direction" : { },
    "externalSignalAccountId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "ticket" : "ticket",
    "swap" : 1.4894159098541704,
    "volume" : 9.301444243932576,
    "totalCommissionByType" : [ {
      "amount" : 9.301444243932576,
      "description" : "description",
      "currency" : null,
      "title" : "title",
      "type" : { }
    }, {
      "amount" : 9.301444243932576,
      "description" : "description",
      "currency" : null,
      "title" : "title",
      "type" : { }
    } ],
    "entry" : { },
    "tradingAccountId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "profitCurrency" : "profitCurrency",
    "providers" : [ {
      "volume" : 1.4658129805029452,
      "firstOrderDate" : "2000-01-23T04:56:07.000+00:00",
      "fees" : [ {
        "amount" : 2.3021358869347655,
        "currency" : { },
        "type" : { }
      }, {
        "amount" : 2.3021358869347655,
        "currency" : { },
        "type" : { }
      } ],
      "manager" : {
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
        "registrationDate" : "2000-01-23T04:56:07.000+00:00",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "avatar" : "avatar",
        "url" : "url",
        "username" : "username"
      },
      "priceOpenAvg" : 5.962133916683182,
      "program" : {
        "color" : "color",
        "level" : 0,
        "logo" : "logo",
        "title" : "title",
        "type" : { },
        "url" : "url",
        "levelProgress" : 6.027456183070403
      },
      "profit" : 5.637376656633329,
      "programId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
    }, {
      "volume" : 1.4658129805029452,
      "firstOrderDate" : "2000-01-23T04:56:07.000+00:00",
      "fees" : [ {
        "amount" : 2.3021358869347655,
        "currency" : { },
        "type" : { }
      }, {
        "amount" : 2.3021358869347655,
        "currency" : { },
        "type" : { }
      } ],
      "manager" : {
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
        "registrationDate" : "2000-01-23T04:56:07.000+00:00",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "avatar" : "avatar",
        "url" : "url",
        "username" : "username"
      },
      "priceOpenAvg" : 5.962133916683182,
      "program" : {
        "color" : "color",
        "level" : 0,
        "logo" : "logo",
        "title" : "title",
        "type" : { },
        "url" : "url",
        "levelProgress" : 6.027456183070403
      },
      "profit" : 5.637376656633329,
      "programId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
    } ]
  } ]
}}]
     
     - parameter authorization: (header) JWT access token 
     - parameter sorting: (query)  (optional)
     - parameter symbol: (query)  (optional)
     - parameter accountId: (query)  (optional)
     - parameter accountCurrency: (query)  (optional)
     - parameter skip: (query)  (optional)
     - parameter take: (query)  (optional)

     - returns: RequestBuilder<TradesSignalViewModel> 
     */
    open class func getOpenSignalTradesWithRequestBuilder(authorization: String, sorting: Sorting_getOpenSignalTrades? = nil, symbol: String? = nil, accountId: UUID? = nil, accountCurrency: AccountCurrency_getOpenSignalTrades? = nil, skip: Int? = nil, take: Int? = nil) -> RequestBuilder<TradesSignalViewModel> {
        let path = "/v2.0/signal/trades/open"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "Sorting": sorting?.rawValue, 
            "Symbol": symbol, 
            "AccountId": accountId, 
            "AccountCurrency": accountCurrency?.rawValue, 
            "Skip": skip?.encodeToJSON(), 
            "Take": take?.encodeToJSON()
        ])
        
        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<TradesSignalViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     * enum for parameter accountCurrency
     */
    public enum AccountCurrency_getSignalTradingLog: String { 
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
     Get investors signals trading log
     
     - parameter authorization: (header) JWT access token 
     - parameter accountId: (query)  (optional)
     - parameter accountCurrency: (query)  (optional)
     - parameter skip: (query)  (optional)
     - parameter take: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSignalTradingLog(authorization: String, accountId: UUID? = nil, accountCurrency: AccountCurrency_getSignalTradingLog? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping ((_ data: ItemsViewModelSignalTradingEvent?,_ error: Error?) -> Void)) {
        getSignalTradingLogWithRequestBuilder(authorization: authorization, accountId: accountId, accountCurrency: accountCurrency, skip: skip, take: take).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get investors signals trading log
     - GET /v2.0/signal/trades/log
     - examples: [{contentType=application/json, example={
  "total" : 0,
  "items" : [ {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "message" : "message"
  }, {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "message" : "message"
  } ]
}}]
     
     - parameter authorization: (header) JWT access token 
     - parameter accountId: (query)  (optional)
     - parameter accountCurrency: (query)  (optional)
     - parameter skip: (query)  (optional)
     - parameter take: (query)  (optional)

     - returns: RequestBuilder<ItemsViewModelSignalTradingEvent> 
     */
    open class func getSignalTradingLogWithRequestBuilder(authorization: String, accountId: UUID? = nil, accountCurrency: AccountCurrency_getSignalTradingLog? = nil, skip: Int? = nil, take: Int? = nil) -> RequestBuilder<ItemsViewModelSignalTradingEvent> {
        let path = "/v2.0/signal/trades/log"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "AccountId": accountId, 
            "AccountCurrency": accountCurrency?.rawValue, 
            "Skip": skip?.encodeToJSON(), 
            "Take": take?.encodeToJSON()
        ])
        
        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ItemsViewModelSignalTradingEvent>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get subscriber accounts for subscribe to signal provider (common method for all signals)
     
     - parameter id: (path)  
     - parameter authorization: (header) JWT access token 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSubscriberAccountsForAsset(id: UUID, authorization: String, completion: @escaping ((_ data: ItemsViewModelTradingAccountDetails?,_ error: Error?) -> Void)) {
        getSubscriberAccountsForAssetWithRequestBuilder(id: id, authorization: authorization).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get subscriber accounts for subscribe to signal provider (common method for all signals)
     - GET /v2.0/signal/attach/{id}/accounts
     - examples: [{contentType=application/json, example={
  "total" : 0,
  "items" : [ {
    "apiKey" : "apiKey",
    "currency" : "USD",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "login" : "login",
    "asset" : {
      "programDetails" : {
        "level" : 0,
        "levelProgress" : 6.027456183070403
      },
      "color" : "color",
      "logo" : "logo",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "title" : "title",
      "url" : "url",
      "assetType" : { }
    }
  }, {
    "apiKey" : "apiKey",
    "currency" : "USD",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "login" : "login",
    "asset" : {
      "programDetails" : {
        "level" : 0,
        "levelProgress" : 6.027456183070403
      },
      "color" : "color",
      "logo" : "logo",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "title" : "title",
      "url" : "url",
      "assetType" : { }
    }
  } ]
}}]
     
     - parameter id: (path)  
     - parameter authorization: (header) JWT access token 

     - returns: RequestBuilder<ItemsViewModelTradingAccountDetails> 
     */
    open class func getSubscriberAccountsForAssetWithRequestBuilder(id: UUID, authorization: String) -> RequestBuilder<ItemsViewModelTradingAccountDetails> {
        var path = "/v2.0/signal/attach/{id}/accounts"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ItemsViewModelTradingAccountDetails>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Update signal subscription settings
     
     - parameter id: (path)  
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateExternalSubscriptionSettings(id: UUID, authorization: String, model: AttachToExternalSignalProviderExt? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateExternalSubscriptionSettingsWithRequestBuilder(id: id, authorization: authorization, model: model).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update signal subscription settings
     - POST /v2.0/signal/external/{id}/update
     
     - parameter id: (path)  
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateExternalSubscriptionSettingsWithRequestBuilder(id: UUID, authorization: String, model: AttachToExternalSignalProviderExt? = nil) -> RequestBuilder<Void> {
        var path = "/v2.0/signal/external/{id}/update"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
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
     Update signal subscription settings
     
     - parameter id: (path)  
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateSubscriptionSettings(id: UUID, authorization: String, model: AttachToSignalProvider? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateSubscriptionSettingsWithRequestBuilder(id: id, authorization: authorization, model: model).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update signal subscription settings
     - POST /v2.0/signal/{id}/update
     
     - parameter id: (path)  
     - parameter authorization: (header) JWT access token 
     - parameter model: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateSubscriptionSettingsWithRequestBuilder(id: UUID, authorization: String, model: AttachToSignalProvider? = nil) -> RequestBuilder<Void> {
        var path = "/v2.0/signal/{id}/update"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
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

}
