//
// FundsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class FundsAPI {
    /**
     Add to favorites
     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addToFavorites(_id: UUID, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        addToFavoritesWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Add to favorites
     - POST /v2.0/funds/{id}/favorite/add
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter _id: (path)  

     - returns: RequestBuilder<Void> 
     */
    open class func addToFavoritesWithRequestBuilder(_id: UUID) -> RequestBuilder<Void> {
        var path = "/v2.0/funds/{id}/favorite/add"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Fund absolute profit chart
     - parameter _id: (path)       - parameter dateFrom: (query)  (optional)     - parameter dateTo: (query)  (optional)     - parameter maxPointCount: (query)  (optional)     - parameter currency: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFundAbsoluteProfitChart(_id: UUID, dateFrom: Date? = nil, dateTo: Date? = nil, maxPointCount: Int? = nil, currency: Currency? = nil, completion: @escaping ((_ data: AbsoluteProfitChart?,_ error: Error?) -> Void)) {
        getFundAbsoluteProfitChartWithRequestBuilder(_id: _id, dateFrom: dateFrom, dateTo: dateTo, maxPointCount: maxPointCount, currency: currency).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Fund absolute profit chart
     - GET /v2.0/funds/{id}/charts/profit/absolute
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "profit" : 0.8008281904610115,
  "chart" : [ {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "value" : 0.8008281904610115
  }, {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "value" : 0.8008281904610115
  } ]
}}]
     - parameter _id: (path)       - parameter dateFrom: (query)  (optional)     - parameter dateTo: (query)  (optional)     - parameter maxPointCount: (query)  (optional)     - parameter currency: (query)  (optional)

     - returns: RequestBuilder<AbsoluteProfitChart> 
     */
    open class func getFundAbsoluteProfitChartWithRequestBuilder(_id: UUID, dateFrom: Date? = nil, dateTo: Date? = nil, maxPointCount: Int? = nil, currency: Currency? = nil) -> RequestBuilder<AbsoluteProfitChart> {
        var path = "/v2.0/funds/{id}/charts/profit/absolute"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "DateFrom": dateFrom?.encodeToJSON(), 
                        "DateTo": dateTo?.encodeToJSON(), 
                        "MaxPointCount": maxPointCount?.encodeToJSON(), 
                        "Currency": currency
        ])

        let requestBuilder: RequestBuilder<AbsoluteProfitChart>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Fund balance chart
     - parameter _id: (path)       - parameter dateFrom: (query)  (optional)     - parameter dateTo: (query)  (optional)     - parameter maxPointCount: (query)  (optional)     - parameter currency: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFundBalanceChart(_id: UUID, dateFrom: Date? = nil, dateTo: Date? = nil, maxPointCount: Int? = nil, currency: Currency? = nil, completion: @escaping ((_ data: FundBalanceChart?,_ error: Error?) -> Void)) {
        getFundBalanceChartWithRequestBuilder(_id: _id, dateFrom: dateFrom, dateTo: dateTo, maxPointCount: maxPointCount, currency: currency).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Fund balance chart
     - GET /v2.0/funds/{id}/charts/balance
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "balance" : 0.8008281904610115,
  "color" : "color",
  "chart" : [ {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "investorsFunds" : 1.4658129805029452,
    "managerFunds" : 6.027456183070403
  }, {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "investorsFunds" : 1.4658129805029452,
    "managerFunds" : 6.027456183070403
  } ]
}}]
     - parameter _id: (path)       - parameter dateFrom: (query)  (optional)     - parameter dateTo: (query)  (optional)     - parameter maxPointCount: (query)  (optional)     - parameter currency: (query)  (optional)

     - returns: RequestBuilder<FundBalanceChart> 
     */
    open class func getFundBalanceChartWithRequestBuilder(_id: UUID, dateFrom: Date? = nil, dateTo: Date? = nil, maxPointCount: Int? = nil, currency: Currency? = nil) -> RequestBuilder<FundBalanceChart> {
        var path = "/v2.0/funds/{id}/charts/balance"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "DateFrom": dateFrom?.encodeToJSON(), 
                        "DateTo": dateTo?.encodeToJSON(), 
                        "MaxPointCount": maxPointCount?.encodeToJSON(), 
                        "Currency": currency
        ])

        let requestBuilder: RequestBuilder<FundBalanceChart>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Fund details
     - parameter _id: (path)       - parameter currency: (query)  (optional)     - parameter logoQuality: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFundDetails(_id: String, currency: Currency? = nil, logoQuality: ImageQuality? = nil, completion: @escaping ((_ data: FundDetailsFull?,_ error: Error?) -> Void)) {
        getFundDetailsWithRequestBuilder(_id: _id, currency: currency, logoQuality: logoQuality).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Fund details
     - GET /v2.0/funds/{id}
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "owner" : {
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
    "registrationDate" : "2000-01-23T04:56:07.000+00:00",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "logoUrl" : "logoUrl",
    "url" : "url",
    "username" : "username"
  },
  "entryFeeCurrent" : 6.027456183070403,
  "exitFeeSelected" : 1.4658129805029452,
  "assetsStructure" : [ {
    "symbol" : "symbol",
    "current" : 2.3021358869347655,
    "currentAmount" : 7.061401241503109,
    "asset" : "asset",
    "logoUrl" : "logoUrl",
    "url" : "url",
    "target" : 5.637376656633329
  }, {
    "symbol" : "symbol",
    "current" : 2.3021358869347655,
    "currentAmount" : 7.061401241503109,
    "asset" : "asset",
    "logoUrl" : "logoUrl",
    "url" : "url",
    "target" : 5.637376656633329
  } ],
  "tradingSchedule" : {
    "hourEnd" : 2,
    "dayStart" : "Sunday",
    "minuteEnd" : 7,
    "hourStart" : 5,
    "hasTradingSchedule" : true,
    "minuteStart" : 5
  },
  "publicInfo" : {
    "typeExt" : "None",
    "color" : "color",
    "description" : "description",
    "logo" : "logo",
    "isOwnAsset" : true,
    "title" : "title",
    "creationDate" : "2000-01-23T04:56:07.000+00:00",
    "logoUrl" : "logoUrl",
    "url" : "url",
    "status" : "status"
  },
  "exitFeeCurrent" : 5.962133916683182,
  "entryFeeSelected" : 0.8008281904610115,
  "personalDetails" : {
    "exitFeePersonal" : 1.2315135367772556,
    "pendingInOutCurrency" : "Undefined",
    "canWithdraw" : true,
    "canInvest" : true,
    "nextReallocationPercents" : "2000-01-23T04:56:07.000+00:00",
    "ownerActions" : {
      "canClose" : true,
      "canReallocate" : true
    },
    "pendingOutput" : 2.027123023002322,
    "hasNotifications" : true,
    "pendingInput" : 3.616076749251911,
    "availableReallocationPercents" : 7,
    "value" : 9.301444243932576,
    "withdrawPercent" : 4.145608029883936,
    "isFavorite" : true,
    "isInvested" : true,
    "status" : "Pending"
  },
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
}}]
     - parameter _id: (path)       - parameter currency: (query)  (optional)     - parameter logoQuality: (query)  (optional)

     - returns: RequestBuilder<FundDetailsFull> 
     */
    open class func getFundDetailsWithRequestBuilder(_id: String, currency: Currency? = nil, logoQuality: ImageQuality? = nil) -> RequestBuilder<FundDetailsFull> {
        var path = "/v2.0/funds/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "currency": currency, 
                        "logoQuality": logoQuality
        ])

        let requestBuilder: RequestBuilder<FundDetailsFull>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Fund profit percent charts
     - parameter _id: (path)       - parameter dateFrom: (query)  (optional)     - parameter dateTo: (query)  (optional)     - parameter maxPointCount: (query)  (optional)     - parameter currency: (query)  (optional)     - parameter currencies: (query)  (optional)     - parameter chartAssetsCount: (query)  (optional, default to 3)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFundProfitPercentCharts(_id: UUID, dateFrom: Date? = nil, dateTo: Date? = nil, maxPointCount: Int? = nil, currency: Currency? = nil, currencies: [Currency]? = nil, chartAssetsCount: Int? = nil, completion: @escaping ((_ data: FundProfitPercentCharts?,_ error: Error?) -> Void)) {
        getFundProfitPercentChartsWithRequestBuilder(_id: _id, dateFrom: dateFrom, dateTo: dateTo, maxPointCount: maxPointCount, currency: currency, currencies: currencies, chartAssetsCount: chartAssetsCount).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Fund profit percent charts
     - GET /v2.0/funds/{id}/charts/profit/percent
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "statistic" : {
    "calmarRatio" : 2.3021358869347655,
    "balance" : 6.027456183070403,
    "profitPercent" : 1.4658129805029452,
    "maxDrawdown" : 7.061401241503109,
    "sharpeRatio" : 5.962133916683182,
    "creationDate" : "2000-01-23T04:56:07.000+00:00",
    "investors" : 0,
    "sortinoRatio" : 5.637376656633329
  },
  "charts" : [ {
    "color" : "color",
    "currency" : "Undefined",
    "chart" : [ {
      "date" : "2000-01-23T04:56:07.000+00:00",
      "value" : 0.8008281904610115
    }, {
      "date" : "2000-01-23T04:56:07.000+00:00",
      "value" : 0.8008281904610115
    } ]
  }, {
    "color" : "color",
    "currency" : "Undefined",
    "chart" : [ {
      "date" : "2000-01-23T04:56:07.000+00:00",
      "value" : 0.8008281904610115
    }, {
      "date" : "2000-01-23T04:56:07.000+00:00",
      "value" : 0.8008281904610115
    } ]
  } ],
  "assets" : [ {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "assets" : [ {
      "color" : "color",
      "name" : "name",
      "asset" : "asset",
      "percent" : 3.616076749251911,
      "logoUrl" : "logoUrl",
      "url" : "url"
    }, {
      "color" : "color",
      "name" : "name",
      "asset" : "asset",
      "percent" : 3.616076749251911,
      "logoUrl" : "logoUrl",
      "url" : "url"
    } ],
    "value" : 9.301444243932576
  }, {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "assets" : [ {
      "color" : "color",
      "name" : "name",
      "asset" : "asset",
      "percent" : 3.616076749251911,
      "logoUrl" : "logoUrl",
      "url" : "url"
    }, {
      "color" : "color",
      "name" : "name",
      "asset" : "asset",
      "percent" : 3.616076749251911,
      "logoUrl" : "logoUrl",
      "url" : "url"
    } ],
    "value" : 9.301444243932576
  } ]
}}]
     - parameter _id: (path)       - parameter dateFrom: (query)  (optional)     - parameter dateTo: (query)  (optional)     - parameter maxPointCount: (query)  (optional)     - parameter currency: (query)  (optional)     - parameter currencies: (query)  (optional)     - parameter chartAssetsCount: (query)  (optional, default to 3)

     - returns: RequestBuilder<FundProfitPercentCharts> 
     */
    open class func getFundProfitPercentChartsWithRequestBuilder(_id: UUID, dateFrom: Date? = nil, dateTo: Date? = nil, maxPointCount: Int? = nil, currency: Currency? = nil, currencies: [Currency]? = nil, chartAssetsCount: Int? = nil) -> RequestBuilder<FundProfitPercentCharts> {
        var path = "/v2.0/funds/{id}/charts/profit/percent"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "DateFrom": dateFrom?.encodeToJSON(), 
                        "DateTo": dateTo?.encodeToJSON(), 
                        "MaxPointCount": maxPointCount?.encodeToJSON(), 
                        "Currency": currency, 
                        "currencies": currencies, 
                        "chartAssetsCount": chartAssetsCount?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<FundProfitPercentCharts>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Funds list
     - parameter sorting: (query)  (optional)     - parameter showIn: (query)  (optional)     - parameter assets: (query)  (optional)     - parameter investorId: (query)  (optional)     - parameter includeWithInvestments: (query)  (optional)     - parameter dateFrom: (query)  (optional)     - parameter dateTo: (query)  (optional)     - parameter chartPointsCount: (query)  (optional)     - parameter facetId: (query)  (optional)     - parameter mask: (query)  (optional)     - parameter ownerId: (query)  (optional)     - parameter showFavorites: (query)  (optional)     - parameter skipStatistic: (query)  (optional)     - parameter skip: (query)  (optional)     - parameter take: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFunds(sorting: FundsFilterSorting? = nil, showIn: Currency? = nil, assets: [String]? = nil, investorId: UUID? = nil, includeWithInvestments: Bool? = nil, dateFrom: Date? = nil, dateTo: Date? = nil, chartPointsCount: Int? = nil, facetId: String? = nil, mask: String? = nil, ownerId: UUID? = nil, showFavorites: Bool? = nil, skipStatistic: Bool? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping ((_ data: FundDetailsListItemItemsViewModel?,_ error: Error?) -> Void)) {
        getFundsWithRequestBuilder(sorting: sorting, showIn: showIn, assets: assets, investorId: investorId, includeWithInvestments: includeWithInvestments, dateFrom: dateFrom, dateTo: dateTo, chartPointsCount: chartPointsCount, facetId: facetId, mask: mask, ownerId: ownerId, showFavorites: showFavorites, skipStatistic: skipStatistic, skip: skip, take: take).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Funds list
     - GET /v2.0/funds
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
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
}}]
     - parameter sorting: (query)  (optional)     - parameter showIn: (query)  (optional)     - parameter assets: (query)  (optional)     - parameter investorId: (query)  (optional)     - parameter includeWithInvestments: (query)  (optional)     - parameter dateFrom: (query)  (optional)     - parameter dateTo: (query)  (optional)     - parameter chartPointsCount: (query)  (optional)     - parameter facetId: (query)  (optional)     - parameter mask: (query)  (optional)     - parameter ownerId: (query)  (optional)     - parameter showFavorites: (query)  (optional)     - parameter skipStatistic: (query)  (optional)     - parameter skip: (query)  (optional)     - parameter take: (query)  (optional)

     - returns: RequestBuilder<FundDetailsListItemItemsViewModel> 
     */
    open class func getFundsWithRequestBuilder(sorting: FundsFilterSorting? = nil, showIn: Currency? = nil, assets: [String]? = nil, investorId: UUID? = nil, includeWithInvestments: Bool? = nil, dateFrom: Date? = nil, dateTo: Date? = nil, chartPointsCount: Int? = nil, facetId: String? = nil, mask: String? = nil, ownerId: UUID? = nil, showFavorites: Bool? = nil, skipStatistic: Bool? = nil, skip: Int? = nil, take: Int? = nil) -> RequestBuilder<FundDetailsListItemItemsViewModel> {
        let path = "/v2.0/funds"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "Sorting": sorting, 
                        "ShowIn": showIn, 
                        "Assets": assets, 
                        "InvestorId": investorId, 
                        "IncludeWithInvestments": includeWithInvestments, 
                        "DateFrom": dateFrom?.encodeToJSON(), 
                        "DateTo": dateTo?.encodeToJSON(), 
                        "ChartPointsCount": chartPointsCount?.encodeToJSON(), 
                        "FacetId": facetId, 
                        "Mask": mask, 
                        "OwnerId": ownerId, 
                        "ShowFavorites": showFavorites, 
                        "SkipStatistic": skipStatistic, 
                        "Skip": skip?.encodeToJSON(), 
                        "Take": take?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<FundDetailsListItemItemsViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get funds trading events
     - parameter _id: (path)       - parameter dateFrom: (query)  (optional)     - parameter dateTo: (query)  (optional)     - parameter eventsType: (query)  (optional)     - parameter skip: (query)  (optional)     - parameter take: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFundsHistoryEvents(_id: UUID, dateFrom: Date? = nil, dateTo: Date? = nil, eventsType: FundHistoryEventFilterType? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping ((_ data: FundHistoryEventViewModelItemsViewModel?,_ error: Error?) -> Void)) {
        getFundsHistoryEventsWithRequestBuilder(_id: _id, dateFrom: dateFrom, dateTo: dateTo, eventsType: eventsType, skip: skip, take: take).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get funds trading events
     - GET /v2.0/funds/{id}/history
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "total" : 5,
  "items" : [ {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "description" : "description",
    "trades" : [ {
      "date" : "2000-01-23T04:56:07.000+00:00",
      "commissionCurrency" : "commissionCurrency",
      "soldAsset" : {
        "color" : "color",
        "provider" : "Undefined",
        "name" : "name",
        "description" : "description",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "asset" : "asset",
        "logoUrl" : "logoUrl",
        "url" : "url"
      },
      "boughtAmount" : 6.027456183070403,
      "commission" : 1.4658129805029452,
      "soldAmount" : 0.8008281904610115
    }, {
      "date" : "2000-01-23T04:56:07.000+00:00",
      "commissionCurrency" : "commissionCurrency",
      "soldAsset" : {
        "color" : "color",
        "provider" : "Undefined",
        "name" : "name",
        "description" : "description",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "asset" : "asset",
        "logoUrl" : "logoUrl",
        "url" : "url"
      },
      "boughtAmount" : 6.027456183070403,
      "commission" : 1.4658129805029452,
      "soldAmount" : 0.8008281904610115
    } ],
    "newAssets" : [ {
      "color" : "color",
      "name" : "name",
      "asset" : "asset",
      "percent" : 3.616076749251911,
      "logoUrl" : "logoUrl",
      "url" : "url"
    }, {
      "color" : "color",
      "name" : "name",
      "asset" : "asset",
      "percent" : 3.616076749251911,
      "logoUrl" : "logoUrl",
      "url" : "url"
    } ],
    "type" : "Creation",
    "logoUrl" : "logoUrl"
  }, {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "description" : "description",
    "trades" : [ {
      "date" : "2000-01-23T04:56:07.000+00:00",
      "commissionCurrency" : "commissionCurrency",
      "soldAsset" : {
        "color" : "color",
        "provider" : "Undefined",
        "name" : "name",
        "description" : "description",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "asset" : "asset",
        "logoUrl" : "logoUrl",
        "url" : "url"
      },
      "boughtAmount" : 6.027456183070403,
      "commission" : 1.4658129805029452,
      "soldAmount" : 0.8008281904610115
    }, {
      "date" : "2000-01-23T04:56:07.000+00:00",
      "commissionCurrency" : "commissionCurrency",
      "soldAsset" : {
        "color" : "color",
        "provider" : "Undefined",
        "name" : "name",
        "description" : "description",
        "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
        "asset" : "asset",
        "logoUrl" : "logoUrl",
        "url" : "url"
      },
      "boughtAmount" : 6.027456183070403,
      "commission" : 1.4658129805029452,
      "soldAmount" : 0.8008281904610115
    } ],
    "newAssets" : [ {
      "color" : "color",
      "name" : "name",
      "asset" : "asset",
      "percent" : 3.616076749251911,
      "logoUrl" : "logoUrl",
      "url" : "url"
    }, {
      "color" : "color",
      "name" : "name",
      "asset" : "asset",
      "percent" : 3.616076749251911,
      "logoUrl" : "logoUrl",
      "url" : "url"
    } ],
    "type" : "Creation",
    "logoUrl" : "logoUrl"
  } ]
}}]
     - parameter _id: (path)       - parameter dateFrom: (query)  (optional)     - parameter dateTo: (query)  (optional)     - parameter eventsType: (query)  (optional)     - parameter skip: (query)  (optional)     - parameter take: (query)  (optional)

     - returns: RequestBuilder<FundHistoryEventViewModelItemsViewModel> 
     */
    open class func getFundsHistoryEventsWithRequestBuilder(_id: UUID, dateFrom: Date? = nil, dateTo: Date? = nil, eventsType: FundHistoryEventFilterType? = nil, skip: Int? = nil, take: Int? = nil) -> RequestBuilder<FundHistoryEventViewModelItemsViewModel> {
        var path = "/v2.0/funds/{id}/history"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "DateFrom": dateFrom?.encodeToJSON(), 
                        "DateTo": dateTo?.encodeToJSON(), 
                        "EventsType": eventsType, 
                        "Skip": skip?.encodeToJSON(), 
                        "Take": take?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<FundHistoryEventViewModelItemsViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get last weekly funds challenge winner
     - parameter chartPointsCount: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLastChallengeWinner(chartPointsCount: Int? = nil, completion: @escaping ((_ data: FundDetailsListItem?,_ error: Error?) -> Void)) {
        getLastChallengeWinnerWithRequestBuilder(chartPointsCount: chartPointsCount).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get last weekly funds challenge winner
     - GET /v2.0/funds/challenge/winner
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
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
}}]
     - parameter chartPointsCount: (query)  (optional)

     - returns: RequestBuilder<FundDetailsListItem> 
     */
    open class func getLastChallengeWinnerWithRequestBuilder(chartPointsCount: Int? = nil) -> RequestBuilder<FundDetailsListItem> {
        let path = "/v2.0/funds/challenge/winner"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "chartPointsCount": chartPointsCount?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<FundDetailsListItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get history of asset part update requests
     - parameter _id: (path)       - parameter dateFrom: (query)  (optional)     - parameter dateTo: (query)  (optional)     - parameter skip: (query)  (optional)     - parameter take: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getReallocatingHistory(_id: UUID, dateFrom: Date? = nil, dateTo: Date? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping ((_ data: ReallocationModelItemsViewModel?,_ error: Error?) -> Void)) {
        getReallocatingHistoryWithRequestBuilder(_id: _id, dateFrom: dateFrom, dateTo: dateTo, skip: skip, take: take).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get history of asset part update requests
     - GET /v2.0/funds/{id}/reallocations
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "total" : 0,
  "items" : [ {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "parts" : [ {
      "color" : "color",
      "name" : "name",
      "asset" : "asset",
      "percent" : 3.616076749251911,
      "logoUrl" : "logoUrl",
      "url" : "url"
    }, {
      "color" : "color",
      "name" : "name",
      "asset" : "asset",
      "percent" : 3.616076749251911,
      "logoUrl" : "logoUrl",
      "url" : "url"
    } ]
  }, {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "parts" : [ {
      "color" : "color",
      "name" : "name",
      "asset" : "asset",
      "percent" : 3.616076749251911,
      "logoUrl" : "logoUrl",
      "url" : "url"
    }, {
      "color" : "color",
      "name" : "name",
      "asset" : "asset",
      "percent" : 3.616076749251911,
      "logoUrl" : "logoUrl",
      "url" : "url"
    } ]
  } ]
}}]
     - parameter _id: (path)       - parameter dateFrom: (query)  (optional)     - parameter dateTo: (query)  (optional)     - parameter skip: (query)  (optional)     - parameter take: (query)  (optional)

     - returns: RequestBuilder<ReallocationModelItemsViewModel> 
     */
    open class func getReallocatingHistoryWithRequestBuilder(_id: UUID, dateFrom: Date? = nil, dateTo: Date? = nil, skip: Int? = nil, take: Int? = nil) -> RequestBuilder<ReallocationModelItemsViewModel> {
        var path = "/v2.0/funds/{id}/reallocations"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "DateFrom": dateFrom?.encodeToJSON(), 
                        "DateTo": dateTo?.encodeToJSON(), 
                        "Skip": skip?.encodeToJSON(), 
                        "Take": take?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<ReallocationModelItemsViewModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove from favorites
     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func removeFromFavorites(_id: UUID, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        removeFromFavoritesWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Remove from favorites
     - POST /v2.0/funds/{id}/favorite/remove
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - parameter _id: (path)  

     - returns: RequestBuilder<Void> 
     */
    open class func removeFromFavoritesWithRequestBuilder(_id: UUID) -> RequestBuilder<Void> {
        var path = "/v2.0/funds/{id}/favorite/remove"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
