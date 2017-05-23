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
  --called by the close button onClick event, and when closing the form
  closeCE()
  return caFree --onClick doesn't care, but onClose would like a result
end

--TRAINERGENERATORSTOP--
function CETimer1Timer(sender)
local memrec=addresslist_getMemoryRecordByDescription(getAddressList(), "Level ID")
  local value=memoryrecord_getValue(memrec)
  control_setCaption(CETrainer_lbl_id, value)

end
