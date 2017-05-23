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
function CETimer4Timer(sender)
local memrec=addresslist_getMemoryRecordByDescription(getAddressList(), "Last Death")
  local value=memoryrecord_getValue(memrec)
  control_setCaption(CETrainer_lbl_ld, value)

end
