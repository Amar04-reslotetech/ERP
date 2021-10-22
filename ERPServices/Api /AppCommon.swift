

import Foundation
import UIKit
import Alamofire
import CoreLocation
import ContactsUI


/// This is a common app class which contains all the common methods(i.e use one or more times with same functionality).



typealias CompletionWithSelction  = (_ index: Int) -> ()
typealias DownloadFile = ((_ url: URL?, _ message: String?) -> (Void))

class AppCommon {
    
    
    /**
     This function is made to logout you from your account.
     
     */
    
    
    //    static func logoutFromApp(nav: UINavigationController){
    //
    //        let getAddressURL = DefaultURLKey +
    //            RestURLKey + ApiEndPoints.LogoutRequestAPIKey
    //        _ = HUD.showUIBlockingIndicator()
    //        APIMaster.sharedInstance.apiRequestWith(urlString: getAddressURL, httpMethod: .get, requestHeaders: APIHeaders.headers(contentTypeKey: JSONFormKey), parmEncodingType: JSONEncoding.default) { (response, error) -> (Void) in
    //
    //            if nil != error
    //            {
    //                AppCommon.PrintLogs(printStatement:error?.localizedDescription as Any)
    //                Alert.alertOnRootViewController(withMessageStr: valueProvider(fromKey: VCKeys.GeneralLocalizedValidationsStringKey.TryAgainKey.rawValue))
    //
    //            }else{
    //                guard let logoutResponse = response as? [String:Any] else { return }
    //                //print("Logout response is -- \(logoutResponse))")
    //                PrintLogs(printStatement: "Logout response is -- \(logoutResponse))")
    //                Alert.alertOnRootViewController(withMessageStr: logoutResponse[MessageKey] as! String)
    //                UserDefaults.standard.removeObject(forKey: UD_UserInfoKey)
    //                UserDefaults.standard.removeObject(forKey: UD_BadgeCountKey)
    //
    //                if RSText.fetchRecentlySearched().count > 0
    //                {
    //                    RSText.removeAll()
    //                }
    //
    //                for controller in (nav.viewControllers) {
    //                    if controller.isKind(of: HomeViewController.self) {
    //                        if MyLocalCart.getCartCount() > 0
    //                        {
    //                            UserDefaults.standard.set("\(MyLocalCart.getCartCount())", forKey: UD_BadgeCountKey)
    //                        }else {
    //                            UserDefaults.standard.set("0", forKey: UD_BadgeCountKey)
    //                        }
    //                        self.badgeCount(onVC: controller)
    //                        nav.popToViewController(controller, animated: false)
    //                        break
    //                    }
    //                }
    //            }
    //            _ = HUD.hideUIBlockingIndicator()
    //        }
    //    }
    
    
    
    //    static func addShadowToView(_ someView:Any) {
    //        let shadowPath = UIBezierPath()
    //        shadowPath.move(to: CGPoint(x: someView.bounds.origin.x, y: someView.frame.size.height))
    //        shadowPath.addLine(to: CGPoint(x: someView.bounds.width / 2, y: someView.bounds.height + 7.0))
    //        shadowPath.addLine(to: CGPoint(x: someView.bounds.width, y: someView.bounds.height))
    //        shadowPath.close()
    //
    //        someView.layer.shadowColor = UIColor.darkGray.cgColor
    //        someView.layer.shadowOpacity = 1
    //        someView.layer.masksToBounds = false
    //        someView.layer.shadowPath = shadowPath.cgPath
    //    }
    
    //MARK:- Navigation
    
    static func pushToNext(_ sourceVC: UIViewController, identifier: String)
    {
        let destinationVC =  sourceVC.storyboard?.instantiateViewController(withIdentifier: identifier)
        sourceVC.navigationController?.pushViewController(destinationVC!, animated: true)
    }
    
    static func presentVC(_ sourceVC: UIViewController, identifier: String)
    {
        let destinationVC =  sourceVC.storyboard?.instantiateViewController(withIdentifier: identifier)
        sourceVC.present(destinationVC!, animated: true, completion: nil)
    }
    
