//
// BrokersAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class BrokersAPI {
    /**
     Get brokers for creating trading accounts

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBrokers(completion: @escaping ((_ data: BrokersInfo?,_ error: Error?) -> Void)) {
        getBrokersWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get brokers for creating trading accounts
     - GET /v2.0/brokers
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "brokers" : [ {
    "leverageMin" : 6,
    "leverageMax" : 1,
    "assets" : "assets",
    "terms" : "terms",
    "fee" : 0.8008281904610115,
    "name" : "name",
    "description" : "description",
    "accountTypes" : [ {
      "name" : "name",
      "description" : "description",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "typeTitle" : "typeTitle",
      "isSignalsAvailable" : true,
      "type" : "Undefined",
      "leverages" : [ 5, 5 ],
      "minimumDepositsAmount" : {
        "key" : 5.637376656633329
      },
      "isCountryNotUSRequired" : true,
      "isDepositRequired" : true,
      "isKycRequired" : true,
      "currencies" : [ "currencies", "currencies" ]
    }, {
      "name" : "name",
      "description" : "description",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "typeTitle" : "typeTitle",
      "isSignalsAvailable" : true,
      "type" : "Undefined",
      "leverages" : [ 5, 5 ],
      "minimumDepositsAmount" : {
        "key" : 5.637376656633329
      },
      "isCountryNotUSRequired" : true,
      "isDepositRequired" : true,
      "isKycRequired" : true,
      "currencies" : [ "currencies", "currencies" ]
    } ],
    "logoUrl" : "logoUrl",
    "isKycRequired" : true,
    "tags" : [ {
      "color" : "color",
      "name" : "name"
    }, {
      "color" : "color",
      "name" : "name"
    } ]
  }, {
    "leverageMin" : 6,
    "leverageMax" : 1,
    "assets" : "assets",
    "terms" : "terms",
    "fee" : 0.8008281904610115,
    "name" : "name",
    "description" : "description",
    "accountTypes" : [ {
      "name" : "name",
      "description" : "description",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "typeTitle" : "typeTitle",
      "isSignalsAvailable" : true,
      "type" : "Undefined",
      "leverages" : [ 5, 5 ],
      "minimumDepositsAmount" : {
        "key" : 5.637376656633329
      },
      "isCountryNotUSRequired" : true,
      "isDepositRequired" : true,
      "isKycRequired" : true,
      "currencies" : [ "currencies", "currencies" ]
    }, {
      "name" : "name",
      "description" : "description",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "typeTitle" : "typeTitle",
      "isSignalsAvailable" : true,
      "type" : "Undefined",
      "leverages" : [ 5, 5 ],
      "minimumDepositsAmount" : {
        "key" : 5.637376656633329
      },
      "isCountryNotUSRequired" : true,
      "isDepositRequired" : true,
      "isKycRequired" : true,
      "currencies" : [ "currencies", "currencies" ]
    } ],
    "logoUrl" : "logoUrl",
    "isKycRequired" : true,
    "tags" : [ {
      "color" : "color",
      "name" : "name"
    }, {
      "color" : "color",
      "name" : "name"
    } ]
  } ]
}}]

     - returns: RequestBuilder<BrokersInfo> 
     */
    open class func getBrokersWithRequestBuilder() -> RequestBuilder<BrokersInfo> {
        let path = "/v2.0/brokers"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<BrokersInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get brokers for creating demo trading accounts

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBrokersDemo(completion: @escaping ((_ data: BrokersInfo?,_ error: Error?) -> Void)) {
        getBrokersDemoWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get brokers for creating demo trading accounts
     - GET /v2.0/brokers/demo
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "brokers" : [ {
    "leverageMin" : 6,
    "leverageMax" : 1,
    "assets" : "assets",
    "terms" : "terms",
    "fee" : 0.8008281904610115,
    "name" : "name",
    "description" : "description",
    "accountTypes" : [ {
      "name" : "name",
      "description" : "description",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "typeTitle" : "typeTitle",
      "isSignalsAvailable" : true,
      "type" : "Undefined",
      "leverages" : [ 5, 5 ],
      "minimumDepositsAmount" : {
        "key" : 5.637376656633329
      },
      "isCountryNotUSRequired" : true,
      "isDepositRequired" : true,
      "isKycRequired" : true,
      "currencies" : [ "currencies", "currencies" ]
    }, {
      "name" : "name",
      "description" : "description",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "typeTitle" : "typeTitle",
      "isSignalsAvailable" : true,
      "type" : "Undefined",
      "leverages" : [ 5, 5 ],
      "minimumDepositsAmount" : {
        "key" : 5.637376656633329
      },
      "isCountryNotUSRequired" : true,
      "isDepositRequired" : true,
      "isKycRequired" : true,
      "currencies" : [ "currencies", "currencies" ]
    } ],
    "logoUrl" : "logoUrl",
    "isKycRequired" : true,
    "tags" : [ {
      "color" : "color",
      "name" : "name"
    }, {
      "color" : "color",
      "name" : "name"
    } ]
  }, {
    "leverageMin" : 6,
    "leverageMax" : 1,
    "assets" : "assets",
    "terms" : "terms",
    "fee" : 0.8008281904610115,
    "name" : "name",
    "description" : "description",
    "accountTypes" : [ {
      "name" : "name",
      "description" : "description",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "typeTitle" : "typeTitle",
      "isSignalsAvailable" : true,
      "type" : "Undefined",
      "leverages" : [ 5, 5 ],
      "minimumDepositsAmount" : {
        "key" : 5.637376656633329
      },
      "isCountryNotUSRequired" : true,
      "isDepositRequired" : true,
      "isKycRequired" : true,
      "currencies" : [ "currencies", "currencies" ]
    }, {
      "name" : "name",
      "description" : "description",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "typeTitle" : "typeTitle",
      "isSignalsAvailable" : true,
      "type" : "Undefined",
      "leverages" : [ 5, 5 ],
      "minimumDepositsAmount" : {
        "key" : 5.637376656633329
      },
      "isCountryNotUSRequired" : true,
      "isDepositRequired" : true,
      "isKycRequired" : true,
      "currencies" : [ "currencies", "currencies" ]
    } ],
    "logoUrl" : "logoUrl",
    "isKycRequired" : true,
    "tags" : [ {
      "color" : "color",
      "name" : "name"
    }, {
      "color" : "color",
      "name" : "name"
    } ]
  } ]
}}]

     - returns: RequestBuilder<BrokersInfo> 
     */
    open class func getBrokersDemoWithRequestBuilder() -> RequestBuilder<BrokersInfo> {
        let path = "/v2.0/brokers/demo"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<BrokersInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get brokers for creating external trading accounts

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBrokersExternal(completion: @escaping ((_ data: BrokersInfo?,_ error: Error?) -> Void)) {
        getBrokersExternalWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get brokers for creating external trading accounts
     - GET /v2.0/brokers/external
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "brokers" : [ {
    "leverageMin" : 6,
    "leverageMax" : 1,
    "assets" : "assets",
    "terms" : "terms",
    "fee" : 0.8008281904610115,
    "name" : "name",
    "description" : "description",
    "accountTypes" : [ {
      "name" : "name",
      "description" : "description",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "typeTitle" : "typeTitle",
      "isSignalsAvailable" : true,
      "type" : "Undefined",
      "leverages" : [ 5, 5 ],
      "minimumDepositsAmount" : {
        "key" : 5.637376656633329
      },
      "isCountryNotUSRequired" : true,
      "isDepositRequired" : true,
      "isKycRequired" : true,
      "currencies" : [ "currencies", "currencies" ]
    }, {
      "name" : "name",
      "description" : "description",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "typeTitle" : "typeTitle",
      "isSignalsAvailable" : true,
      "type" : "Undefined",
      "leverages" : [ 5, 5 ],
      "minimumDepositsAmount" : {
        "key" : 5.637376656633329
      },
      "isCountryNotUSRequired" : true,
      "isDepositRequired" : true,
      "isKycRequired" : true,
      "currencies" : [ "currencies", "currencies" ]
    } ],
    "logoUrl" : "logoUrl",
    "isKycRequired" : true,
    "tags" : [ {
      "color" : "color",
      "name" : "name"
    }, {
      "color" : "color",
      "name" : "name"
    } ]
  }, {
    "leverageMin" : 6,
    "leverageMax" : 1,
    "assets" : "assets",
    "terms" : "terms",
    "fee" : 0.8008281904610115,
    "name" : "name",
    "description" : "description",
    "accountTypes" : [ {
      "name" : "name",
      "description" : "description",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "typeTitle" : "typeTitle",
      "isSignalsAvailable" : true,
      "type" : "Undefined",
      "leverages" : [ 5, 5 ],
      "minimumDepositsAmount" : {
        "key" : 5.637376656633329
      },
      "isCountryNotUSRequired" : true,
      "isDepositRequired" : true,
      "isKycRequired" : true,
      "currencies" : [ "currencies", "currencies" ]
    }, {
      "name" : "name",
      "description" : "description",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "typeTitle" : "typeTitle",
      "isSignalsAvailable" : true,
      "type" : "Undefined",
      "leverages" : [ 5, 5 ],
      "minimumDepositsAmount" : {
        "key" : 5.637376656633329
      },
      "isCountryNotUSRequired" : true,
      "isDepositRequired" : true,
      "isKycRequired" : true,
      "currencies" : [ "currencies", "currencies" ]
    } ],
    "logoUrl" : "logoUrl",
    "isKycRequired" : true,
    "tags" : [ {
      "color" : "color",
      "name" : "name"
    }, {
      "color" : "color",
      "name" : "name"
    } ]
  } ]
}}]

     - returns: RequestBuilder<BrokersInfo> 
     */
    open class func getBrokersExternalWithRequestBuilder() -> RequestBuilder<BrokersInfo> {
        let path = "/v2.0/brokers/external"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<BrokersInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get brokers for program
     - parameter programId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBrokersForProgram(programId: UUID, completion: @escaping ((_ data: BrokersProgramInfo?,_ error: Error?) -> Void)) {
        getBrokersForProgramWithRequestBuilder(programId: programId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get brokers for program
     - GET /v2.0/brokers/{programId}
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "brokers" : [ {
    "leverageMin" : 6,
    "leverageMax" : 1,
    "assets" : "assets",
    "terms" : "terms",
    "fee" : 0.8008281904610115,
    "name" : "name",
    "description" : "description",
    "accountTypes" : [ {
      "name" : "name",
      "description" : "description",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "typeTitle" : "typeTitle",
      "isSignalsAvailable" : true,
      "type" : "Undefined",
      "leverages" : [ 5, 5 ],
      "minimumDepositsAmount" : {
        "key" : 5.637376656633329
      },
      "isCountryNotUSRequired" : true,
      "isDepositRequired" : true,
      "isKycRequired" : true,
      "currencies" : [ "currencies", "currencies" ]
    }, {
      "name" : "name",
      "description" : "description",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "typeTitle" : "typeTitle",
      "isSignalsAvailable" : true,
      "type" : "Undefined",
      "leverages" : [ 5, 5 ],
      "minimumDepositsAmount" : {
        "key" : 5.637376656633329
      },
      "isCountryNotUSRequired" : true,
      "isDepositRequired" : true,
      "isKycRequired" : true,
      "currencies" : [ "currencies", "currencies" ]
    } ],
    "logoUrl" : "logoUrl",
    "isKycRequired" : true,
    "tags" : [ {
      "color" : "color",
      "name" : "name"
    }, {
      "color" : "color",
      "name" : "name"
    } ]
  }, {
    "leverageMin" : 6,
    "leverageMax" : 1,
    "assets" : "assets",
    "terms" : "terms",
    "fee" : 0.8008281904610115,
    "name" : "name",
    "description" : "description",
    "accountTypes" : [ {
      "name" : "name",
      "description" : "description",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "typeTitle" : "typeTitle",
      "isSignalsAvailable" : true,
      "type" : "Undefined",
      "leverages" : [ 5, 5 ],
      "minimumDepositsAmount" : {
        "key" : 5.637376656633329
      },
      "isCountryNotUSRequired" : true,
      "isDepositRequired" : true,
      "isKycRequired" : true,
      "currencies" : [ "currencies", "currencies" ]
    }, {
      "name" : "name",
      "description" : "description",
      "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
      "typeTitle" : "typeTitle",
      "isSignalsAvailable" : true,
      "type" : "Undefined",
      "leverages" : [ 5, 5 ],
      "minimumDepositsAmount" : {
        "key" : 5.637376656633329
      },
      "isCountryNotUSRequired" : true,
      "isDepositRequired" : true,
      "isKycRequired" : true,
      "currencies" : [ "currencies", "currencies" ]
    } ],
    "logoUrl" : "logoUrl",
    "isKycRequired" : true,
    "tags" : [ {
      "color" : "color",
      "name" : "name"
    }, {
      "color" : "color",
      "name" : "name"
    } ]
  } ],
  "currentAccountTypeId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
}}]
     - parameter programId: (path)  

     - returns: RequestBuilder<BrokersProgramInfo> 
     */
    open class func getBrokersForProgramWithRequestBuilder(programId: UUID) -> RequestBuilder<BrokersProgramInfo> {
        var path = "/v2.0/brokers/{programId}"
        let programIdPreEscape = "\(programId)"
        let programIdPostEscape = programIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{programId}", with: programIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<BrokersProgramInfo>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
