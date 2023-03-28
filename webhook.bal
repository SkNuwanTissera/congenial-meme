import ballerinax/trigger.asgardeo;
import ballerina/http;
import ballerina/log;

configurable asgardeo:ListenerConfig config = ?;

listener http:Listener httpListener = new(8090);
listener asgardeo:Listener webhookListener =  new(config,httpListener);

service asgardeo:UserOperationService on webhookListener {
  
    remote function onLockUser(asgardeo:GenericEvent event ) returns error? {
      //Not Implemented
      log:printInfo("OnLock");
    }
    remote function onUnlockUser(asgardeo:GenericEvent event ) returns error? {
      //Not Implemented
    }
    remote function onUpdateUserCredentials(asgardeo:GenericEvent event ) returns error? {
      //Not Implemented
    }
    remote function onDeleteUser(asgardeo:GenericEvent event ) returns error? {
      //Not Implemented
    }
    remote function onUpdateUserGroup(asgardeo:UserGroupUpdateEvent event ) returns error? {
      //Not Implemented
    }
}

service /ignore on httpListener {}
