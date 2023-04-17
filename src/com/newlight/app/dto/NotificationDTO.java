package com.newlight.app.dto;
//select notification_number, notification_title, notification_content, notification_writeday
//from newlight.notification

public class NotificationDTO {
   private int notificationNumber;
   private String notificationTitle;
   private String notificationContent;
   private String notificationWriteDay;
   private int memberNumber;

   public NotificationDTO() {
	// TODO Auto-generated constructor stub
}

public int getNotificationNumber() {
	return notificationNumber;
}

public void setNotificationNumber(int notificationNumber) {
	this.notificationNumber = notificationNumber;
}

public String getNotificationTitle() {
	return notificationTitle;
}

public void setNotificationTitle(String string) {
	this.notificationTitle = string;
}

public String getNotificationContent() {
	return notificationContent;
}

public void setNotificationContent(String notificationContent) {
	this.notificationContent = notificationContent;
}

public String getNotificationWriteDay() {
	return notificationWriteDay;
}

public void setNotificationWriteDay(String notificationWriteDay) {
	this.notificationWriteDay = notificationWriteDay;
}


public int getMemberNumber() {
	return memberNumber;
}

public void setMemberNumber(int memberNumber) {
	this.memberNumber = memberNumber;
}

@Override
public String toString() {
	return "NotificationDTO [notificationNumber=" + notificationNumber + ", notificationTitle=" + notificationTitle
			+ ", notificationContent=" + notificationContent + ", notificationWriteDay=" + notificationWriteDay
			+ ", memberNumber=" + memberNumber + "]";
}


   
}
