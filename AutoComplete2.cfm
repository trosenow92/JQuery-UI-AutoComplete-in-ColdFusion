<cfset returnArray = ArrayNew(1) />
 
<cfquery name="qryMyTable" dataSource="NBA" cachedwithin="#CreateTimeSpan(0,0,0,0)#">
SELECT TOP 5 PlayerID, PlayerName, RetirementYear
From Players
WHERE PlayerName LIKE  <cfqueryparam value="%#URL.term#%" cfsqltype="cf_sql_varchar">
ORDER BY PlayerName;
</cfquery>
 


<cfloop query="qryMyTable">
    <cfset statesStruct = StructNew() />
    <cfset statesStruct["label"] = playername />
    <cfset statesStruct["value"] = playername & ' ' & '(' & RetirementYear & ')' />
     
    <cfset ArrayAppend(returnArray,statesStruct) />
</cfloop>
 
<cfoutput>
#serializeJSON(returnArray)#
</cfoutput>
