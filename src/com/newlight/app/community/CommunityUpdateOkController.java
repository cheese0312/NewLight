package com.newlight.app.community;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.CommunityDAO;
import com.newlight.app.dao.CommunityFileDAO;
import com.newlight.app.dto.CommunityDTO;
import com.newlight.app.dto.CommunityFileDTO;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

public class CommunityUpdateOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	      CommunityDAO communityDAO = new CommunityDAO();
	      CommunityDTO communityDTO = new CommunityDTO();
	      CommunityFileDAO communityFileDAO = new CommunityFileDAO();
	      CommunityFileDTO communityFileDTO = new CommunityFileDTO();
	      int communityNumber = 0;
	      
	      System.out.println("ok컨트롤러 들어왔다!!!!");
	      
	      
	      String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
	      int fileSize = 1024 * 1024 * 5; //5mb
	      
	      System.out.println(uploadPath);
	      
//	      ========================
//	      하나의 input으로 여러 첨부파일을 보낸 경우 아래와 같이 처리한다.
	      MultipartParser parser = new MultipartParser(req, fileSize);
	      parser.setEncoding("utf-8");
	      
	      while(true) {
//	         MultipartParser객체는 여러 폼데이터를 part객체로 분리할 수 있다.
	         
	         Part part = parser.readNextPart();
	         
	         if(part == null) { break; }
	         String fileSystemName = null;
	         String fileOriginalName = null;
	         
	         if(part.isFile()) {
	            FilePart filePart = (FilePart)part;
	            filePart.setRenamePolicy(new DefaultFileRenamePolicy());
	            fileOriginalName = filePart.getFileName();
	            
	            if(fileOriginalName != null) {
//	               파일을 저장하기 위한 정보를 가진 객체를 만든다.
	               File file = new File(uploadPath, fileOriginalName);
//	               파일을 저장한다.
	               filePart.writeTo(file);
//	               저장 후 파일 이름을 다시 뽑으면 저장될 때의 이름이 나온다.
	               fileSystemName = filePart.getFileName();
	               
	               communityFileDTO.setFileSystemName(fileSystemName);
	               communityFileDTO.setFileOriginalName(fileOriginalName);
	               communityFileDTO.setCommunityNumber(communityNumber);
	               communityFileDAO.insert(communityFileDTO);
	            }
	         } else {
//	            part객체가 파일이 아닌 일반 파라미터인 경우
	            ParamPart paramPart = (ParamPart)part;
	            String param = paramPart.getName(); //파라미터 이름
	            String value = paramPart.getStringValue(); //값
	            
	            if(param.equals("communityTitle")) {
	               communityDTO.setCommunityTitle(value);
	            }else if (param.equals("communityContent")) {
	               communityDTO.setCommunityContent(value);
	            }else if(param.equals("communityNumber")){
	            	communityNumber = Integer.valueOf(value);
	            	communityDTO.setCommunityNumber(communityNumber);
	            }
	            
//	            만약 둘 중 하나라도 null이면 다음 반복으로 돌린다.
//	            이 처리를 하지않으면 게시글이 2번 생긴다.
	            if(communityDTO.getCommunityTitle() == null || communityDTO.getCommunityContent() == null) { continue; }
	            
	            communityDTO.setMemberNumber((Integer)req.getSession().getAttribute("memberNumber"));
	            communityDAO.update(communityDTO);
	            
	    		List<CommunityFileDTO> communityFiles = communityFileDAO.select(communityNumber);

	    		for (CommunityFileDTO communityFile : communityFiles) {
	    			File temp = new File(uploadPath, communityFile.getFileSystemName());

	    			if (temp.exists()) {
	    			temp.delete();
	    			}
	    		}
	    		
	    		System.out.println(communityNumber);
	    		communityFileDAO.delete(communityNumber);
	            
	         }
	         
	      }
	      
	      
	      
	      resp.sendRedirect("/community/communityListOk.cm");
	}

}