    /**
     This function is made to handle print command according to your use. if isPrintEnable is true all logs will enable in your app and if it's false all logs will disable in your app.
     
     */
    
    static func PrintLogs(printStatement: Any){
        if Configurator.consolePrintingEnabled {
            print(printStatement)
        }
    }
    
//    static func getContactList() -> [[String:Any]] {
//
//        let contacts = PhoneContacts.getContacts() // here calling the getContacts methods
//        var arrPhoneNumbers = [[String:Any]]()
//        for contact in contacts {
//            for ContctNumVar: CNLabeledValue in contact.phoneNumbers {
//
//                if let fulMobNumVar  = ContctNumVar.value as? CNPhoneNumber {
//                 //   let strCC = fulMobNumVar.value(forKey: "countryCode") as? String ?? "" // get country code
//                    let name = contact.givenName + " " + contact.familyName
//                    let number = (fulMobNumVar.value(forKey: "digits") as? String ?? "")
//                    var address = ""
//                    var city = ""
//                    var postal_code = ""
//                    var state = ""
//                    var email1 = ""
//                    for email in contact.emailAddresses
//                    {
//                        email1 = email.value as String
//                    }
//                    for i in contact.postalAddresses
//                    {
//                        address = i.value.street
//                        city = i.value.city
//                        postal_code = i.value.postalCode
//                        state = i.value.state
//                    }
//
////                    let addreess = contact.postalAddresses
//                    let dict = ["Name": name, "Number": number,"Email":email1,"Address":address,"City":city,"PostalCode":postal_code,"state":state] as [String : Any]
//                    arrPhoneNumbers.append(dict)
//                }
//            }
//        }
//        return arrPhoneNumbers // here array has all contact numbers.
//    }
//
    static func saveImageDocumentDirectory(image:UIImage){
        
        let fileManager = FileManager.default
        let paths = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString).appendingPathComponent("profileImage.jpg")
        print(paths)
        let imageData = image.jpegData(compressionQuality: 0.75)
        fileManager.createFile(atPath: paths as String, contents: imageData, attributes: nil)
    }
    
    static func getDirectoryPath() -> String {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let documentsDirectory = paths[0]
        return documentsDirectory
    }
    
    static func getProfileImage() -> UIImage? {
        
        let fileManager = FileManager.default
        let imagePAth = (self.getDirectoryPath() as NSString).appendingPathComponent("profileImage.jpg")
        if fileManager.fileExists(atPath: imagePAth){
            return UIImage(contentsOfFile: imagePAth)
        }else{
            return nil
        }
    }
    static func rootToVC(_ withId: String, storybord: AppStoryboard) {
        let strbrd = storybord.instance
        let vc = strbrd.instantiateViewController(withIdentifier: withId)
        let nvc: UINavigationController = UINavigationController(rootViewController: vc)
        nvc.isNavigationBarHidden = true
//        kAppDelegateObj.window?.rootViewController = nvc
//        kAppDelegateObj.window?.makeKeyAndVisible()
    }
    
    static func setMapToRoot() {
        
     
        
//             let storyboard = UIStoryboard(name:"Agent", bundle: nil)
//              let sw1 = storyboard.instantiateViewController(withIdentifier: "AgentViewController") as! AgentViewController
//            let navController = UINavigationController(rootViewController: sw1)
//                kAppDelegateObj.window?.rootViewController = navController
//                kAppDelegateObj.window?.makeKeyAndVisible()
//                 return
           
        }
    //    static func presentPopUp(message: String?, fromVC: UIViewController, actionDismiss: @escaping OnPopUpComption) {
    //        let destinationVC = fromVC.storyboard?.instantiateViewController(withIdentifier: "")
    //        destinationVC?.modalTransitionStyle = .crossDissolve
    //        destinationVC?.modalPresentationStyle = .custom
    ////        destinationVC?.strMessage = message
    ////        destinationVC?.callbackDismiss = actionDismiss
    //        fromVC.restoresFocusAfterTransition = true
    //        fromVC?.present(destinationVC, animated: true, completion: nil )
    //    }
    
