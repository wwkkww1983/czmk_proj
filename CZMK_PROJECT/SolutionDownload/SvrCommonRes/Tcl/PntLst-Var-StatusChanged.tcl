proc GetPointListFullName {pName pointListName} {
	set a [string range $pName 0 1]
	append a $pointListName
	return $a
}

set status [RD $THIS.status]
set preStatus [RD $THIS.previousStatus]
set varPid [RD $THIS.pid]
set varName [RD $THIS.fullName]

if { $status != $preStatus } {
	if {$preStatus == 4} {
		set a [GetPointListFullName $varName 01:ManSetting]
		AppPubBase_PointList_RemovePoint $a $varPid
	} elseif { $preStatus == 8} {
		set a [GetPointListFullName $varName 01:ScanStop]
		AppPubBase_PointList_RemovePoint $a $varPid
	}

	if { $status == 4 } {
		set a [GetPointListFullName $varName 01:ManSetting]
		AppPubBase_PointList_AddPoint $a $varPid
	} elseif { $status == 8} {
		set a [GetPointListFullName $varName 01:ScanStop]
		AppPubBase_PointList_AddPoint $a $varPid
	}

	if {$preStatus == 4 || $preStatus == 8} {
		set a [GetPointListFullName $varName 01:DisplayAll]
		AppPubBase_PointList_RemovePoint $a $varPid
	} elseif { $status == 8 || $status == 4} {
		set a [GetPointListFullName $varName 01:DisplayAll]
		AppPubBase_PointList_AddPoint $a $varPid
	}
}