proc GetPointListFullName {pName pointListName} {
	set a [string range $pName 0 1]
	append a $pointListName
	return $a
}

set status [RD $THIS.status]
set varPid [RD $THIS.pid]
set varName [RD $THIS.fullName]

if { $status == 4 } {
	set a [GetPointListFullName $varName 01:ManSetting]
	AppPubBase_PointList_AddPoint $a $varPid
	set a [GetPointListFullName $varName 01:DisplayAll]
	AppPubBase_PointList_AddPoint $a $varPid
} elseif { $status == 8 } {
	set a [GetPointListFullName $varName 01:ScanStop]
	AppPubBase_PointList_AddPoint $a $varPid
	set a [GetPointListFullName $varName 01:DisplayAll]
	AppPubBase_PointList_AddPoint $a $varPid
}
