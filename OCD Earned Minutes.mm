<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1406210811179" ID="ID_566762803" MODIFIED="1406210825889" TEXT="OCD Earned Minutes">
<node CREATED="1406210836193" ID="ID_1777423767" MODIFIED="1406210850475" POSITION="right" TEXT="Calculate Lines/Order">
<node CREATED="1406210851504" ID="ID_1414406725" MODIFIED="1406212376689" TEXT="The number of lines per LP actually">
<node CREATED="1406212378101" ID="ID_1464571488" MODIFIED="1406212412387" TEXT="Grab data from Productivity Where ProductFamily = OC and AssignType = PP01 or PF01"/>
<node CREATED="1406212967218" ID="ID_1177269175" MODIFIED="1406213001080" TEXT="Order the data by Employee, ToContainer"/>
<node CREATED="1406213006596" ID="ID_1817664113" MODIFIED="1406213037936" TEXT="Looping through the rows, count, and store the number of lines for each instance of a ToContainer"/>
<node CREATED="1406213038915" ID="ID_1462136533" MODIFIED="1406213119268" TEXT="Average this value out for the entire record set and store that"/>
</node>
</node>
<node CREATED="1406213415026" ID="ID_157496740" MODIFIED="1406213427927" POSITION="right" TEXT="Find SKU Location">
<node CREATED="1406213429099" ID="ID_1785805275" MODIFIED="1406213452727" TEXT="She is looping through a different sheet to find the value">
<node CREATED="1406213453747" ID="ID_1288442509" MODIFIED="1406213467001" TEXT="We can just use &quot;From Location&quot; out of the database"/>
</node>
</node>
<node CREATED="1406214205143" ID="ID_785382917" MODIFIED="1406214214275" POSITION="right" TEXT="CalculateManualPickTime">
<node CREATED="1406214216023" ID="ID_1483714098" MODIFIED="1406214273293" TEXT="She uses one of two values based on Mid(Location, 5, 1). If it is an &quot;X&quot; it&apos;s one value, otherwise it&apos;s the other.">
<node CREATED="1406214282985" ID="ID_1998692899" MODIFIED="1406214291853" TEXT="We should probably stick those in the database."/>
</node>
</node>
<node CREATED="1406214801372" ID="ID_393210056" MODIFIED="1406214810977" POSITION="right" TEXT="CopyInputDataToDistanceCalculator">
<node CREATED="1406214822371" ID="ID_1432819991" MODIFIED="1406214903084" TEXT="Here she is copying the locations to another sheet depending upon Mid(Location, 5, 1). If it is &quot;X&quot; it goes in the &quot;Ambient&quot; column, if it is &quot;Y&quot; it goes in the &quot;Cooler&quot; column, and if it is &quot;Z&quot; it goes in the &quot;Freezer&quot; column."/>
</node>
<node CREATED="1406220167419" ID="ID_1478584166" MODIFIED="1406220171760" POSITION="right" TEXT="Get Pallet Time">
<node CREATED="1406220173644" ID="ID_1699201426" MODIFIED="1406220659744" TEXT="Using the groups created above, she calls a DistanceCalculator subroutine for each">
<node CREATED="1406220843698" ID="ID_68434796" MODIFIED="1406220854127" TEXT="Cooler Distance Calculator">
<node CREATED="1406220855197" ID="ID_1491650496" MODIFIED="1406229008988" TEXT="She sets all of her input constants">
<node CREATED="1406220965503" ID="ID_624174231" MODIFIED="1406220982292" TEXT="We will do this with a &quot;Variable &quot; object filled from the database"/>
</node>
<node CREATED="1406221112004" ID="ID_84945372" MODIFIED="1406221220022" TEXT="She sets startlocation as the first location stored above"/>
<node CREATED="1406220984407" ID="ID_680728159" MODIFIED="1406221141875" TEXT="She sets starttrack as Mid(Location, 5, 2)"/>
<node CREATED="1406221082228" ID="ID_1981114054" MODIFIED="1406221107577" TEXT="She sets startbay as Mid(Location, 9, 2)"/>
<node CREATED="1406221147805" ID="ID_1685156017" MODIFIED="1406221166395" TEXT="She sets startlevel as Mid(Location, 12, 1)"/>
<node CREATED="1406221229448" ID="ID_664458507" MODIFIED="1406221259399" TEXT="She sets pickproducttime as the first picktime stored above"/>
<node CREATED="1406221301267" ID="ID_604435198" MODIFIED="1406221330232" TEXT="If startbay is &quot;01&quot; she sets it to 8, otherwise she sets to the integer value of whatever it is"/>
<node CREATED="1406221526779" ID="ID_593926102" MODIFIED="1406221546762" TEXT="She sets the starthorizontaldist based on startrack and startbay"/>
<node CREATED="1406221687314" ID="ID_1676318579" MODIFIED="1406221733904" TEXT="She calculates Input Horiz by taking the starthorizontaldist and adding in outinrack and dividing by forkliftspeed, outinrack and forkliftspeed both come from variables"/>
<node CREATED="1406221749100" ID="ID_659699624" MODIFIED="1406221776202" TEXT="She calculates inhorizontaldist based on startrack and startbay"/>
<node CREATED="1406221777605" ID="ID_480062929" MODIFIED="1406221842404" TEXT="She calculates verticaltimeup based on startrack, startbay and startlevel"/>
<node CREATED="1406221879161" ID="ID_1735845891" MODIFIED="1406221914350" TEXT="She sets &quot;Input Down Rack&quot; by taking inhorizontaldist and dividing by forkliftspeed"/>
<node CREATED="1406221938267" ID="ID_1298117194" MODIFIED="1406221997409" TEXT="She sets a cell called &quot;Input Vertical&quot; = verticaltimeup"/>
<node CREATED="1406221964378" ID="ID_130792736" MODIFIED="1406221980353" TEXT="She sets a cell called &quot;Pick Product Time&quot; = pickproducttime"/>
<node CREATED="1406222018389" ID="ID_1268763587" MODIFIED="1406226763731" TEXT="She sets a cell called &quot;Pick Time (s)&quot; = (starthorizontaldist + outinrack + inhorizontaldist) / forkliftspeed + verticaltimeup + pickproducttime"/>
<node CREATED="1406226792480" ID="ID_1148250540" MODIFIED="1406226973938" TEXT="She moves down one cell on the spreadsheet"/>
<node CREATED="1406226976455" ID="ID_67428735" MODIFIED="1406226998764" TEXT="She sets endlocation to the Location stored here, startlocation is still set to the one above it."/>
<node CREATED="1406227032537" ID="ID_20374737" MODIFIED="1406227060254" TEXT="She gets the pickproducttime out of the cell next to the location"/>
<node CREATED="1406227061290" ID="ID_1493995216" MODIFIED="1406227070311" TEXT="She sets outputside to &quot;B&quot;"/>
<node CREATED="1406227071282" ID="ID_1975927029" MODIFIED="1406227076687" TEXT="Then she starts the loop"/>
<node CREATED="1406227090058" ID="ID_1246317404" MODIFIED="1406227127617" TEXT="She sets endrack, endbay, and endlevel just like she did startrack, startbay, and startlevel above, the &quot;starts&quot; are still set."/>
<node CREATED="1406227171966" ID="ID_1658556613" MODIFIED="1406227199179" TEXT="endbay however, then just gets converted to an integer unlike startbay above, no 8 for &quot;01&quot;"/>
<node CREATED="1406227216472" ID="ID_242234554" MODIFIED="1406227273933" TEXT="If the startlocation is the same as the endlocation, verticaltimedown = 0 otherwise, it is calculated based on startrack, startbay, and startlevel."/>
<node CREATED="1406227292386" ID="ID_1397413929" MODIFIED="1406227329207" TEXT="Now she &quot;flips&quot; outputside to the opposite of what it is now, either &quot;A&quot; or &quot;B&quot;."/>
<node CREATED="1406227415975" ID="ID_60824518" MODIFIED="1406227437524" TEXT="Next she sets outhorizontaldist based on startrack, startbay, and endbay"/>
<node CREATED="1406227533817" ID="ID_1342107807" MODIFIED="1406227595488" TEXT="If startrack = endrack crossracktime = 0 otherwise she calculates it based on outputside, startrack, startbay, endbay, and endrack"/>
<node CREATED="1406227938673" ID="ID_1011458076" MODIFIED="1406227971175" TEXT="Once again if startrack = endrack inhorizontaldist = 0 otherwise it is set based on endrack, outputside, and endbay"/>
<node CREATED="1406228057917" ID="ID_1080214934" MODIFIED="1406228090754" TEXT="Next, if endlocation = startlocation verticaltimeup = 0 otherwise it is set based on endrack, endbay, and endlevel"/>
<node CREATED="1406228486661" ID="ID_1369302520" MODIFIED="1406228697847" TEXT="She then stores pickproducttime, verticaltimedown, verticaltimeup, Out Horiz Time, Cross Rack Time, In Horiz Time, Output Side, and Pick Time (s) in cells next to the one for the current order"/>
<node CREATED="1406228714964" ID="ID_1683687116" MODIFIED="1406228784419" TEXT="She then resets startlocation, startrack, startbay, and startlevel to be the current order so it&apos;ll be ready for the next order, however, this time, startbay is simply converted to integer, just like endbay at the beginning of the loop."/>
<node CREATED="1406228809360" ID="ID_1784179852" MODIFIED="1406228890200" TEXT="Finally, she sums all of these and puts it in the cell for Total Cooler Pick Time"/>
</node>
<node CREATED="1406228953421" ID="ID_607888332" MODIFIED="1406228960953" TEXT="Ambient Distance Calculator">
<node CREATED="1406220855197" ID="ID_1684573060" MODIFIED="1406229008988" TEXT="She sets all of her input constants">
<node CREATED="1406220965503" ID="ID_1086158944" MODIFIED="1406220982292" TEXT="We will do this with a &quot;Variable &quot; object filled from the database"/>
</node>
<node CREATED="1406221112004" ID="ID_722336667" MODIFIED="1406221220022" TEXT="She sets startlocation as the first location stored above"/>
<node CREATED="1406220984407" ID="ID_635521971" MODIFIED="1406221141875" TEXT="She sets starttrack as Mid(Location, 5, 2)"/>
<node CREATED="1406221082228" ID="ID_1892709471" MODIFIED="1406221107577" TEXT="She sets startbay as Mid(Location, 9, 2)"/>
<node CREATED="1406221147805" ID="ID_340271240" MODIFIED="1406221166395" TEXT="She sets startlevel as Mid(Location, 12, 1)"/>
<node CREATED="1406221229448" ID="ID_124664483" MODIFIED="1406221259399" TEXT="She sets pickproducttime as the first picktime stored above"/>
<node CREATED="1406229207575" ID="ID_816653380" MODIFIED="1406229215235" TEXT="startbay is converted to an integer"/>
<node CREATED="1406221526779" ID="ID_1390484308" MODIFIED="1406221546762" TEXT="She sets the starthorizontaldist based on startrack and startbay"/>
<node CREATED="1406221687314" ID="ID_1712773376" MODIFIED="1406221733904" TEXT="She calculates Input Horiz by taking the starthorizontaldist and adding in outinrack and dividing by forkliftspeed, outinrack and forkliftspeed both come from variables"/>
<node CREATED="1406221749100" ID="ID_673303967" MODIFIED="1406221776202" TEXT="She calculates inhorizontaldist based on startrack and startbay"/>
<node CREATED="1406221777605" ID="ID_442863320" MODIFIED="1406221842404" TEXT="She calculates verticaltimeup based on startrack, startbay and startlevel"/>
<node CREATED="1406221879161" ID="ID_385615827" MODIFIED="1406221914350" TEXT="She sets &quot;Input Down Rack&quot; by taking inhorizontaldist and dividing by forkliftspeed"/>
<node CREATED="1406221938267" ID="ID_1108815491" MODIFIED="1406221997409" TEXT="She sets a cell called &quot;Input Vertical&quot; = verticaltimeup"/>
<node CREATED="1406221964378" ID="ID_357434492" MODIFIED="1406221980353" TEXT="She sets a cell called &quot;Pick Product Time&quot; = pickproducttime"/>
<node CREATED="1406222018389" ID="ID_778711279" MODIFIED="1406226763731" TEXT="She sets a cell called &quot;Pick Time (s)&quot; = (starthorizontaldist + outinrack + inhorizontaldist) / forkliftspeed + verticaltimeup + pickproducttime"/>
<node CREATED="1406226792480" ID="ID_1450138757" MODIFIED="1406226973938" TEXT="She moves down one cell on the spreadsheet"/>
<node CREATED="1406226976455" ID="ID_116276900" MODIFIED="1406226998764" TEXT="She sets endlocation to the Location stored here, startlocation is still set to the one above it."/>
<node CREATED="1406227061290" ID="ID_984719761" MODIFIED="1406229510501" TEXT="She sets outputside to &quot;A&quot;"/>
<node CREATED="1406227071282" ID="ID_1906578636" MODIFIED="1406227076687" TEXT="Then she starts the loop"/>
<node CREATED="1406227090058" ID="ID_767036160" MODIFIED="1406227127617" TEXT="She sets endrack, endbay, and endlevel just like she did startrack, startbay, and startlevel above, the &quot;starts&quot; are still set."/>
<node CREATED="1406227171966" ID="ID_868922970" MODIFIED="1406229577273" TEXT="endbay also just gets converted to an integer like startbay"/>
<node CREATED="1406227216472" ID="ID_818297032" MODIFIED="1406227273933" TEXT="If the startlocation is the same as the endlocation, verticaltimedown = 0 otherwise, it is calculated based on startrack, startbay, and startlevel."/>
<node CREATED="1406227292386" ID="ID_577263719" MODIFIED="1406227329207" TEXT="Now she &quot;flips&quot; outputside to the opposite of what it is now, either &quot;A&quot; or &quot;B&quot;."/>
<node CREATED="1406227415975" ID="ID_986582949" MODIFIED="1406227437524" TEXT="Next she sets outhorizontaldist based on startrack, startbay, and endbay"/>
<node CREATED="1406227533817" ID="ID_1733662460" MODIFIED="1406227595488" TEXT="If startrack = endrack crossracktime = 0 otherwise she calculates it based on outputside, startrack, startbay, endbay, and endrack"/>
<node CREATED="1406227938673" ID="ID_858491456" MODIFIED="1406227971175" TEXT="Once again if startrack = endrack inhorizontaldist = 0 otherwise it is set based on endrack, outputside, and endbay"/>
<node CREATED="1406228057917" ID="ID_1136389652" MODIFIED="1406228090754" TEXT="Next, if endlocation = startlocation verticaltimeup = 0 otherwise it is set based on endrack, endbay, and endlevel"/>
<node CREATED="1406228486661" ID="ID_1288540370" MODIFIED="1406228697847" TEXT="She then stores pickproducttime, verticaltimedown, verticaltimeup, Out Horiz Time, Cross Rack Time, In Horiz Time, Output Side, and Pick Time (s) in cells next to the one for the current order"/>
<node CREATED="1406228714964" ID="ID_1057422214" MODIFIED="1406228784419" TEXT="She then resets startlocation, startrack, startbay, and startlevel to be the current order so it&apos;ll be ready for the next order, however, this time, startbay is simply converted to integer, just like endbay at the beginning of the loop."/>
<node CREATED="1406228809360" ID="ID_1201156022" MODIFIED="1406228890200" TEXT="Finally, she sums all of these and puts it in the cell for Total Cooler Pick Time"/>
</node>
<node CREATED="1406308554170" ID="ID_1344205495" MODIFIED="1406308568176" TEXT="Freezer Distance Calculator">
<node CREATED="1406220855197" ID="ID_86773230" MODIFIED="1406229008988" TEXT="She sets all of her input constants">
<node CREATED="1406220965503" ID="ID_1669997923" MODIFIED="1406220982292" TEXT="We will do this with a &quot;Variable &quot; object filled from the database"/>
</node>
<node CREATED="1406221112004" ID="ID_645902734" MODIFIED="1406221220022" TEXT="She sets startlocation as the first location stored above"/>
<node CREATED="1406220984407" ID="ID_507995076" MODIFIED="1406221141875" TEXT="She sets starttrack as Mid(Location, 5, 2)"/>
<node CREATED="1406221082228" ID="ID_692448408" MODIFIED="1406221107577" TEXT="She sets startbay as Mid(Location, 9, 2)"/>
<node CREATED="1406221147805" ID="ID_358039673" MODIFIED="1406221166395" TEXT="She sets startlevel as Mid(Location, 12, 1)"/>
<node CREATED="1406221229448" ID="ID_676849281" MODIFIED="1406221259399" TEXT="She sets pickproducttime as the first picktime stored above"/>
<node CREATED="1406229207575" ID="ID_451394101" MODIFIED="1406229215235" TEXT="startbay is converted to an integer"/>
<node CREATED="1406221526779" ID="ID_347936088" MODIFIED="1406221546762" TEXT="She sets the starthorizontaldist based on startrack and startbay"/>
<node CREATED="1406221687314" ID="ID_1698067156" MODIFIED="1406221733904" TEXT="She calculates Input Horiz by taking the starthorizontaldist and adding in outinrack and dividing by forkliftspeed, outinrack and forkliftspeed both come from variables"/>
<node CREATED="1406221749100" ID="ID_191344516" MODIFIED="1406221776202" TEXT="She calculates inhorizontaldist based on startrack and startbay"/>
<node CREATED="1406221777605" ID="ID_467895097" MODIFIED="1406221842404" TEXT="She calculates verticaltimeup based on startrack, startbay and startlevel"/>
<node CREATED="1406221879161" ID="ID_893319928" MODIFIED="1406221914350" TEXT="She sets &quot;Input Down Rack&quot; by taking inhorizontaldist and dividing by forkliftspeed"/>
<node CREATED="1406221938267" ID="ID_128994723" MODIFIED="1406221997409" TEXT="She sets a cell called &quot;Input Vertical&quot; = verticaltimeup"/>
<node CREATED="1406221964378" ID="ID_864732796" MODIFIED="1406221980353" TEXT="She sets a cell called &quot;Pick Product Time&quot; = pickproducttime"/>
<node CREATED="1406222018389" ID="ID_663198080" MODIFIED="1406226763731" TEXT="She sets a cell called &quot;Pick Time (s)&quot; = (starthorizontaldist + outinrack + inhorizontaldist) / forkliftspeed + verticaltimeup + pickproducttime"/>
<node CREATED="1406226792480" ID="ID_1685131080" MODIFIED="1406226973938" TEXT="She moves down one cell on the spreadsheet"/>
<node CREATED="1406226976455" ID="ID_67052674" MODIFIED="1406226998764" TEXT="She sets endlocation to the Location stored here, startlocation is still set to the one above it."/>
<node CREATED="1406227061290" ID="ID_818132651" MODIFIED="1406229510501" TEXT="She sets outputside to &quot;A&quot;"/>
<node CREATED="1406227071282" ID="ID_1580181726" MODIFIED="1406227076687" TEXT="Then she starts the loop"/>
<node CREATED="1406227090058" ID="ID_1611243336" MODIFIED="1406227127617" TEXT="She sets endrack, endbay, and endlevel just like she did startrack, startbay, and startlevel above, the &quot;starts&quot; are still set."/>
<node CREATED="1406227171966" ID="ID_1405380181" MODIFIED="1406229577273" TEXT="endbay also just gets converted to an integer like startbay"/>
<node CREATED="1406227216472" ID="ID_509128765" MODIFIED="1406227273933" TEXT="If the startlocation is the same as the endlocation, verticaltimedown = 0 otherwise, it is calculated based on startrack, startbay, and startlevel."/>
<node CREATED="1406227292386" ID="ID_1087080086" MODIFIED="1406227329207" TEXT="Now she &quot;flips&quot; outputside to the opposite of what it is now, either &quot;A&quot; or &quot;B&quot;."/>
<node CREATED="1406227415975" ID="ID_1176474888" MODIFIED="1406227437524" TEXT="Next she sets outhorizontaldist based on startrack, startbay, and endbay"/>
<node CREATED="1406227533817" ID="ID_247819127" MODIFIED="1406227595488" TEXT="If startrack = endrack crossracktime = 0 otherwise she calculates it based on outputside, startrack, startbay, endbay, and endrack"/>
<node CREATED="1406227938673" ID="ID_569545106" MODIFIED="1406227971175" TEXT="Once again if startrack = endrack inhorizontaldist = 0 otherwise it is set based on endrack, outputside, and endbay"/>
<node CREATED="1406228057917" ID="ID_605144749" MODIFIED="1406228090754" TEXT="Next, if endlocation = startlocation verticaltimeup = 0 otherwise it is set based on endrack, endbay, and endlevel"/>
<node CREATED="1406228486661" ID="ID_838018164" MODIFIED="1406228697847" TEXT="She then stores pickproducttime, verticaltimedown, verticaltimeup, Out Horiz Time, Cross Rack Time, In Horiz Time, Output Side, and Pick Time (s) in cells next to the one for the current order"/>
<node CREATED="1406228714964" ID="ID_1486813918" MODIFIED="1406228784419" TEXT="She then resets startlocation, startrack, startbay, and startlevel to be the current order so it&apos;ll be ready for the next order, however, this time, startbay is simply converted to integer, just like endbay at the beginning of the loop."/>
<node CREATED="1406228809360" ID="ID_449669432" MODIFIED="1406228890200" TEXT="Finally, she sums all of these and puts it in the cell for Total Cooler Pick Time"/>
</node>
</node>
<node CREATED="1406220721719" ID="ID_528413914" MODIFIED="1406220748853" TEXT="She stores the result of these Calculator subroutines in a cell for each group"/>
</node>
</node>
</map>
