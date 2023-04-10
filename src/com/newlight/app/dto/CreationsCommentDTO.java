package com.newlight.app.dto;

//comment_number int unsigned,
//comment_content varchar(1000),
//member_number int unsigned not null,
//creation_number int unsigned not null,
//constraint fk_comment foreign key(member_number)
//references member (member_number),

public class CreationsCommentDTO {
	private int commentNumber;
	private String commentContent;
	private int memberNumber;
	private int creationNumber;
}
