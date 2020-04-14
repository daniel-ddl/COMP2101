 echo "==============="
 echo "Computer System"
 echo "==============="
  get-wmiobject win32_computersystem
 echo "================"
 echo "Operating System"
 echo "================"
  get-wmiobject win32_operatingsystem | format-list SystemDirectory,Version
 echo "========="
 echo "Processor"
 echo "========="
  get-wmiobject win32_processor | format-list Description,Name,NumberofCores,L3CacheSize
 echo "==============="
 echo "Physical Memory"
 echo "==============="
  get-wmiobject Win32_physicalmemory | format-table Manufacturer,Description,
  @{n="Capacity(GB)"; e={$_.capacity/1gb -as [int]}},
  BankLabel,DeviceLocator
  get-wmiobject Win32_physicalmemory | format-list @{n="Capacity(GB)"; e={$_.capacity/1gb -as [int]}}
echo "=========="
echo "Disk Drive"
echo "=========="
 get-wmiobject win32_diskdrive |
 format-table -autosize Manufacturer,Model,
 @{n="Size(GB)"; e={$_.size/1gb -as [int]}}
echo "============"
echo "Logical Disk"
echo "============"
 get-wmiobject win32_logicaldisk | where-object size -gt 0 | format-table Description,
 @{n="Size(GB)"; e={$_.size/1gb -as [int]}},
 @{n="Free(GB)"; e={$_.freespace/1gb -as [int]}},
 @{n="% Free"; e={100*$_.freespace/$_.size -as [int]}}
echo "================"
echo "Video Controller"
echo "================"
 get-wmiobject win32_videocontroller | format-list Infsection,Description,VideoModeDescription