Class janihur.isciopex3.Production Extends Ens.Production [ Not ProcedureBlock ]
{

XData ProductionDefinition
{
<Production Name="janihur.isciopex3.Production" TestingEnabled="true" LogGeneralTraceEvents="true">
  <Description></Description>
  <ActorPoolSize>1</ActorPoolSize>
  <Item Name="Services.Main" Category="" ClassName="janihur.isciopex3.services.Main" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
  </Item>
  <Item Name="Operations.CustomHttpRequest" Category="" ClassName="janihur.isciopex3.operations.CustomHttpRequest" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="HTTPServer">host.docker.internal</Setting>
    <Setting Target="Adapter" Name="HTTPPort">8080</Setting>
    <Setting Target="Adapter" Name="URL">/customhttprequest</Setting>
  </Item>
</Production>
}

}