//    static func getContactList() -> [[String:Any]] {
//
//        let contacts = PhoneContacts.getContacts() // here calling the getContacts methods
//        var arrPhoneNumbers = [[String:Any]]()
//        for contact in contacts {
//            for ContctNumVar: CNLabeledValue in contact.phoneNumbers {
//
//                if let fulMobNumVar  = ContctNumVar.value as? CNPhoneNumber {
//                 //   let strCC = fulMobNumVar.value(forKey: "countryCode") as? String ?? "" // get country code
//                    let name = contact.givenName + " " + contact.familyName
//                    let number = (fulMobNumVar.value(forKey: "digits") as? String ?? "")
//                    let dict = ["Name": name, "Number": number]
//                    arrPhoneNumbers.append(dict)
//                }
//            }
//        }
//        return arrPhoneNumbers // here array has all contact numbers.
//    }
    
    
//    static func getAddressFrom(_ coordinates : CLLocationCoordinate2D, completion: @escaping (_ addess: String) -> ())  {
//
//        let options = ReverseGeocodeOptions(coordinate: coordinates)
//        // Or perhaps: ReverseGeocodeOptions(location: locationManager.location)
//        let geocoder = Geocoder.shared
//        _ = geocoder.geocode(options) { (placemarks, attribution, error) in
//            var addressString : String = ""
//            if let placemark = placemarks?.first {
//                if placemark.qualifiedName != nil {
//                    addressString = addressString + placemark.qualifiedName!
//                    //+ ", "
//                }
//            }
//            DispatchQueue.main.async {
//                completion(addressString)
//            }
//        }
    }
    
    //MARK: -- User Info Methods
    //    static func  getUserId() -> String {
    //        var userId = "0"
    //        if let user = UserDefaultFunctions.valueFor(key: UserDefaultKeys.UserId) as? String {
    //            if let usrId = user[UserDefaultKeys.PassengerID.rawValue]  as? String {
    //                userId = usrId
    //            }
    //        }
    //        return userId
    //    }
    //
    //    static func  getToken() -> String {
    //        var userToken = "0"
    //        if let user = UserDefaultFunctions.valueFor(key: UserDefaultKeys.userInfo) as? NSMutableDictionary {
    //            if let token = user[UserDefaultKeys.TokenNo.rawValue]  as? String {
    //                userToken = token
    //            }
    //        }
    //        return userToken
    //    }
    
//    static func getUnitId() -> String {
//        var unitId = "1"
//        if let unit = UserDefaultFunctions.valueFor(key: UserDefaultKeys.UnitId) as? String {
//            unitId = unit
//        }
//        return unitId
//    }
//
//    static func getUserId() -> String {
//        var userId = "1"
//        if let usrId = UserDefaultFunctions.valueFor(key: UserDefaultKeys.UserId) as? String {
//            userId = usrId
//        }
//        return userId
//    }
    
    //MARK: -- App Route --
    
