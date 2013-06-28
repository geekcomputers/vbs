' Script Name 		: system_restore.vbs
' Author 					: Craig Richards
' Created 				: 08-March-2013
' Last Modified		:
' Version				: 1.0

' Modifications		:

' Description 		: Create a system restore point, it is dated at today's date

localdate=date()
set SRP = getobject("winmgmts:\\.\root\default:Systemrestore")
CSRP = SRP.createrestorepoint ("System Start-up - " & localdate, 0, 100)