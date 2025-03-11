# isc-iop-ex3
InterSystems IRIS Interoperability HTTP request example with WireMock.

Requires WireMock standalone. Load it from: https://repo1.maven.org/maven2/org/wiremock/wiremock-standalone/3.12.1/wiremock-standalone-3.12.1.jar

Steps:

1. Create Interoperability enabled namespace in Management Portal
2. Import code and start IOP production (in ObjectScript shell):
```
do $system.OBJ.ImportDir("<DIR>/src",,"/compile=1",,1)
do ##class(Ens.Director).StartProduction("janihur.isciopex3.Production")
```
3. Start WireMock:
```
java -jar wiremock-standalone.jar --disable-gzip --print-all-network-traffic --port 8080 --root-dir mock/
```
4. Run request:
```
#; In Management Portal:
Go to Namespace and Production
 > Select: Operations.CustomHttpRequest
  > Select tab: Actions
   > Press button: Test
    > Select Request Type: Ens.Request
     > Press button: Invoke Testing Service
```
```
#; in ObjectScript shell:
zw ##class(Ens.Director).CreateBusinessService("Services.Main",.service)
set request = ##class(Ens.Request).%New()
zw service.ProcessInput(request,.response)
zw response
```