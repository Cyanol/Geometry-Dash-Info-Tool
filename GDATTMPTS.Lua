--TRAINERGENERATORSTART--
hideAllCEWindows()

RequiredCEVersion=6.51
if (getCEVersion==nil) or (getCEVersion()<RequiredCEVersion) then
  messageDialog('Please install Cheat Engine '..RequiredCEVersion, mtError, mbOK)
  closeCE()
end
CETrainer.SEPERATOR.Visible=false

getAutoAttachList().add("GeometryDash.exe")
gPlaySoundOnAction=false
CETrainer.show()
function AboutClick()
  showMessage(gAboutText)
end
gAboutText=[[GDInfoTool v.0.1]]

function CloseClick()
  
  closeCE()
  return caFree 
end

--TRAINERGENERATORSTOP--
function CETimer2Timer(sender)
local memrec=addresslist_getMemoryRecordByDescription(getAddressList(), "Current Attempt")
  local value=memoryrecord_getValue(memrec)
  control_setCaption(CETrainer_lbl_atts, value)

end
