Profile: MedComHospitalNotificationMessageHeader
Parent: MedComMessagingMessageHeader
Id: medcom-hospitalNotification-messageHeader
Description: "Message header for a hospital notification message."
* eventCoding = $MessageEvents#hospital-notification-message
* destination[cc] ..0
* focus 1..1 MS
* focus only Reference(MedComHospitalNotificationEncounter)
* focus ^type.aggregation = #bundled


Instance: HospitalNotificationAdmittedMessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Description: "Message header for a hospital notification admit message. Valid only if used in a bundle (message)."
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#hospital-notification-message
* destination.endpoint = "http://medcom.dk/unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "http://medcom.dk/unknown"
* focus = Reference(HospitalNotificationEncounterInProgress)

Instance: HospitalNotificationOnLeaveMessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Description: "Message header for a hospital notification start leave message. Valid only if used in a bundle (message)."
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#hospital-notification-message
* destination.endpoint = "http://medcom.dk/unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "http://medcom.dk/unknown"
* focus = Reference(HospitalNotificationEncounterOnLeave)

Instance: HospitalNotificationEndLeaveMessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Description: "Message header for a hospital notification start leave message. Valid only if used in a bundle (message)."
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#hospital-notification-message
* destination.endpoint = "http://medcom.dk/unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "http://medcom.dk/unknown"
* focus = Reference(HospitalNotificationEncounterInProgress)

Instance: HospitalNotificationDischargedMessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Description: "Message header for a hospital notification discharge message. Valid only if used in a bundle (message)."
* destination.extension[use] = PrimaryCoding
* eventCoding = $MessageEvents#hospital-notification-message
* destination.endpoint = "http://medcom.dk/unknown"
* destination.receiver = Reference(MessageReceiver)
* sender = Reference(MessageSender)
* source.endpoint = "http://medcom.dk/unknown"
* focus = Reference(HospitalNotificationEncounterFinished)