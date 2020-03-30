//
// FileAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class FileAPI {
    /**
     * enum for parameter quality
     */
    public enum Quality_getFile: String { 
        case low = "Low"
        case medium = "Medium"
        case high = "High"
    }

    /**
     Download file
     
     - parameter id: (path)  
     - parameter quality: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFile(id: UUID, quality: Quality_getFile? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        getFileWithRequestBuilder(id: id, quality: quality).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Download file
     - GET /v2.0/file/{id}
     
     - parameter id: (path)  
     - parameter quality: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func getFileWithRequestBuilder(id: UUID, quality: Quality_getFile? = nil) -> RequestBuilder<Void> {
        var path = "/v2.0/file/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "quality": quality?.rawValue
        ])
        

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Upload file
     
     - parameter uploadedFile: (form) Upload File 
     - parameter authorization: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadFile(uploadedFile: URL, authorization: String? = nil, completion: @escaping ((_ data: UploadResult?,_ error: Error?) -> Void)) {
        uploadFileWithRequestBuilder(uploadedFile: uploadedFile, authorization: authorization).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Upload file
     - POST /v2.0/file/upload
     - examples: [{contentType=application/json, example={
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
}}]
     
     - parameter uploadedFile: (form) Upload File 
     - parameter authorization: (header)  (optional)

     - returns: RequestBuilder<UploadResult> 
     */
    open class func uploadFileWithRequestBuilder(uploadedFile: URL, authorization: String? = nil) -> RequestBuilder<UploadResult> {
        let path = "/v2.0/file/upload"
        let URLString = SwaggerClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "uploadedFile": uploadedFile
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let url = NSURLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UploadResult>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

}
