function myfunc {
    param ( [parameter(valuefrompipelinebypropertyname=$true)]$path )

    write-output "The path variable contains '$path'"
 
}

new-object -typename psobject -property @{path="directory13"} | myfunc