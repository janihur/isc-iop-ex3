Class janihur.isciopex3.Runner
{

ClassMethod Run() As %Status
{
	set status = ##class(Ens.Director).CreateBusinessService("Services.Main",.service)
	if ($$$ISERR(status)) {
		do $system.OBJ.DisplayError(status)
		return status
	}

	set request = ##class(Ens.Request).%New()
	set status = service.ProcessInput(request,.response)

	zwrite response

	if ($$$ISERR(status)) {
		do $system.OBJ.DisplayError(status)
	}
	
	return status
}

}
