var onEditMode = true;
var Selection = null;

function initEditor(font_color,bg_color,ok_domain,content_str) 
{
    var source = "<html><head><style type='text/css'> ";
		source += "img {border:none} P {MARGIN-TOP: 5px; MARGIN-BOTTOM: 5px;} ";
		source += "</style>";
		source += "<script type='text/javascript'>function resizeImage(num){}</script></head><body STYLE='background-color:transparent;color:"+font_color+"' bgcolor="+bg_color+">";
		source += content_str;
		source += "</body></html>";

	EDITOR.document.designMode="On";
	EDITOR.document.open("text/html");
	EDITOR.document.write(source);
	EDITOR.document.close();	

	EDITOR.document.body.style.fontSize = "9pt";
	EDITOR.document.body.style.fontFamily = "돋움";
	
	if(ok_domain){
		EDITOR.document.domain = ok_domain;
		document.domain = ok_domain;
	}
}

function setFont(oSelect)
{
    if (oSelect.options[oSelect.selectedIndex].value != '')
        EDITOR.document.execCommand("FontName", null, oSelect.options[oSelect.selectedIndex].value);

    oSelect.selectedIndex = 0;   
}



function postContent()
{
    HTMLSOURCE = EDITOR.document.body.innerHTML;

    //EDITOR.document.body.createTextRange().execCommand("copy"); 

    return HTMLSOURCE;
}

function setFontSize(oSelect)
{
    if (oSelect.options[oSelect.selectedIndex].value != '')
        EDITOR.document.execCommand("FontSize", null, oSelect.options[oSelect.selectedIndex].value);
        
    oSelect.selectedIndex = 0;
}

function bg_change(oSelect){
	read_table.style.backgroundImage = "url('"+oSelect.options[oSelect.selectedIndex].value+"')";	
	document.all.bg_path.value = oSelect.options[oSelect.selectedIndex].value;
}


function editContent(act){
    if (!onEditMode)  {
        alert("HTML 모드에서는 에디터를 사용할수 없습니다.");
        return;
    }
	if(parent!=null){
		var ori_x = parent.document.body.scrollLeft;
		var ori_y = parent.document.body.scrollTop;	
	}

    Selection = EDITOR.document.selection.createRange();
    if (Selection != null) Selection.select();
    
    switch (act){
        case "Bold" :
        case "Italic" :
        case "Underline" :
        case "StrikeThrough" :        
        case "JustifyLeft" :
        case "JustifyCenter" :
        case "JustifyRight" :
            EDITOR.document.execCommand(act);
            break;
        case "fontcolor" :
        case "bgcolor" :
		case "emoticon" :
            showFontColorBox(act);
            break;
        case "link" :
            showLinkBox();
		case "cut" :
		case "copy" :
		case "paste" :
			text_edit(act);
    }
	if(parent!=null)parent.scrollTo(ori_x,ori_y);
}

function text_edit(act){
	EDITOR.focus();
	//EDITOR.document = EDITOR.document.selection.createRange();
	EDITOR.document.execCommand(act);
}

function showFontColorBox(act)
{
    if (act == "fontcolor"){
        document.all["TableFontColor"].style.display = "block";
        document.all["TableBGColor"].style.display = "none";
		document.all["TableEmoticon"].style.display = "none";
    }else if (act == "bgcolor"){
        document.all["TableFontColor"].style.display = "none";
        document.all["TableBGColor"].style.display = "block";
		document.all["TableEmoticon"].style.display = "none";
    }else if (act == "emoticon"){
        document.all["TableFontColor"].style.display = "none";
        document.all["TableBGColor"].style.display = "none";
		document.all["TableEmoticon"].style.display = "block";
    }else{
		document.all["TableFontColor"].style.display = "none";
        document.all["TableBGColor"].style.display = "none";
		document.all["TableEmoticon"].style.display = "none";
	}

}

function showLinkBox()
{
    EDITOR.focus();
    EDITOR.document.execCommand("CreateLink",true);
}

function setFontColor(color)
{
	if(parent!=null){
		var ori_x = parent.document.body.scrollLeft;
		var ori_y = parent.document.body.scrollTop;	
	}
    if (Selection != null) 
        Selection.select();
    EDITOR.document.execCommand("ForeColor", false, color);

    document.all["TableFontColor"].style.display = "none";
    EDITOR.document.selection.empty();

	if(parent!=null)parent.scrollTo(ori_x,ori_y);
}

function setBGColor(color, ftcolor)
{
	if(parent!=null){
		var ori_x = parent.document.body.scrollLeft;
		var ori_y = parent.document.body.scrollTop;	
	}
    if (Selection != null) 
        Selection.select();
    EDITOR.document.execCommand("BackColor", null, color );
    if (ftcolor != "")
          EDITOR.document.execCommand("ForeColor", null, ftcolor);

    document.all["TableBGColor"].style.display = "none";
    EDITOR.document.selection.empty();

	if(parent!=null)parent.scrollTo(ori_x,ori_y);
}

