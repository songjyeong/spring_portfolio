package xyz.itwill.whitehouse.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

public class FileDownload extends AbstractView {
	public FileDownload() {
		setContentType("application/download; utf-8");
	}
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String uploadDir=(String)model.get("uploadDir");
		String uploadFilename=(String)model.get("uploadFilename");
		String originFilename=(String)model.get("originFilename");
		
		File downloadFile=new File(uploadDir, uploadFilename);
		
		response.setContentType(getContentType());
		response.setContentLength((int)downloadFile.length());
		
		originFilename=URLEncoder.encode(originFilename, "utf-8");
		response.setHeader("Content-Disposition", "attachement;filename=\""+originFilename+"\";");
		
		OutputStream out=response.getOutputStream();
		
		FileInputStream in=new FileInputStream(downloadFile);
			
		FileCopyUtils.copy(in, out);

		in.close();
	}
}









