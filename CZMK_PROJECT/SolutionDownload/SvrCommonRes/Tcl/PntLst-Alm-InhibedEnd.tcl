proc GetPointListFullName {pName pointListName} {
	set a [string range $pName 0 1]
	append a $pointListName
	return $a
}

set cosAlarm $THIS
set nIndex [string last . $THIS]
if { $nIndex >0} {
	set cosAlarm [string range $THIS 0 [expr $nIndex-1]]
}

set varPid [RD $cosAlarm.pid]
set varName [RD $THIS.fullName]

set a [GetPointListFullName $varName 01:AlarmForbid]
AppPubBase_PointList_RemovePoint $a $varPid

set a [GetPointListFullName $varName 01:DisplayAll]
AppPubBase_PointList_RemovePoint $a $varPid
