//
//  APIEndPoint.swift
//  Resolutek_Agent
//
//  Created by Amar Patil on 08/12/20.
//

import Foundation
class ApiEndPoints
{
    
    
    
    static let verifyEmail = "VerifyClientEmail"
    static let login = "CheckClientLogin"
    static let getAgent_List = "GetAgentRatingList"
    static let registration = "PostNewAgent"
    static let getClient_List = "GetAgentClientList"
    static let addClient = "PostNewAgentClient"
    static let forgotPassword = "GetClientForgetPassword"
    static let updateForgotPassword = "PostForgetPassord"
    static let checkClientmail = "PostCheckClientEmail"
    static let register_Client = "PostCompleteClientSetup"
    static let delete_Client = "PostDeleteAgentClient"
    static let requestAgentAdd = "PostClientConnectRequest"
    static let requestClientList =  "GetAgentClientRequestList"
    static let requestReject = "PostRejectClientRequest"
    static let acceptRequest = "PostAcceptClientRequest"
    static let agentHistory = "GetAgentClientHistoryList"
    static let postAgentAction = "PostNewAgentActionTemplateItem"
    static let getActionList = "GetAgentTemplateList"
    static let getAgentActionList = "GetAgentActionItemList"
    static let getCleintActionLsit = "GetClientActionItemList"
    static let deleteAgentAction = "PostDeleteAgentActionTemplateItem"
    static let getNextStepAction = "GetNextStepActionItemList"
    static let addCustomAction = "PostNewCustomAction"
    static let deleteAction = "PostDeleteCustomAction"
    static let changeStatusAction = "PostMarkActionItem"
    static let editProperty = "PostEditProperty"
    static let getProperty = "GetClientTransaction"
    static let getAgent = "GetClientByID"
    static let updateProfile = "PostEditClient"
    static let chnageSequence = "PostAgentItemSequence"
    static let changeTemaplateSequence = "PostTemplateItemSequence"
    static let getClientListChat = "GetAgentChatList"
    static let getDashBoard = "GetClientDashboard"
    static let getVendorList = "GetClientVendorList"
    static let getFeedbackList = "GetClientHistory"
    static let clinetDashBoard = "GetClientDashboard"
    static let enableCompletion = "PostEnableCompletion"
    static let addVendor = "PostNewVendor"
    static let deleteVendor = "PostDeleteVendor"
    static let getClientTransaction = "GetClientTransactionList"
    static let getTransactionDashBoard = "GetTransactionDashboard"
    static let getAgentList = "GetTransactionActionList"
    static let optOut = "PostOptOutTransaction"
    static let transactionDashboardHistory = "GetTransactionDashboard"
    static let feedback = "PostCompleteTransaction"
    static let addTimeSlot = "PostNewClientSchedule"
    static let getTimeSlot = "GetClientSchedule"
    static let deleteTimeSlot = "PostDeleteClientSchedule"
    static let meetingList = "GetClientMeetingList"
    static let addMeeting = "PostNewClientMeeting"
    static let dateWiseMeetingList = "GetDateWiseClientMeetingList"
    static let deleteMeeting = "DeleteMeeting"
    static let getClientMail = "GetClientAgent"
    static let acceptMeeting = "PostAcceptMeeting"
    static let rejectMeeting = "PostRejectMeeting"
    static let chatCount = "PostLastSeen"
    static let chatCOunt1 = "PostClientLastSeen"
    static let updateMeeting = "PostEditMeeting"
    static let logOut = "PostClientLogout"

   
}