//    static func rootToDrawer(_ withId: String) {
//
////        let storyboard = UIStoryboard(name: "Main", bundle: nil)
////        let mainViewController = storyboard.instantiateViewController(withIdentifier: withId)
////        let leftViewController = storyboard.instantiateViewController(withIdentifier: "DrawerVC") as! DrawerVC
////
////        let nvc: UINavigationController = UINavigationController(rootViewController: mainViewController)
////        //  nvc.isNavigationBarHidden = true
////
////        let nvcLeft: UINavigationController = UINavigationController(rootViewController: leftViewController)
////        nvcLeft.isNavigationBarHidden = true
////
////        let slideMenuController = SlideMenuController(mainViewController: nvc, leftMenuViewController: nvcLeft)
////        slideMenuController.automaticallyAdjustsScrollViewInsets = true
////        slideMenuController.delegate = mainViewController as? SlideMenuControllerDelegate
////        kAppDelegateObj.window?.backgroundColor = UIColor(red: 236.0, green: 238.0, blue: 241.0, alpha: 1.0)
////        kAppDelegateObj.window?.rootViewController = slideMenuController
////        kAppDelegateObj.window?.makeKeyAndVisible()
//    }
//
//    static func rootWithOutDrawer() {
//        UserDefaultFunctions.clear()
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let mainViewController = storyboard.instantiateViewController(withIdentifier: "LoginVC")
//
//        let nvc: UINavigationController = UINavigationController(rootViewController: mainViewController)
//        nvc.isNavigationBarHidden = true
//
//        kAppDelegateObj.window?.rootViewController = nvc
//        kAppDelegateObj.window?.makeKeyAndVisible()
//    }
//
//
//    static func setHomeToRoot() {
//        UserDefaults.standard.set(false, forKey: "loginDone")
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let VC1 = storyboard.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
//        let navController = UINavigationController(rootViewController: VC1)
//        kAppDelegateObj.window?.rootViewController = navController
//        kAppDelegateObj.window?.makeKeyAndVisible()
//    }
//
//    static func setMapToRoot() {
//
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//
//        if let status = Defaults.shared.get(forKey: DefaultKey.accountStatus) as? String {
//            if status == "Active"  ||  status == "InProgress"  {
//              let sw1 = storyboard.instantiateViewController(withIdentifier: "MapVc") as! MapVc
//                   let navController = UINavigationController(rootViewController: sw1)
//                   kAppDelegateObj.window?.rootViewController = navController
//                   kAppDelegateObj.window?.makeKeyAndVisible()
//                 return
//            }
//        }
//
//        let sw1 = storyboard.instantiateViewController(withIdentifier: "ActivateAccountVC") as! ActivateAccountVC
//                let navController = UINavigationController(rootViewController: sw1)
//                kAppDelegateObj.window?.rootViewController = navController
//                kAppDelegateObj.window?.makeKeyAndVisible()
//
//
//    }
//
//    static func setPickUpToRoot() {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let VC1 = storyboard.instantiateViewController(withIdentifier: "PickupdestVC") as! PickupdestVC
//        let navController = UINavigationController(rootViewController: VC1)
//        kAppDelegateObj.window?.rootViewController = navController
//        kAppDelegateObj.window!.makeKeyAndVisible()
//    }
//
//   static func setCompleteTripToRoot() {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let VC1 = storyboard.instantiateViewController(withIdentifier: "CompletetripVC") as! CompletetripVC
//        let navController = UINavigationController(rootViewController: VC1)
//        kAppDelegateObj.window?.rootViewController = navController
//        kAppDelegateObj.window!.makeKeyAndVisible()
//    }
//
//    static func convertDateFormat(_ fromDate: String, toDate: String, date: String) -> String
//    {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = fromDate
//
//        if let dateN = dateFormatter.date(from: date) {
//            dateFormatter.dateFormat = toDate
//            return  dateFormatter.string(from: dateN)
//        } else {
//            dateFormatter.dateFormat = toDate
//            return  dateFormatter.string(from: Date())
//        }    }
//
//
//    static func changeToAppDate(_ fromDF: DateFormats, date: String) -> String {
//
//        let dateFormat = DateFormatter()
//        dateFormat.dateFormat = fromDF.rawValue
//        if let dateN = dateFormat.date(from: date) {
//            let oneDaysAgo = NSCalendar.current.date(byAdding: .day, value: -1, to: Date())
//            if (dateN.hasSame(.day, as: Date())) {
//                dateFormat.dateFormat = DateFormats.format9.rawValue
//                return "Today " + dateFormat.string(from: dateN)
//            } else if (dateN.hasSame(.day, as: oneDaysAgo!)) {
//                dateFormat.dateFormat = DateFormats.format9.rawValue
//                return "Yesterday " +  dateFormat.string(from: dateN)
//            } else {
//                dateFormat.dateFormat = DateFormats.format5.rawValue
//                return dateFormat.string(from: dateN)
//            }
//        } else {
//            dateFormat.dateFormat = DateFormats.format5.rawValue
//            return  dateFormat.string(from: Date())
//        }
//    }
//
//    static func downloadUrlToDirectory(_ strUrl : String, urlResponse: @escaping (DownloadFile)) {
//
//        let url = URL(fileURLWithPath: strUrl)
//        let fileName = String((url.lastPathComponent)) as NSString
//        //path extension will consist of the type of file it is, m4a or mp4
//        //        let pathExtension = fileName.pathExtension
//
//        let destination: DownloadRequest.DownloadFileDestination = { _, _ in
//            var documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
//
//            // the name of the file here I kept is yourFileName with appended extension
//            documentsURL.appendPathComponent(fileName as String)
//            return (documentsURL, [.removePreviousFile])
//        }
//
//        //        let downloadUrl: String = URL.
//        let downloadUrl = strUrl.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)
//        ManageHudder.sharedInstance.startActivityIndicator()
//
//        Alamofire.download(downloadUrl!, to: destination).response { response in
//            ManageHudder.sharedInstance.stopActivityIndicator()
//            if response.destinationURL != nil {
//               // print(response.destinationURL!)
//                urlResponse(response.destinationURL!, nil)
//            } else {
//                urlResponse(nil, "")
//                AlertFunctions.showAlert(message: (response.error?.localizedDescription)!)
//            }
//        }
//    }
//
//    static func checkLocationPermission() -> Bool {
//
//        var hasPermission = false
//        if CLLocationManager.locationServicesEnabled() {
//            switch CLLocationManager.authorizationStatus() {
//            case .notDetermined, .restricted, .denied:
//                hasPermission = false
//            case .authorizedWhenInUse:
//                hasPermission = false
//            case .authorizedAlways:
//                hasPermission = true
//            }
//        } else {
//            hasPermission = false
//        }
//
//        return hasPermission
//
//
//
////        {
////
////
////            // User has not yet made a choice with regards to this application
////            case notDetermined
////
////
////            // This application is not authorized to use location services.  Due
////            // to active restrictions on location services, the user cannot change
////            // this status, and may not have personally denied authorization
////            case restricted
////
////
////            // User has explicitly denied authorization for this application, or
////            // location services are disabled in Settings.
////            case denied
////
////
////            // User has granted authorization to use their location at any
////            // time.  Your app may be launched into the background by
////            // monitoring APIs such as visit monitoring, region monitoring,
////            // and significant location change monitoring.
////            //
////            // This value should be used on iOS, tvOS and watchOS.  It is available on
////            // MacOS, but kCLAuthorizationStatusAuthorized is synonymous and preferred.
////            @available(iOS 8.0, *)
////            case authorizedAlways
////
////
////            // User has granted authorization to use their location only while
////            // they are using your app.  Note: You can reflect the user's
////            // continued engagement with your app using
////            // -allowsBackgroundLocationUpdates.
////            //
////            // This value is not available on MacOS.  It should be used on iOS, tvOS and
////            // watchOS.
////            @available(iOS 8.0, *)
////            case authorizedWhenInUse
////
////
////            // User has authorized this application to use location services.
////            //
////            // This value is deprecated or prohibited on iOS, tvOS and watchOS.
////            // It should be used on MacOS.
////            @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Use kCLAuthorizationStatusAuthorizedAlways")
////            public static var authorized: CLAuthorizationStatus { get }
////        }
//
//
////        if CLLocationManager.locationServicesEnabled() {
////
////            print("Location Services Enabled")
////
////            if CLLocationManager.authorizationStatus() == .denied {
////                AlertFunctions.showAlert(message: "App Location Permission Denied. To re-enable, please go to Settings and turn on Location Service for this app.")
////            }
////        }
//
//    }
//
    
    
//}