function setBackColor(color)
{
    EDITOR.document.body.style.backgroundColor = color;
}

var sepFile = "||";
var setField = "|";
function popImage(){
	/*
	tmp_frame.location.href='popup/imgup_form.htm?board_code='+document.all.board_code.value;
	document.all('tmp_frame').style.width=355;
	document.all('tmp_frame').style.height=350;
	//tmp_div.style.top = parent.document.body.scrollTop+50	
	tmp_div.style.display = 'block';
	*/
    open_wnd("/bbs_shop/popup/imgup_form.htm?board_code="+document.all.board_code.value, "addimage", 345, 360);	
}

function popFile(cluburl){
	/*
	tmp_frame.location.href='popup/fileup_form.htm?board_code='+document.all.board_code.value;
	document.all('tmp_frame').style.width=355;
	document.all('tmp_frame').style.height=240;
	//tmp_div.style.top = parent.document.body.scrollTop+50
	tmp_div.style.display = 'block';
	*/
    open_wnd("/bbs_shop/popup/flash_fileup_form.htm?board_code="+document.all.board_code.value, "addfile", 330, 270);
	
}
function popbgm(){
	/*
	tmp_frame.location.href='popup/bgmup_form.htm?board_code='+document.all.board_code.value;
	document.all('tmp_frame').style.width=355;
	document.all('tmp_frame').style.height=275;
	//tmp_div.style.top = parent.document.body.scrollTop+50
	tmp_div.style.display = 'block';
	*/
    open_wnd("/bbs_shop/popup/bgmup_form.htm?board_code="+document.all.board_code.value, "bgmfile", 330, 300);
	
}

function popLink(){	
    open_wnd("/bbs_shop/popup/link_form.htm?board_code="+document.all.board_code.value, "addlink", 330, 300);
}


function popPoll(){
	if(!document.frmWrite.poll_idx.value){
		open_wnd("/bbs_shop/popup/poll_form.htm", "addpoll", 330, 260);
	}else{
		open_wnd("/bbs_shop/popup/poll_form.htm?poll_idx="+document.frmWrite.poll_idx.value, "addpoll", 330, 260);
	}
	 
}
function popSketch(){
    open_wnd("#", "addsketch", 600, 520);
}
function addLink(attachURL, comment, alignPos, gita)
{
    try
    {
		var imgid = parseInt((Math.random()*10000000));
        var attachTag = getAttachTag(attachURL, comment, alignPos, imgid, gita);

        if (alignPos=='top')
        {
            EDITOR.document.body.innerHTML =  attachTag+ "<br>" + EDITOR.document.body.innerHTML;
        }
        else if (alignPos=='bottom')
        {
            EDITOR.document.body.innerHTML =  EDITOR.document.body.innerHTML + "<br>" + attachTag ;
        }
        else
        {
            var sText = EDITOR.document.selection.createRange();
            
            if (sText.parentElement().all.EDITOR == null)
            {
                if (sText.parentElement().outerHTML.indexOf('<BODY') > 0)
                {
                    sText.parentElement().innerHTML = "<P>" + attachTag + sText.parentElement().innerHTML  +  "</P>"
                }
                else
                {
                    sText.parentElement().innerHTML = attachTag + sText.parentElement().innerHTML  
                }
            }
               else
               {
                EDITOR.document.body.innerHTML = "<P>" + attachTag + EDITOR.document.body.innerHTML + "</P>";
            }
        }
    }
    catch(e)
    {
        EDITOR.document.body.innerHTML = "<P>" + attachTag + EDITOR.document.body.innerHTML + "</P>";
    }
    
    EDITOR.focus();
}

