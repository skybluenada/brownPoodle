package com.brownpoodle.common;

import java.io.File;
import java.util.Iterator;

import org.apache.log4j.Logger;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public class FileUploadUtil {
	private Logger logger = Logger.getLogger(FileUploadUtil.class);

	public String uploadFile(MultipartHttpServletRequest request, String dirName) {
		String basepath = request.getSession().getServletContext()
				.getRealPath("resources" + File.separator + "img" + File.separator + dirName);
		System.out.println("basepath: " + basepath);

		File temp = new File(basepath);
		if (!temp.isDirectory()) {
			boolean r = temp.mkdirs();
			System.out.println("r : " + r);
		}

		try {
			Iterator<String> iterator = request.getFileNames();

			String uploadFileName = "";
			MultipartFile mFile = null;
			String orgFileName = ""; // 업로드한 파일명
			String uploadPath = "";
			String afterName = "";

			while (iterator.hasNext()) {
				uploadFileName = iterator.next();
				mFile = request.getFile(uploadFileName);

				orgFileName = mFile.getOriginalFilename();
				System.out.println("orgFileName : " + orgFileName);

				uploadPath = basepath + File.separator + orgFileName;
				System.out.println("upload path :" + uploadPath);

				// 중복된 파일이름 변경
				afterName = FileRename.rename(uploadPath);
				uploadPath = basepath + File.separator + afterName;
				
				File f = new File(uploadPath);

				mFile.transferTo(f);
			} // while end

			return afterName;
		} catch (Exception e) {
			System.out.println("[ERROR] file upload error! -> " + e.getMessage());
		}

		return null;
	}
	
	// 수정된 파일 이름 리턴하는 메소드 필요
	/*
	public String rename(String originPath) {
		
		System.out.println(" > 수정 전 파일 경로 : " + originPath);
		
		File tmp = new File(originPath);
		String fileName = tmp.getName();
		System.out.println(" > 수정 전 파일 이름 : " + fileName);
		
		try {
			String s = fileName;
			
			for (int i = 1; tmp.exists(); i++) {
				int lt = s.lastIndexOf(".");
				String s1 = s.substring(0, lt);
				String s2 = s.substring(lt);
				String st = "_" + i;
				fileName = s1.concat(st).concat(s2);
				
				System.out.println(" > 수정 후 파일 이름: " + fileName);
				tmp = new File(tmp.getParent(), fileName);
			}
			
		} catch (Exception e) {
			System.out.println("[ERROR] rename() : " + e.getMessage());
		}		
		
		System.out.println(" * 리턴될 파일 이름 : " + fileName);
		
		return fileName;
	}
	*/
}
