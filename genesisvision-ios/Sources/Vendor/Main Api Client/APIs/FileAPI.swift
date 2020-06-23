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
     Upload file
     - parameter uploadedFile: (form)  (optional)     - parameter location: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadFile(uploadedFile: Data? = nil, location: ImageLocation? = nil, completion: @escaping ((_ data: UploadResult?,_ error: Error?) -> Void)) {
        uploadFileWithRequestBuilder(uploadedFile: uploadedFile, location: location).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Upload file
     - POST /v2.0/file/upload
     - API Key:
       - type: apiKey Authorization 
       - name: Bearer
     - examples: [{contentType=application/json, example={
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
}}]
     - parameter uploadedFile: (form)  (optional)     - parameter location: (query)  (optional)

     - returns: RequestBuilder<UploadResult> 
     */
    open class func uploadFileWithRequestBuilder(uploadedFile: Data? = nil, location: ImageLocation? = nil) -> RequestBuilder<UploadResult> {
        let path = "/v2.0/file/upload"
        let URLString = SwaggerClientAPI.basePath + path
        let formParams: [String:Any?] = [
                        "uploadedFile": uploadedFile
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: [
                        "location": location
        ])

        let requestBuilder: RequestBuilder<UploadResult>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