function getAttachTag(attachURL, comment, alignPos, imgid,gita)
{
    var attachTag = "";
    attachURL = attachURL.replace(/'/g, "\'");            
    if  (attachURL.match(/.jpg|.jpeg|.gif|.png$/i))
    {       
        if (alignPos == 'top' || alignPos == 'bottom')
            attachTag = "<center><img src='" + attachURL + "' align='" + alignPos + "' id='userImg" + imgid + "' onload='setTimeout(\"resizeImage(" + imgid + ")\",200)' style='cursor:hand' onclick='popview(\"" + attachURL + "\")'>" + comment + "</center>" ;
        else
            attachTag = "<img src='" + attachURL + "' align='" + alignPos + "' id='userImg" + imgid + "' onload='setTimeout(\"resizeImage(" + imgid + ")\",200)' style='cursor:hand' onclick='popview(\"" + attachURL + "\")'>" + comment ;
    }
    else 
    {

        attachTag = "<embed " + gita + " src='" + attachURL + "' >" + comment;
    }
    
    return attachTag;
}

function addList(dirname, filename, filesize ,imgid, bgm_title){    

    if (imgid == 'poll'){
		// 폴 첨부
        document.all.attachfilelist.add(new Option('폴이 첨부되었습니다' , filename +"|"+imgid+"|"+filesize));

	}else if (imgid == 'bgm'){
		// 음악 첨부
        document.all.attachfilelist.add(new Option('배경음악 - '+ bgm_title, dirname +"/" +filename +"|"+imgid+"|"+filesize + "|"+bgm_title));

	}else if(imgid == 'mobile_img'){
		// 모바일에서 이미지 첨부하는 경우..
		document.getElementById('attachfilelist').add(new Option('Image - '+filename + "   " + parseInt(parseInt(filesize)/1024) + "KB", dirname +"/" + filename +"|"+imgid+"|"+filesize));

    }else if (imgid == 'mov' || imgid == 'file' || imgid >0){
		// 일반 파일 첨부
        if (filesize){            
            document.all.attachfilelist.add(new Option(filename + "   " + parseInt(parseInt(filesize)/1024) + "KB", dirname +"/" + filename +"|"+imgid+"|"+filesize));
        }else{
            document.all.attachfilelist.add(new Option(filename, dirname +"/" + filename +"|"+imgid+"|"+filesize));
		}
    }
}


function addPoll(re_poll_idx){
	if(document.all("frmWrite"))document.frmWrite.poll_idx.value = re_poll_idx;
	if(document.all("hidden_poll_form"))document.hidden_poll_form.poll_idx.value = re_poll_idx;
    document.all.imgPoll.src = "/img_up/board_tpl/"+document.all.templet_idx.value+"/default_img/btn_poll_edit.gif";
}


function removeAttach(mode){
    var attachlist = document.all.attachfilelist;
    
    if(attachlist.selectedIndex <= 0)
		return;
    if(attachlist.options[attachlist.selectedIndex].value.indexOf('poll') >= 0){
		document.all.poll_idx.value = "";
		//document.all.imgPoll.src = "/img_up/board_tpl/"+document.all.templet_idx.value+"/default_img/btn_poll.gif";
    }

	if(attachlist.options[attachlist.selectedIndex].value.indexOf('bgm') >= 0){
		//document.all.imgbgm.src = "/img_up/board_tpl/"+document.all.templet_idx.value+"/default_img/btn_addbgm.gif";
		document.all.bgm_title.value = "";
		document.all.bgm_dir.value = "";
    }

	var iframe_name = create_iframe();
	document.getElementById(iframe_name).src="file_del.php?mode="+mode+"&board_code="+document.all.board_code.value+"&board_idx="+document.all.idx.value+"&dir_file="+attachlist.options[attachlist.selectedIndex].value;    
    attachlist.remove(attachlist.selectedIndex);
}

function decodeContent(str)
{
    return str.replace(/&lt;/gi,"<").replace(/&gt;/gi,">").replace(/&amp;/gi,"&");
}

function setContent()
{
    EDITOR.document.body.innerHTML = decodeContent(document.all.DIVcontent.innerHTML);
}

function checkpos()
{
    var sText = EDITOR.document.selection.createRange();
    
    if (sText.parentElement().all.EDITOR == null && sText.parentElement().all.papermain == null)
    {
        var lineval = sText.parentElement().outerHTML.toLowerCae();

        var idx = lineval.indexOf("<font");
        if (idx > -1)
        {
            try 
            {
                if (sText.parentElement().face != null)
                {
                    if (sText.parentElement().face != "")
                        document.all.fontface.value = sText.parentElement().face;
                    else
                        document.all.fontface.selectedIndex = 1;
                }
                else
                {
                    document.all.fontface.selectedIndex = 1;
                }

                if (sText.parentElement().size != null)
                {
                    if (sText.parentElement().size != "")
                        document.all.fontsize.value = sText.parentElement().size;
                    else
                        document.all.fontsize.selectedIndex = 0;
                }
                else
                {
                    document.all.fontsize.selectedIndex = 0;
                }
            }
            catch(e) {}
        }
        else
        {
            try 
            {
                document.all.fontface.selectedIndex = 1;
                document.all.fontsize.selectedIndex = 0;
            }
            catch(e) {}

        }
    }
}

function checkposkey()
{
    if (EDITOR.event.keyCode >= 37 && EDITOR.event.keyCode <= 40)
    {
        var sText = EDITOR.document.selection.createRange();
        
        if (sText.parentElement().all.EDITOR == null && sText.parentElement().all.papermain == null)
        {
            var lineval = sText.parentElement().outerHTML.toLowerCase();
            var idx = lineval.indexOf("<font");
            
            if (idx > -1)
            {
                try {
                    if (sText.parentElement().face != null)
                    {
                        if (sText.parentElement().face != "")
                            document.all.fontface.value = sText.parentElement().face;
                        else
                            document.all.fontface.selectedIndex = 1;
                    }
                    else
                    {
                        document.all.fontface.selectedIndex = 1;
                    }
                    
                    if (sText.parentElement().size != null)
                    {
                        if (sText.parentElement().size != "")
                            document.all.fontsize.value = sText.parentElement().size;
                        else
                            document.all.fontsize.selectedIndex = 0;
                    }
                    else
                    {
                        document.all.fontsize.selectedIndex = 0;
                    }
                }
                catch(e) {}
            }
            else
            {
                document.all.fontface.selectedIndex = 1;
                document.all.fontsize.selectedIndex = 0;
            }
        }
    }
}


// TEXT로 변환하기
function goText(mode, textObj, iframeObj)
{
  var text = "";
	
  // html에서 변환하기
  if (mode=="1") {

	   text = textObj.value;          
	  
	   text = text.split("<BR>\r\n");
	   text = text.join("\r\n");           
	   skip = "\r\n\r\n<";
	   if(text.indexOf(skip) != "-1") {
			text = text.split(skip);
			text = text.join("\r\n<");
	   }
  } else if(mode=="2") {
	  // editor에서 변환하기
	   text = iframeObj.document.body.innerHTML;		   
	   text = text.split("<BR>");
	   text = text.join("\r\n");                   
	   skip = "\r\n\r\n<";
	   if(text.indexOf(skip) != "-1") {
			text = text.split(skip);
			text = text.join("\r\n<");
	   }
  } else {
	  return;
  }

  textObj.value = text;
}


// HTML로 변환하기
function goHtml(mode, textObj, iframeObj)
{
  var text = "";
	
  // text에서 변환하기
  if(mode=="0") {
	   text = textObj.value;	     
	   text = text.split("\r\n");
	   text = text.join("<BR>\r\n");               

	   var skipTag = new Array ("<HR>", ">");      
	   for(i=0; i<skipTag.length; i++) {
		   skip = skipTag[i] + "<BR>";
		   if(text.indexOf(skip) != "-1") {
			   text = text.split(skip);
			   text = text.join(skipTag[i]);
		   }
	   }
  } else if(mode=="2") {
	   text = iframeObj.document.body.innerHTML;
	   text = text.split("<BR>");
	   text = text.join("<BR>\r\n"); 
  } else {
	  return;
  }

  textObj.value = text;
}


// EDITOR로 변환하기
function goEditor(mode, textObj, iframeObj)
{
	var sz = "";
	var text = "";
	
  // text에서 변환하기
  if (mode=="0") {
	   text = textObj.value;
	   var skipTag = new Array ("<HR>", ">");      
	   for(i=0; i<skipTag.length; i++) {
		   skip = skipTag[i] + "\r\n";
		   if(text.indexOf(skip) != "-1") {			   
			   text = text.split(skip);
			   text = text.join(skipTag[i]);
		   }
	   }
	   text = text.split("\r\n");
	   text = text.join("<BR>");
  
	   var sz =  "<STYLE>"
			+ "BODY {border:1px black solid;border-top:none;margin-top:0;margin-left:0}"
			+ "</STYLE>"
			+ "<BODY ONCONTEXTMENU=\"return false\">"
			+ text;
			+ "</BODY>"   
  } else if(mode=="1") {
	   text = textObj.value;
	   text = text.split("<BR>\r\n");
	   text = text.join("<BR>");
	   var sz =  "<STYLE>"
			+ "BODY {border:1px black solid;border-top:none;margin-top:0;margin-left:0}"
			+ "</STYLE>"
			+ "<BODY ONCONTEXTMENU=\"return false\">"
			+ text;
			+ "</BODY>"
  } else {
	  return;
  }

  iframeObj.document.body.innerHTML = sz;
}

function editOption(objValue) {
	var mode = document.all.radioMemoryCurrent.value;
	var textObj = eval("document.all.TEXT_content");
	var iframeObj = eval("EDITOR");
	
	if (objValue == 0){
		goText(mode, textObj, iframeObj);
		LayerEditor.style.display="none";
		LayerText.style.display = "block";
		document.all.radioMemoryPast.value = mode;
		document.all.radioMemoryCurrent.value = "0";
	} else if (objValue == 1){	
		goHtml(mode, textObj, iframeObj);
		LayerEditor.style.display="none";
		LayerText.style.display = "block";
		document.all.radioMemoryPast.value = mode;
		document.all.radioMemoryCurrent.value = "1";
	} else if (objValue == 2){		
		LayerText.style.display="none";
		goEditor(mode, textObj, iframeObj);
		LayerEditor.style.display = "block";
		document.all.radioMemoryPast.value = mode;
		document.all.radioMemoryCurrent.value = "2";
	}
}
