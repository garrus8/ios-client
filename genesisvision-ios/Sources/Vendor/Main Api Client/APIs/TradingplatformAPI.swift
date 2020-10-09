//
// TradingplatformAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class TradingplatformAPI {
    /**
     Add account favorite symbol
     - parameter _id: (path)       - parameter symbol: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addFavoriteSymbol(_id: UUID, symbol: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        addFavoriteSymbolWithRequestBuilder(_id: _id, symbol: symbol).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Add account favorite symbol
     - POST /v2.0/tradingplatform/accounts/{id}/symbols/favorite/{symbol}/add
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter _id: (path)       - parameter symbol: (path)  

     - returns: RequestBuilder<Void> 
     */
    open class func addFavoriteSymbolWithRequestBuilder(_id: UUID, symbol: String) -> RequestBuilder<Void> {
        var path = "/v2.0/tradingplatform/accounts/{id}/symbols/favorite/{symbol}/add"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let symbolPreEscape = "\(symbol)"
        let symbolPostEscape = symbolPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{symbol}", with: symbolPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Cancel all orders
     - parameter accountId: (query)  (optional)     - parameter symbol: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func cancelAllOrders(accountId: UUID? = nil, symbol: String? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        cancelAllOrdersWithRequestBuilder(accountId: accountId, symbol: symbol).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Cancel all orders
     - POST /v2.0/tradingplatform/binance/spot/orders/close/all
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter accountId: (query)  (optional)     - parameter symbol: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func cancelAllOrdersWithRequestBuilder(accountId: UUID? = nil, symbol: String? = nil) -> RequestBuilder<Void> {
        let path = "/v2.0/tradingplatform/binance/spot/orders/close/all"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "accountId": accountId, 
                        "symbol": symbol
        ])

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Cancel order
     - parameter accountId: (query)  (optional)     - parameter symbol: (query)  (optional)     - parameter orderId: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func cancelOrder(accountId: UUID? = nil, symbol: String? = nil, orderId: String? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        cancelOrderWithRequestBuilder(accountId: accountId, symbol: symbol, orderId: orderId).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Cancel order
     - POST /v2.0/tradingplatform/binance/spot/orders/close
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter accountId: (query)  (optional)     - parameter symbol: (query)  (optional)     - parameter orderId: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func cancelOrderWithRequestBuilder(accountId: UUID? = nil, symbol: String? = nil, orderId: String? = nil) -> RequestBuilder<Void> {
        let path = "/v2.0/tradingplatform/binance/spot/orders/close"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "accountId": accountId, 
                        "symbol": symbol, 
                        "orderId": orderId
        ])

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get 24H price
     - parameter symbol: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func get24HPrice(symbol: String, completion: @escaping ((_ data: BinanceRaw24HPrice?,_ error: Error?) -> Void)) {
        get24HPriceWithRequestBuilder(symbol: symbol).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get 24H price
     - GET /v2.0/tradingplatform/binance/market/{symbol}/ticker/24hr
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "priceChange" : 0.8008281904610115,
  "symbol" : "symbol",
  "bidQuantity" : 1.0246457001441578,
  "askPrice" : 1.4894159098541704,
  "weightedAveragePrice" : 1.4658129805029452,
  "firstTradeId" : 3,
  "lastTradeId" : 2,
  "askQuantity" : 6.84685269835264,
  "openPrice" : 2.3021358869347655,
  "totalTrades" : 4,
  "quoteVolume" : 1.1730742509559433,
  "bidPrice" : 1.2315135367772556,
  "lowPrice" : 9.301444243932576,
  "highPrice" : 7.061401241503109,
  "closeTime" : "2000-01-23T04:56:07.000+00:00",
  "openTime" : "2000-01-23T04:56:07.000+00:00",
  "baseVolume" : 7.457744773683766,
  "lastQuantity" : 5.637376656633329,
  "priceChangePercent" : 6.027456183070403,
  "prevDayClosePrice" : 7.386281948385884,
  "lastPrice" : 5.962133916683182
}}]
     - parameter symbol: (path)  

     - returns: RequestBuilder<BinanceRaw24HPrice> 
     */
    open class func get24HPriceWithRequestBuilder(symbol: String) -> RequestBuilder<BinanceRaw24HPrice> {
        var path = "/v2.0/tradingplatform/binance/market/{symbol}/ticker/24hr"
        let symbolPreEscape = "\(symbol)"
        let symbolPostEscape = symbolPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{symbol}", with: symbolPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<BinanceRaw24HPrice>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     - parameter accountId: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAccountInfo(accountId: UUID? = nil, completion: @escaping ((_ data: BinanceRawAccountInfo?,_ error: Error?) -> Void)) {
        getAccountInfoWithRequestBuilder(accountId: accountId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /v2.0/tradingplatform/binance/account
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "balances" : [ {
    "total" : 7.061401241503109,
    "asset" : "asset",
    "free" : 5.637376656633329,
    "locked" : 2.3021358869347655
  }, {
    "total" : 7.061401241503109,
    "asset" : "asset",
    "free" : 5.637376656633329,
    "locked" : 2.3021358869347655
  } ],
  "makerCommission" : 0.8008281904610115,
  "buyerCommission" : 1.4658129805029452,
  "canWithdraw" : true,
  "permissions" : [ null, null ],
  "accountType" : "Spot",
  "sellerCommission" : 5.962133916683182,
  "updateTime" : "2000-01-23T04:56:07.000+00:00",
  "canDeposit" : true,
  "takerCommission" : 6.027456183070403,
  "canTrade" : true
}}]
     - parameter accountId: (query)  (optional)

     - returns: RequestBuilder<BinanceRawAccountInfo> 
     */
    open class func getAccountInfoWithRequestBuilder(accountId: UUID? = nil) -> RequestBuilder<BinanceRawAccountInfo> {
        let path = "/v2.0/tradingplatform/binance/account"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "accountId": accountId
        ])

        let requestBuilder: RequestBuilder<BinanceRawAccountInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Exchange info

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getExchangeInfo(completion: @escaping ((_ data: BinanceRawExchangeInfo?,_ error: Error?) -> Void)) {
        getExchangeInfoWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Exchange info
     - GET /v2.0/tradingplatform/binance/server/info
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "rateLimits" : [ {
    "intervalNumber" : 0,
    "limit" : 6,
    "interval" : "Second",
    "type" : "RequestWeight"
  }, {
    "intervalNumber" : 0,
    "limit" : 6,
    "interval" : "Second",
    "type" : "RequestWeight"
  } ],
  "timeZone" : "timeZone",
  "serverTime" : "2000-01-23T04:56:07.000+00:00",
  "symbols" : [ {
    "iceBergAllowed" : true,
    "quoteOrderQuantityMarketAllowed" : true,
    "baseAsset" : "baseAsset",
    "filters" : [ {
      "filterType" : "Unknown"
    }, {
      "filterType" : "Unknown"
    } ],
    "baseAssetPrecision" : 1,
    "isSpotTradingAllowed" : true,
    "quoteAssetPrecision" : 5,
    "quoteCommissionPrecision" : 2,
    "ocoAllowed" : true,
    "orderTypes" : [ "Limit", "Limit" ],
    "permissions" : [ "Spot", "Spot" ],
    "name" : "name",
    "isMarginTradingAllowed" : true,
    "quoteAsset" : "quoteAsset",
    "baseCommissionPrecision" : 5,
    "status" : "PreTrading"
  }, {
    "iceBergAllowed" : true,
    "quoteOrderQuantityMarketAllowed" : true,
    "baseAsset" : "baseAsset",
    "filters" : [ {
      "filterType" : "Unknown"
    }, {
      "filterType" : "Unknown"
    } ],
    "baseAssetPrecision" : 1,
    "isSpotTradingAllowed" : true,
    "quoteAssetPrecision" : 5,
    "quoteCommissionPrecision" : 2,
    "ocoAllowed" : true,
    "orderTypes" : [ "Limit", "Limit" ],
    "permissions" : [ "Spot", "Spot" ],
    "name" : "name",
    "isMarginTradingAllowed" : true,
    "quoteAsset" : "quoteAsset",
    "baseCommissionPrecision" : 5,
    "status" : "PreTrading"
  } ]
}}]

     - returns: RequestBuilder<BinanceRawExchangeInfo> 
     */
    open class func getExchangeInfoWithRequestBuilder() -> RequestBuilder<BinanceRawExchangeInfo> {
        let path = "/v2.0/tradingplatform/binance/server/info"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<BinanceRawExchangeInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Server time

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getExchangeTime(completion: @escaping ((_ data: Date?,_ error: Error?) -> Void)) {
        getExchangeTimeWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Server time
     - GET /v2.0/tradingplatform/binance/server/time
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example="2000-01-23T04:56:07.000+00:00"}]

     - returns: RequestBuilder<Date> 
     */
    open class func getExchangeTimeWithRequestBuilder() -> RequestBuilder<Date> {
        let path = "/v2.0/tradingplatform/binance/server/time"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Date>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get account favorite symbols
     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFavoriteSymbols(_id: UUID, completion: @escaping ((_ data: StringItemsViewModel?,_ error: Error?) -> Void)) {
        getFavoriteSymbolsWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get account favorite symbols
     - GET /v2.0/tradingplatform/accounts/{id}/symbols/favorite
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "total" : 0,
  "items" : [ "items", "items" ]
}}]
     - parameter _id: (path)  

     - returns: RequestBuilder<StringItemsViewModel> 
     */
    open class func getFavoriteSymbolsWithRequestBuilder(_id: UUID) -> RequestBuilder<StringItemsViewModel> {
        var path = "/v2.0/tradingplatform/accounts/{id}/symbols/favorite"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<StringItemsViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get klines
     - parameter symbol: (path)       - parameter interval: (query)  (optional)     - parameter startTime: (query)  (optional)     - parameter endTime: (query)  (optional)     - parameter limit: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getKlines(symbol: String, interval: BinanceRawKlineInterval? = nil, startTime: Date? = nil, endTime: Date? = nil, limit: Int? = nil, completion: @escaping ((_ data: BinanceRawKlineItemsViewModel?,_ error: Error?) -> Void)) {
        getKlinesWithRequestBuilder(symbol: symbol, interval: interval, startTime: startTime, endTime: endTime, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get klines
     - GET /v2.0/tradingplatform/binance/market/{symbol}/klines
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "total" : 2,
  "items" : [ {
    "takerBuyQuoteVolume" : 3.616076749251911,
    "high" : 6.027456183070403,
    "tradeCount" : 7,
    "low" : 1.4658129805029452,
    "closeTime" : "2000-01-23T04:56:07.000+00:00",
    "takerBuyBaseVolume" : 9.301444243932576,
    "quoteVolume" : 2.3021358869347655,
    "openTime" : "2000-01-23T04:56:07.000+00:00",
    "baseVolume" : 5.637376656633329,
    "close" : 5.962133916683182,
    "open" : 0.8008281904610115
  }, {
    "takerBuyQuoteVolume" : 3.616076749251911,
    "high" : 6.027456183070403,
    "tradeCount" : 7,
    "low" : 1.4658129805029452,
    "closeTime" : "2000-01-23T04:56:07.000+00:00",
    "takerBuyBaseVolume" : 9.301444243932576,
    "quoteVolume" : 2.3021358869347655,
    "openTime" : "2000-01-23T04:56:07.000+00:00",
    "baseVolume" : 5.637376656633329,
    "close" : 5.962133916683182,
    "open" : 0.8008281904610115
  } ]
}}]
     - parameter symbol: (path)       - parameter interval: (query)  (optional)     - parameter startTime: (query)  (optional)     - parameter endTime: (query)  (optional)     - parameter limit: (query)  (optional)

     - returns: RequestBuilder<BinanceRawKlineItemsViewModel> 
     */
    open class func getKlinesWithRequestBuilder(symbol: String, interval: BinanceRawKlineInterval? = nil, startTime: Date? = nil, endTime: Date? = nil, limit: Int? = nil) -> RequestBuilder<BinanceRawKlineItemsViewModel> {
        var path = "/v2.0/tradingplatform/binance/market/{symbol}/klines"
        let symbolPreEscape = "\(symbol)"
        let symbolPostEscape = symbolPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{symbol}", with: symbolPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "interval": interval, 
                        "startTime": startTime?.encodeToJSON(), 
                        "endTime": endTime?.encodeToJSON(), 
                        "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<BinanceRawKlineItemsViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Open positions
     - parameter accountId: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getOpenOrders(accountId: UUID? = nil, completion: @escaping ((_ data: BinanceRawOrderItemsViewModel?,_ error: Error?) -> Void)) {
        getOpenOrdersWithRequestBuilder(accountId: accountId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Open positions
     - GET /v2.0/tradingplatform/binance/spot/orders
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "total" : 1,
  "items" : [ {
    "symbol" : "symbol",
    "orderId" : 5,
    "executionType" : "New",
    "type" : "Limit",
    "originalClientOrderId" : "originalClientOrderId",
    "rejectReason" : "None",
    "buyerIsMaker" : true,
    "price" : 6.027456183070403,
    "commission" : 3.616076749251911,
    "lastQuantityFilled" : 2.3021358869347655,
    "timeInForce" : "GoodTillCancel",
    "icebergQuantity" : 5.962133916683182,
    "quoteQuantity" : 7.386281948385884,
    "lastPriceFilled" : 9.301444243932576,
    "quoteQuantityFilled" : 4.145608029883936,
    "side" : "Buy",
    "quantity" : 0.8008281904610115,
    "orderListId" : 1,
    "lastQuoteQuantity" : 1.2315135367772556,
    "clientOrderId" : "clientOrderId",
    "updateTime" : "2000-01-23T04:56:07.000+00:00",
    "commissionAsset" : "commissionAsset",
    "quantityFilled" : 7.061401241503109,
    "accountId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "stopPrice" : 1.4658129805029452,
    "createTime" : "2000-01-23T04:56:07.000+00:00",
    "tradeId" : 2,
    "isWorking" : true,
    "status" : "New"
  }, {
    "symbol" : "symbol",
    "orderId" : 5,
    "executionType" : "New",
    "type" : "Limit",
    "originalClientOrderId" : "originalClientOrderId",
    "rejectReason" : "None",
    "buyerIsMaker" : true,
    "price" : 6.027456183070403,
    "commission" : 3.616076749251911,
    "lastQuantityFilled" : 2.3021358869347655,
    "timeInForce" : "GoodTillCancel",
    "icebergQuantity" : 5.962133916683182,
    "quoteQuantity" : 7.386281948385884,
    "lastPriceFilled" : 9.301444243932576,
    "quoteQuantityFilled" : 4.145608029883936,
    "side" : "Buy",
    "quantity" : 0.8008281904610115,
    "orderListId" : 1,
    "lastQuoteQuantity" : 1.2315135367772556,
    "clientOrderId" : "clientOrderId",
    "updateTime" : "2000-01-23T04:56:07.000+00:00",
    "commissionAsset" : "commissionAsset",
    "quantityFilled" : 7.061401241503109,
    "accountId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "stopPrice" : 1.4658129805029452,
    "createTime" : "2000-01-23T04:56:07.000+00:00",
    "tradeId" : 2,
    "isWorking" : true,
    "status" : "New"
  } ]
}}]
     - parameter accountId: (query)  (optional)

     - returns: RequestBuilder<BinanceRawOrderItemsViewModel> 
     */
    open class func getOpenOrdersWithRequestBuilder(accountId: UUID? = nil) -> RequestBuilder<BinanceRawOrderItemsViewModel> {
        let path = "/v2.0/tradingplatform/binance/spot/orders"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "accountId": accountId
        ])

        let requestBuilder: RequestBuilder<BinanceRawOrderItemsViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get order book
     - parameter symbol: (path)       - parameter limit: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getOrderBook(symbol: String, limit: Int? = nil, completion: @escaping ((_ data: BinanceRawOrderBook?,_ error: Error?) -> Void)) {
        getOrderBookWithRequestBuilder(symbol: symbol, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get order book
     - GET /v2.0/tradingplatform/binance/market/{symbol}/depth
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "symbol" : "symbol",
  "lastUpdateId" : 0,
  "asks" : [ null, null ],
  "bids" : [ {
    "quantity" : 5.962133916683182,
    "price" : 1.4658129805029452
  }, {
    "quantity" : 5.962133916683182,
    "price" : 1.4658129805029452
  } ],
  "firstUpdateId" : 6
}}]
     - parameter symbol: (path)       - parameter limit: (query)  (optional)

     - returns: RequestBuilder<BinanceRawOrderBook> 
     */
    open class func getOrderBookWithRequestBuilder(symbol: String, limit: Int? = nil) -> RequestBuilder<BinanceRawOrderBook> {
        var path = "/v2.0/tradingplatform/binance/market/{symbol}/depth"
        let symbolPreEscape = "\(symbol)"
        let symbolPostEscape = symbolPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{symbol}", with: symbolPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<BinanceRawOrderBook>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Account history
     - parameter accountId: (query)  (optional)     - parameter mode: (query)  (optional)     - parameter skip: (query)  (optional)     - parameter take: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTradesHistory(accountId: UUID? = nil, mode: TradingPlatformBinanceOrdersMode? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping ((_ data: BinanceRawOrderItemsViewModel?,_ error: Error?) -> Void)) {
        getTradesHistoryWithRequestBuilder(accountId: accountId, mode: mode, skip: skip, take: take).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Account history
     - GET /v2.0/tradingplatform/binance/spot/trades
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "total" : 1,
  "items" : [ {
    "symbol" : "symbol",
    "orderId" : 5,
    "executionType" : "New",
    "type" : "Limit",
    "originalClientOrderId" : "originalClientOrderId",
    "rejectReason" : "None",
    "buyerIsMaker" : true,
    "price" : 6.027456183070403,
    "commission" : 3.616076749251911,
    "lastQuantityFilled" : 2.3021358869347655,
    "timeInForce" : "GoodTillCancel",
    "icebergQuantity" : 5.962133916683182,
    "quoteQuantity" : 7.386281948385884,
    "lastPriceFilled" : 9.301444243932576,
    "quoteQuantityFilled" : 4.145608029883936,
    "side" : "Buy",
    "quantity" : 0.8008281904610115,
    "orderListId" : 1,
    "lastQuoteQuantity" : 1.2315135367772556,
    "clientOrderId" : "clientOrderId",
    "updateTime" : "2000-01-23T04:56:07.000+00:00",
    "commissionAsset" : "commissionAsset",
    "quantityFilled" : 7.061401241503109,
    "accountId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "stopPrice" : 1.4658129805029452,
    "createTime" : "2000-01-23T04:56:07.000+00:00",
    "tradeId" : 2,
    "isWorking" : true,
    "status" : "New"
  }, {
    "symbol" : "symbol",
    "orderId" : 5,
    "executionType" : "New",
    "type" : "Limit",
    "originalClientOrderId" : "originalClientOrderId",
    "rejectReason" : "None",
    "buyerIsMaker" : true,
    "price" : 6.027456183070403,
    "commission" : 3.616076749251911,
    "lastQuantityFilled" : 2.3021358869347655,
    "timeInForce" : "GoodTillCancel",
    "icebergQuantity" : 5.962133916683182,
    "quoteQuantity" : 7.386281948385884,
    "lastPriceFilled" : 9.301444243932576,
    "quoteQuantityFilled" : 4.145608029883936,
    "side" : "Buy",
    "quantity" : 0.8008281904610115,
    "orderListId" : 1,
    "lastQuoteQuantity" : 1.2315135367772556,
    "clientOrderId" : "clientOrderId",
    "updateTime" : "2000-01-23T04:56:07.000+00:00",
    "commissionAsset" : "commissionAsset",
    "quantityFilled" : 7.061401241503109,
    "accountId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "stopPrice" : 1.4658129805029452,
    "createTime" : "2000-01-23T04:56:07.000+00:00",
    "tradeId" : 2,
    "isWorking" : true,
    "status" : "New"
  } ]
}}]
     - parameter accountId: (query)  (optional)     - parameter mode: (query)  (optional)     - parameter skip: (query)  (optional)     - parameter take: (query)  (optional)

     - returns: RequestBuilder<BinanceRawOrderItemsViewModel> 
     */
    open class func getTradesHistoryWithRequestBuilder(accountId: UUID? = nil, mode: TradingPlatformBinanceOrdersMode? = nil, skip: Int? = nil, take: Int? = nil) -> RequestBuilder<BinanceRawOrderItemsViewModel> {
        let path = "/v2.0/tradingplatform/binance/spot/trades"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "AccountId": accountId, 
                        "Mode": mode, 
                        "Skip": skip?.encodeToJSON(), 
                        "Take": take?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<BinanceRawOrderItemsViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Ping account stream
     - parameter accountId: (query)  (optional)     - parameter listenKey: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func keepAliveAccountStream(accountId: UUID? = nil, listenKey: String? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        keepAliveAccountStreamWithRequestBuilder(accountId: accountId, listenKey: listenKey).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Ping account stream
     - POST /v2.0/tradingplatform/binance/spot/stream/ping
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter accountId: (query)  (optional)     - parameter listenKey: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func keepAliveAccountStreamWithRequestBuilder(accountId: UUID? = nil, listenKey: String? = nil) -> RequestBuilder<Void> {
        let path = "/v2.0/tradingplatform/binance/spot/stream/ping"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "accountId": accountId, 
                        "listenKey": listenKey
        ])

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Place order
     - parameter body: (body)  (optional)     - parameter accountId: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func placeOrder(body: BinanceRawPlaceOrder? = nil, accountId: UUID? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        placeOrderWithRequestBuilder(body: body, accountId: accountId).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Place order
     - POST /v2.0/tradingplatform/binance/spot/orders/place
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter body: (body)  (optional)     - parameter accountId: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func placeOrderWithRequestBuilder(body: BinanceRawPlaceOrder? = nil, accountId: UUID? = nil) -> RequestBuilder<Void> {
        let path = "/v2.0/tradingplatform/binance/spot/orders/place"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "accountId": accountId
        ])

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Remove account favorite symbol
     - parameter _id: (path)       - parameter symbol: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func removeFavoriteSymbol(_id: UUID, symbol: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        removeFavoriteSymbolWithRequestBuilder(_id: _id, symbol: symbol).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Remove account favorite symbol
     - POST /v2.0/tradingplatform/accounts/{id}/symbols/favorite/{symbol}/remove
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter _id: (path)       - parameter symbol: (path)  

     - returns: RequestBuilder<Void> 
     */
    open class func removeFavoriteSymbolWithRequestBuilder(_id: UUID, symbol: String) -> RequestBuilder<Void> {
        var path = "/v2.0/tradingplatform/accounts/{id}/symbols/favorite/{symbol}/remove"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let symbolPreEscape = "\(symbol)"
        let symbolPostEscape = symbolPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{symbol}", with: symbolPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Start account stream
     - parameter accountId: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func startAccountStream(accountId: UUID? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        startAccountStreamWithRequestBuilder(accountId: accountId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Start account stream
     - POST /v2.0/tradingplatform/binance/spot/stream/start
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example=""}]
     - parameter accountId: (query)  (optional)

     - returns: RequestBuilder<String> 
     */
    open class func startAccountStreamWithRequestBuilder(accountId: UUID? = nil) -> RequestBuilder<String> {
        let path = "/v2.0/tradingplatform/binance/spot/stream/start"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "accountId": accountId
        ])

        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Stop account stream
     - parameter accountId: (query)  (optional)     - parameter listenKey: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func stopAccountStream(accountId: UUID? = nil, listenKey: String? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        stopAccountStreamWithRequestBuilder(accountId: accountId, listenKey: listenKey).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Stop account stream
     - POST /v2.0/tradingplatform/binance/spot/stream/stop
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter accountId: (query)  (optional)     - parameter listenKey: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func stopAccountStreamWithRequestBuilder(accountId: UUID? = nil, listenKey: String? = nil) -> RequestBuilder<Void> {
        let path = "/v2.0/tradingplatform/binance/spot/stream/stop"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "accountId": accountId, 
                        "listenKey": listenKey
        ])

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
