Class janihur.isciopex3.services.Main Extends Ens.BusinessService
{

Method OnProcessInput(request As Ens.Request, Output response As Ens.Response) As %Status
{
	return ..SendRequestSync("Operations.CustomHttpRequest",request,.response)
}

}
