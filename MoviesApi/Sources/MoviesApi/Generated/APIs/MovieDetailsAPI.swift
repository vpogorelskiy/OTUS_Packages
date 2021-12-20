//
// MovieDetailsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class MovieDetailsAPI {

    /**
     Movie details
     
     - parameter i: (query) A valid IMDb ID 
     - parameter apiKey: (query) Your API Key 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMovieDetails(i: String, apiKey: String, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: MovieFull?, _ error: Error?) -> Void)) {
        getMovieDetailsWithRequestBuilder(i: i, apiKey: apiKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Movie details
     - GET /?i
     - parameter i: (query) A valid IMDb ID 
     - parameter apiKey: (query) Your API Key 
     - returns: RequestBuilder<MovieFull> 
     */
    open class func getMovieDetailsWithRequestBuilder(i: String, apiKey: String) -> RequestBuilder<MovieFull> {
        let localVariablePath = "/?i"
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "i": i.encodeToJSON(),
            "apiKey": apiKey.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MovieFull>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}