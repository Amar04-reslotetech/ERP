//
//  Api.swift
//  Resolutek_Agent
//
//  Created by Amar Patil on 08/12/20.
//

import Foundation
import Alamofire

typealias Complete = ((_ x: Bool) -> (Void))
typealias ApiResponse = ((_ response: [String:Any]?, _ message: String?) -> (Void))
typealias jsonArrayResponse = ((_ response: [[String:Any]]?, _ message: String?) -> (Void))



//MARK: -- Login Module --
class Api {
    
    static func verifyEmail(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
//        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.verifyEmail)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.verifyEmail, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
        
//            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func login(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
//        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.login)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.login, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
//            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    
    static func getAgentList(apiResponse:@escaping(ApiResponse)) {
        
//        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Get Agent Url -- \(Configurator.baseURL+ApiEndPoints.getAgent_List)")
        APIMaster.sharedInstance.apiRequestWith(urlString: ApiEndPoints.getAgent_List, httpMethod: .get, info: nil, requestHeaders: nil, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            //            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
 
   
    static func register_User(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
//        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.registration)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.registration, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
//            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func getClientList(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
//        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.getClient_List)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getClient_List, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
//            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
  
   
   
    static func addClient(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
//        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.addClient)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.addClient, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
//            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func forgotPassword(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
//        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.forgotPassword)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.forgotPassword, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
//            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func updateForgotPassword(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.updateForgotPassword)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.updateForgotPassword, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func checkClientMail(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.checkClientmail)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.checkClientmail, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    
    
    
    
    
    static func register_Client(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.register_Client)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.register_Client, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func delete_Client(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.delete_Client)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.delete_Client, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func delete_AgentAction(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.deleteAgentAction)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.deleteAgentAction, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func requestAgentFromClient(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.requestAgentAdd)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.requestAgentAdd, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    static func getRequestClient(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.requestClientList)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.requestClientList, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func rejectRequest(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.requestReject)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.requestReject, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func acceptRequest(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.acceptRequest)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.acceptRequest, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func agentHistory(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.agentHistory)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.agentHistory, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func postAgentAction(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.postAgentAction)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.postAgentAction, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func getActionList(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.getActionList)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getActionList, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func getAgentActionItem(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.getAgentActionList)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getAgentActionList, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func sequenceChangeList(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.chnageSequence)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.chnageSequence, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func tempolateSequenceList(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.changeTemaplateSequence)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.changeTemaplateSequence, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func getClientActionItem(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.getCleintActionLsit)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getCleintActionLsit, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func getNextStepsAction(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.getNextStepAction)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getNextStepAction, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func addActionCustom(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.addCustomAction)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.addCustomAction, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func deleteActionApi(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.deleteAction)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.deleteAction, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    
    
    
    
    static func changeStatusAction(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
       
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.changeStatusAction)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.changeStatusAction, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
          
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func editProperty(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.editProperty)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.editProperty, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func getPropertyData(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.getProperty)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getProperty, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func getAgentByID(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.getAgent)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getAgent, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func updateUserProfile(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.updateProfile)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.updateProfile, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    
    
    static func getClientListChat(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.getClientListChat)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getClientListChat, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    
    static func dashBoard(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.getDashBoard)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getDashBoard, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func getVendorList(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.getVendorList)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getVendorList, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func getFeedBackList(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.getFeedbackList)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getFeedbackList, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    
    
    
    
    
    static func dashBoard1(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.clinetDashBoard)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.clinetDashBoard, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    
    static func enableCompletion(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.enableCompletion)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.enableCompletion, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    
    
    
    static func AddVendor(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        

        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.addVendor)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.addVendor, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func delete_Vendor(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.deleteVendor)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.deleteVendor, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func getClientTransaction(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.getClientTransaction)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getClientTransaction, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func getTransactionDashBoard(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.getTransactionDashBoard)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getTransactionDashBoard, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func ActionItemList(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.getAgentList)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getAgentList, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func optOut(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.optOut)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.optOut, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func dashBoardHistory(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.transactionDashboardHistory)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.transactionDashboardHistory, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    
    static func feedback(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.feedback)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.feedback, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func addTimeSlot(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.addTimeSlot)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.addTimeSlot, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func getTimeSlot(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.getTimeSlot)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getTimeSlot, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func deleteTimeSlot(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.deleteTimeSlot)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.deleteTimeSlot, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func getMeetingList(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.meetingList)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.meetingList, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    
    
    static func dateWiseMeetingList(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.dateWiseMeetingList)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.dateWiseMeetingList, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func deleteMeeting(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.deleteMeeting)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.deleteMeeting, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func addMeeting(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.addMeeting)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.addMeeting, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func getClientMail(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.getClientMail)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getClientMail, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func acceptMeeting(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.acceptMeeting)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.acceptMeeting, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
        
        static func rejectMeeting(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
            
            ManageHudder.sharedInstance.startActivityIndicator()
           //  showLoader()
            print("Login Url -- \(Configurator.baseURL+ApiEndPoints.rejectMeeting)")
            APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.rejectMeeting, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
                ManageHudder.sharedInstance.stopActivityIndicator()
           //   hideLoader()
                if nil != error
                {
                    AlertFunctions.showAlert(message: (error?.localizedDescription)!)
                } else {
                    if  let response = response as? [String:Any] {
                        print("Verify  Res -- \(response)")
                        if  (response["Success"] as? Int) == 0  {
                            apiResponse(nil, response["Message"] as? String ?? "" )
                        } else {
                            apiResponse(response, nil)
                        }
                    } else {
                        apiResponse(nil, "Error in json format")
                    }
                }
            }
        }
    
    static func chatCount(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.chatCount)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.chatCount, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func updateMeeting(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.updateMeeting)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.updateMeeting, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    static func logOut(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.logOut)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.logOut, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func chatCount1(_ param: [String:Any],_ header:[String:String],apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Login Url -- \(Configurator.baseURL+ApiEndPoints.chatCOunt1)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.chatCOunt1, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["Success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
   
    }

