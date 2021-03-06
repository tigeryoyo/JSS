package com.hust.jss.utils;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

public class UploadUtils {
	
	//上传
		public boolean uploadUtils(MultipartFile[] uploadfile,String taskname)
		{
			if(uploadfile!=null && uploadfile.length > 0) 
			{
				for(MultipartFile file:uploadfile)
				{
					//设置上传文件位置
	        		String uploadpath = file.getOriginalFilename();  //获取文件名
	        		System.out.println("hahahah"+uploadpath);  
	        	    String path=Config.task+taskname;  //路径
	        	    System.out.println("***********"+path); 
	                //创建文件夹
	        	    File uploadtargetFile = new File(path,uploadpath);
					//判断文件是否存在
	        	    isExists(uploadtargetFile);
					//保存文件
					if (saveFile(file, uploadtargetFile)) {
						
						return true;
						
					}
				    
				}
			}
			
			return false;
		}
		
		//判断该路径下文件是否存在
		private boolean isExists(File uploadtargetFile)
		{
			if (!uploadtargetFile.exists())
		    {
		    	uploadtargetFile.mkdirs(); 
		    	return true;
			}
		    else{
		    	System.out.println("文件已存在");
		    	return false;
		    }
		}
		
		//保存文件
		private boolean saveFile(MultipartFile file, File uploadtargetFile)
		{  
	        // 判断文件是否为空  
	        if (!file.isEmpty()) {  
	            try {  
	        	    file.transferTo(uploadtargetFile);  //写入文件
	                return true;  
	            } catch (Exception e) {  
	                e.printStackTrace();  
	            }  
	        }  
	        return false;  
	    }  

}
