<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1404932908214" ID="ID_1546895440" MODIFIED="1405018344119" TEXT="VB Programming">
<node CREATED="1404932922844" FOLDED="true" ID="ID_1006168878" MODIFIED="1405018344089" POSITION="right" TEXT="Database">
<node CREATED="1404933568595" FOLDED="true" ID="ID_1232876330" MODIFIED="1405018344089" TEXT="SQL">
<node CREATED="1404932961109" ID="ID_1619734490" MODIFIED="1404933003095" TEXT="Imports System.Data.SqlClient"/>
<node CREATED="1404932940930" FOLDED="true" ID="ID_1338060259" MODIFIED="1405018344081" TEXT="Create a Dataset">
<node CREATED="1404933010831" ID="ID_1741029284" MODIFIED="1404933111323" TEXT="Declare Variable &quot;As New&quot;"/>
<node CREATED="1404933119403" FOLDED="true" ID="ID_578362614" MODIFIED="1405018344080" TEXT="Using Data Adapters, fill the tables">
<node CREATED="1404933183790" ID="ID_1255571701" MODIFIED="1404933203226" TEXT="daVariables.Fill(myDataset, &quot;Variables&quot;)"/>
</node>
</node>
<node CREATED="1404933211886" FOLDED="true" ID="ID_1033678718" MODIFIED="1405018344081" TEXT="Create a Data Adapter">
<node CREATED="1404933255424" ID="ID_755149390" MODIFIED="1404933263008" TEXT="Declare a Variable"/>
<node CREATED="1404933269632" ID="ID_951819588" MODIFIED="1404933323562" TEXT="Set = New SqlClient.DataAdapter(Query as String, Connection as SqlConnection)"/>
<node CREATED="1404933352452" ID="ID_976440502" MODIFIED="1404933397157" TEXT="Call the .Fill Method passing in the name of the Dataset, and a String containing the Table Name to use"/>
<node CREATED="1404933519778" ID="ID_344621049" MODIFIED="1404933535714" TEXT="To Update, create an Update command"/>
<node CREATED="1404933542235" ID="ID_1926651234" MODIFIED="1404933552506" TEXT="Call .Dispose method when finished"/>
</node>
<node CREATED="1404933919063" FOLDED="true" ID="ID_1118057011" MODIFIED="1405018344082" TEXT="Update a Single Table">
<node CREATED="1404933603964" FOLDED="true" ID="ID_1114437318" MODIFIED="1405018344081" TEXT="Create a Command">
<node CREATED="1404933255424" ID="ID_432512204" MODIFIED="1404933263008" TEXT="Declare a Variable"/>
<node CREATED="1404933857627" ID="ID_938109653" MODIFIED="1404934032139" TEXT="Set = New SQLClient.Command"/>
</node>
<node CREATED="1404934115280" ID="ID_1322158690" MODIFIED="1404934141455" TEXT="Modify what needs to be modified in the table"/>
<node CREATED="1404934154032" ID="ID_22632751" MODIFIED="1404934174926" TEXT="Call the .Update method of the DataAdapter"/>
</node>
<node CREATED="1404933947353" FOLDED="true" ID="ID_1102413344" MODIFIED="1405018344088" TEXT="Update a Joined Table">
<node CREATED="1404933603964" FOLDED="true" ID="ID_1763946085" MODIFIED="1405018344088" TEXT="Create a Command">
<node CREATED="1404933255424" ID="ID_616070569" MODIFIED="1404933263008" TEXT="Declare a Variable"/>
<node CREATED="1404933857627" FOLDED="true" ID="ID_166648941" MODIFIED="1405018344083" TEXT="Set = New SQLClient.Command">
<node COLOR="#0033ff" CREATED="1404934225924" ID="ID_1951939071" MODIFIED="1404934362217" TEXT="cmdUpdate = New SqlClient.SqlCommand(&quot;UPDATE Productivity SET Logged = @Bool WHERE myStamp = @Stamp&quot;, SqlCn)"/>
<node CREATED="1404934381471" ID="ID_1874598133" MODIFIED="1404934396104" TEXT="cmdUpdate is the Variable"/>
<node CREATED="1404934399858" FOLDED="true" ID="ID_1379551304" MODIFIED="1405018344082" TEXT="The string in () is the actual command...format is as follows:">
<node CREATED="1404934430180" ID="ID_369005685" MODIFIED="1404934444450" TEXT="UPDATE = the command to perform"/>
<node CREATED="1404934447721" ID="ID_1048669699" MODIFIED="1404934459023" TEXT="Productivity is the Table Name in the database"/>
<node CREATED="1404934467901" ID="ID_1755497167" MODIFIED="1404934500920" TEXT="SET commands the query to make a field = a Parameter"/>
<node CREATED="1404934516110" ID="ID_1789326102" MODIFIED="1404934529460" TEXT="Logged = the field name in the table in the database"/>
<node CREATED="1404934532991" ID="ID_1434008464" MODIFIED="1404934556230" TEXT="@Bool = the Parameter name that we will define below"/>
<node CREATED="1404934559976" ID="ID_1103400646" MODIFIED="1404934920802" TEXT="WHERE = the conditional statement"/>
<node CREATED="1404934925759" ID="ID_1843502317" MODIFIED="1404934944468" TEXT="myStamp = the field name in the table in the database"/>
<node CREATED="1404934952142" ID="ID_1762280935" MODIFIED="1404934980436" TEXT="@Stamp = another Parameter name that we will define below"/>
<node CREATED="1404934987096" ID="ID_50156774" MODIFIED="1404935012741" TEXT="SqlCn = the SQLConnection object for connecting to the database"/>
</node>
</node>
<node CREATED="1404935034514" FOLDED="true" ID="ID_621551771" MODIFIED="1405018344084" TEXT="Add Parameters">
<node CREATED="1404935069601" FOLDED="true" ID="ID_56714502" MODIFIED="1405018344083" TEXT="cmdUpdate.Parameters.Add((&quot;@Stamp&quot;), SqlDbType.Timestamp)">
<node CREATED="1404935097082" ID="ID_864914987" MODIFIED="1404935110457" TEXT="@Stamp = Parameter name used above"/>
<node CREATED="1404935116251" ID="ID_767092965" MODIFIED="1404935132393" TEXT="SqlDbType.Timestame = the datatype for the parameter"/>
</node>
<node CREATED="1404935139297" FOLDED="true" ID="ID_169963824" MODIFIED="1405018344083" TEXT="cmdUpdate.Parameters.Add((&quot;@Bool&quot;), SqlDbType.Bit)">
<node CREATED="1404935161429" ID="ID_1030227679" MODIFIED="1404935177764" TEXT="@Bool = Parameter name used above"/>
<node CREATED="1404935181637" ID="ID_1244088829" MODIFIED="1404935194339" TEXT="SqlDbType.Bit = the datatype for the parameter"/>
</node>
</node>
<node CREATED="1404935204454" FOLDED="true" ID="ID_1906365880" MODIFIED="1405018344085" TEXT="Set Source Version">
<node CREATED="1404935226287" FOLDED="true" ID="ID_1622298763" MODIFIED="1405018344084" TEXT="cmdUpdate.Parameters(&quot;@Stamp&quot;).SourceVersion = DataRowVersion.Current">
<node CREATED="1404935274417" ID="ID_780217698" MODIFIED="1404935293863" TEXT="Tells the program to use the current version of the datarow"/>
<node CREATED="1404935334611" ID="ID_574965824" MODIFIED="1404935348857" TEXT="Other values are &quot;Default&quot;, &quot;Original&quot;, and &quot;Proposed&quot;"/>
</node>
<node CREATED="1404935249391" FOLDED="true" ID="ID_1075562823" MODIFIED="1405018344084" TEXT=" cmdUpdate.Parameters(&quot;@Bool&quot;).SourceVersion = DataRowVersion.Current">
<node CREATED="1404935274417" ID="ID_1071185987" MODIFIED="1404935293863" TEXT="Tells the program to use the current version of the datarow"/>
<node CREATED="1404935334611" ID="ID_360278611" MODIFIED="1404935348857" TEXT="Other values are &quot;Default&quot;, &quot;Original&quot;, and &quot;Proposed&quot;"/>
</node>
</node>
<node CREATED="1404935376092" FOLDED="true" ID="ID_1191084840" MODIFIED="1405018344086" TEXT="Set Source Column">
<node CREATED="1404935393684" FOLDED="true" ID="ID_1340231725" MODIFIED="1405018344085" TEXT="cmdUpdate.Parameters(&quot;@Stamp&quot;).SourceColumn = &quot;myStamp&quot;">
<node CREATED="1404935415718" ID="ID_291064777" MODIFIED="1404935427596" TEXT="myStamp is the Field Name in the database table"/>
</node>
<node CREATED="1404935431812" FOLDED="true" ID="ID_44113553" MODIFIED="1405018344085" TEXT="cmdUpdate.Parameters(&quot;@Bool&quot;).SourceColumn = &quot;Logged&quot;">
<node CREATED="1404935449248" ID="ID_683619777" MODIFIED="1404935470246" TEXT="Logged is the Field Name in the database table"/>
</node>
</node>
<node CREATED="1404935492744" FOLDED="true" ID="ID_702765759" MODIFIED="1405018344086" TEXT="Set the DataAdapters Command property = the variable declared and defined above">
<node CREATED="1404935524385" ID="ID_5087694" MODIFIED="1404935536328" TEXT="daRecords.UpdateCommand = cmdUpdate"/>
</node>
<node CREATED="1404935591940" FOLDED="true" ID="ID_794588357" MODIFIED="1405018344086" TEXT="Call the .Fill method of the Data Adapter">
<node CREATED="1404935614909" FOLDED="true" ID="ID_1939173416" MODIFIED="1405018344086" TEXT="daRecords.Fill(myDataset, &quot;Records&quot;)">
<node CREATED="1404935621565" ID="ID_330322272" MODIFIED="1404935639162" TEXT="myDataset is the dataset used to store the original records"/>
<node CREATED="1404935642925" ID="ID_341586141" MODIFIED="1404935658292" TEXT="&quot;Records&quot; is the name of the table in the dataset where the records were stored"/>
</node>
</node>
<node CREATED="1404935680649" FOLDED="true" ID="ID_1230318296" MODIFIED="1405018344087" TEXT="Call the .Update method of the Data Adapter">
<node CREATED="1404935692792" FOLDED="true" ID="ID_1998241395" MODIFIED="1405018344087" TEXT="daRecords.Update(myDataset.Tables(&quot;Records&quot;))">
<node CREATED="1404935699639" ID="ID_369599070" MODIFIED="1404935718534" TEXT="We passed in the table in the dataset that contains the new data"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1405000286768" FOLDED="true" ID="ID_794386615" MODIFIED="1405018344106" POSITION="right" TEXT="Arrays">
<node CREATED="1405000292843" FOLDED="true" ID="ID_673982689" MODIFIED="1405018344091" TEXT="        Dim myArray(0) As String&#xa;        Dim x As Integer&#xa;         For x = 0 To 10&#xa;             ReDim Preserve myArray(x)&#xa;             myArray(x) = &quot;x = &quot; &amp; x&#xa;         Next&#xa;         For x = 0 To UBound(myArray)&#xa;             Debug.Print(myArray(x))&#xa;         Next ">
<node CREATED="1405000384710" FOLDED="true" ID="ID_1206333642" MODIFIED="1405018344089" TEXT="Dim myArray(0) As String">
<node CREATED="1405000410679" ID="ID_1218585032" MODIFIED="1405000430598" TEXT="Creates a single dimension array that contains a string"/>
</node>
<node CREATED="1405000400487" FOLDED="true" ID="ID_1327420778" MODIFIED="1405018344090" TEXT="ReDim Preserve myArray(x)">
<node CREATED="1405000459689" ID="ID_1390259210" MODIFIED="1405000478904" TEXT="Creates a new element each time this runs and adds that element to the array"/>
<node CREATED="1405000529219" ID="ID_1293770630" MODIFIED="1405000540546" TEXT="x = the index of the array where this element lives"/>
<node CREATED="1405000561788" ID="ID_615037220" MODIFIED="1405000580251" TEXT="The index is used to discern this element from all others"/>
</node>
<node CREATED="1405000490442" FOLDED="true" ID="ID_658878079" MODIFIED="1405018344090" TEXT="myArray(x) = &quot;x = &quot; &amp; x">
<node CREATED="1405000510923" ID="ID_71126098" MODIFIED="1405000521089" TEXT="Assigns a value to the element in the array"/>
</node>
<node CREATED="1405000616956" FOLDED="true" ID="ID_1324036374" MODIFIED="1405018344090" TEXT=" For x = 0 To UBound(myArray)">
<node CREATED="1405000620103" ID="ID_587890861" MODIFIED="1405000631021" TEXT="This iterates through the array from the beginning to the end"/>
<node CREATED="1405000633159" ID="ID_891257601" MODIFIED="1405000645605" TEXT="Arrays are 0 based unless declared otherwise"/>
</node>
</node>
<node CREATED="1405000747337" FOLDED="true" ID="ID_165943976" MODIFIED="1405018344102" TEXT="        Dim myArray(10) As String&#xa;         For x = 0 To UBound(myArray)&#xa;             myArray(x) = &quot;x = &quot; &amp; x&#xa;             Debug.Print(myArray(x))&#xa;         Next ">
<node CREATED="1405000783716" ID="ID_1847085128" MODIFIED="1405000834164" TEXT="Results in the same output as the example above, but the UBound is set at declaration"/>
<node COLOR="#ff0000" CREATED="1405000835150" ID="ID_820508472" MODIFIED="1405000860566" TEXT="NOTE: The UBound can be changed with a Redim Preserve just like the one above!"/>
</node>
</node>
<node CREATED="1405009265289" FOLDED="true" ID="ID_1763064371" MODIFIED="1405083128346" POSITION="right" TEXT="Excel">
<node CREATED="1405009360773" ID="ID_1111280562" MODIFIED="1405009467486" TEXT=" Imports Microsoft.VisualBasic&#xa; Imports Microsoft.Office&#xa; Imports Excel = Microsoft.Office.Interop.Excel&#xa; Imports System.IO &#xa;    Private myFileName As String&#xa;    Private xlApp As Excel.Application = New Excel.Application&#xa;    Private xlWorkbook As Excel.Workbook&#xa;    Private xlWorkbooks As Excel.Workbooks&#xa;    Private xlWorksheets As Excel.Worksheets&#xa;    Private xlWorksheet As Excel.Worksheet = Nothing&#xa;"/>
<node CREATED="1405009271600" FOLDED="true" ID="ID_1040637293" MODIFIED="1405019716813" TEXT="Open an Existing File">
<node CREATED="1405017559323" FOLDED="true" ID="ID_1565378438" MODIFIED="1405018344106" TEXT="xlApp.DisplayAlerts = False">
<node CREATED="1405017562166" ID="ID_247233897" MODIFIED="1405017570409" TEXT="Turns off the display for Excel"/>
</node>
<node CREATED="1405017583040" FOLDED="true" ID="ID_1045673453" MODIFIED="1405018344106" TEXT="xlWorkbooks = xlApp.Workbooks">
<node CREATED="1405017584376" ID="ID_1146158489" MODIFIED="1405017608170" TEXT="Creates the Workbooks collection"/>
</node>
<node CREATED="1405017621913" FOLDED="true" ID="ID_1332444171" MODIFIED="1405018344107" TEXT="xlWorkbook = xlWorkbooks.Add()">
<node CREATED="1405017625610" ID="ID_1730790284" MODIFIED="1405017635519" TEXT="Creates the Workbook by adding it to the collection"/>
</node>
<node CREATED="1405017647290" FOLDED="true" ID="ID_468773118" MODIFIED="1405018344107" TEXT="xlWorkbook = xlWorkbooks.Open(&quot;Some string that is the filepath and filename&quot;)">
<node CREATED="1405017667474" ID="ID_25998757" MODIFIED="1405017675483" TEXT="Opens the existing workbook"/>
</node>
<node CREATED="1405017872354" FOLDED="true" ID="ID_17553608" MODIFIED="1405018344107" TEXT="With xlWorkbook.Sheets(&quot;export&quot;)">
<node CREATED="1405017875466" ID="ID_1970467855" MODIFIED="1405017884177" TEXT="Access the sheet &quot;export&quot;"/>
</node>
<node CREATED="1405018220549" FOLDED="true" ID="ID_507805396" MODIFIED="1405018344107" TEXT="xlWorkbook.SaveAs(NewFileName, 51)">
<node CREATED="1405018225591" ID="ID_1999839274" MODIFIED="1405018233589" TEXT="Save the file &quot;as&quot;"/>
</node>
<node CREATED="1405018245183" FOLDED="true" ID="ID_810734168" MODIFIED="1405018344108" TEXT="xlWorkbook.Close()">
<node CREATED="1405018247926" ID="ID_145049017" MODIFIED="1405018252068" TEXT="Close the workbook"/>
</node>
<node CREATED="1405018260336" FOLDED="true" ID="ID_1228763152" MODIFIED="1405018344108" TEXT="xlApp.UserControl = True">
<node CREATED="1405018262632" ID="ID_1983136622" MODIFIED="1405018269127" TEXT="Turn control back over to the user"/>
</node>
<node CREATED="1405018279544" FOLDED="true" ID="ID_1382805204" MODIFIED="1405018344109" TEXT="xlApp.Quit()">
<node CREATED="1405018282665" ID="ID_1480169905" MODIFIED="1405018285247" TEXT="Quit Excel"/>
</node>
</node>
<node CREATED="1405009325707" FOLDED="true" ID="ID_1036679795" MODIFIED="1405018509718" TEXT="Create a New File">
<node CREATED="1405009557482" FOLDED="true" ID="ID_1309231138" MODIFIED="1405018344110" TEXT="xlApp.SheetsInNewWorkbook = 1">
<node CREATED="1405009563339" ID="ID_52218315" MODIFIED="1405009585139" TEXT="Indicates to the program that the newly created spreadsheet should have one new sheet in it."/>
</node>
<node CREATED="1405009606937" FOLDED="true" ID="ID_788049131" MODIFIED="1405018344110" TEXT="xlWorkbook = Me.xlApp.Workbooks.Add()">
<node CREATED="1405009610390" ID="ID_1588485115" MODIFIED="1405009624780" TEXT="Creates a new workbook in memory"/>
<node COLOR="#ff0000" CREATED="1405009634110" ID="ID_588444701" MODIFIED="1405009660093" TEXT="NOTE: Workbook was already declared as &quot;NEW&quot; above"/>
</node>
<node CREATED="1405009803412" FOLDED="true" ID="ID_1326787138" MODIFIED="1405018344110" TEXT="xlWorksheet = Me.xlWorkbook.Worksheets.Add()">
<node CREATED="1405009806628" ID="ID_649548644" MODIFIED="1405009823347" TEXT="Adds the worksheet to the built in worksheets collection"/>
</node>
<node CREATED="1405009835805" FOLDED="true" ID="ID_535605716" MODIFIED="1405018344111" TEXT="xlWorksheet.Name = &quot;SortationLog&quot;">
<node CREATED="1405009838022" ID="ID_1316583867" MODIFIED="1405009842636" TEXT="Sets the name of the worksheet"/>
</node>
<node CREATED="1405009928321" FOLDED="true" ID="ID_231829809" MODIFIED="1405018505046" TEXT="With xlWorkbook&#xa;             With Me.xlWorkbook.Worksheets(&quot;SortationLog&quot;)">
<node CREATED="1405009978843" ID="ID_957047275" MODIFIED="1405009996881" TEXT="Points to the sheet we named above"/>
</node>
<node CREATED="1405010017100" FOLDED="true" ID="ID_1149757219" MODIFIED="1405018344114" TEXT="xlWorkbook.SaveAs(&quot;Some string that is a filepath/filename&quot;)">
<node CREATED="1405010043901" ID="ID_604622407" MODIFIED="1405010061148" TEXT="Saves the file as (we don&apos;t want &quot;Book1&quot;)"/>
</node>
<node CREATED="1405010072750" FOLDED="true" ID="ID_18228893" MODIFIED="1405018344114" TEXT="xlWorkbook.Close()">
<node CREATED="1405010075485" ID="ID_1342080989" MODIFIED="1405010079997" TEXT="Closes the workbook"/>
</node>
<node CREATED="1405010091935" FOLDED="true" ID="ID_1420000590" MODIFIED="1405018344115" TEXT="xlApp.UserControl = True">
<node CREATED="1405010094455" ID="ID_358468313" MODIFIED="1405010100316" TEXT="Turns control back over to the user"/>
</node>
<node CREATED="1405010109408" FOLDED="true" ID="ID_387810739" MODIFIED="1405018344115" TEXT="xlApp.Quit()">
<node CREATED="1405010112054" ID="ID_1534787393" MODIFIED="1405010119348" TEXT="Quits the application"/>
</node>
</node>
<node CREATED="1405018515449" FOLDED="true" ID="ID_1593490867" MODIFIED="1405083122268" TEXT="Worksheets">
<node CREATED="1405019518418" FOLDED="true" ID="ID_412846728" MODIFIED="1405019662042" TEXT="Add a new worksheet">
<node CREATED="1405019542986" ID="ID_1392853862" MODIFIED="1405019610260" TEXT="Refer to the workbook">
<node CREATED="1405019596262" ID="ID_1671630048" MODIFIED="1405019601245" TEXT="With xlWorkBook"/>
</node>
<node CREATED="1405019578478" ID="ID_629362389" MODIFIED="1405019589715" TEXT="Add the worksheet to the worksheets collection">
<node CREATED="1405019568207" ID="ID_769578286" MODIFIED="1405019577102" TEXT=".Worksheets.Add()"/>
</node>
<node CREATED="1405019623100" ID="ID_1301875520" MODIFIED="1405019656121" TEXT="When you add it, it will be the ActiveSheet so it&apos;s easy to move it to the last worksheet in the workbook">
<node CREATED="1405019641003" ID="ID_111320666" MODIFIED="1405019642823" TEXT=".ActiveSheet.Move(After:=.Worksheets(.Sheets.Count))"/>
</node>
</node>
<node CREATED="1405018527114" FOLDED="true" ID="ID_547901887" MODIFIED="1405019701496" TEXT="Refer to a worksheet by name">
<node CREATED="1405018565290" ID="ID_1083629917" MODIFIED="1405019684383" TEXT="With xlWorkbook.Sheets(&quot;export&quot;)">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1083629917" ENDARROW="Default" ENDINCLINATION="432;0;" ID="Arrow_ID_1384511904" SOURCE="ID_1434624804" STARTARROW="None" STARTINCLINATION="432;0;"/>
<node CREATED="1405018574683" ID="ID_1144227762" MODIFIED="1405018583417" TEXT="This uses a string literal to refer to the name"/>
</node>
<node CREATED="1405018596253" ID="ID_1320854733" MODIFIED="1405018599953" TEXT="With .Worksheets(theEmpName)">
<node CREATED="1405018600468" ID="ID_1426029124" MODIFIED="1405018609755" TEXT="Can also use a variable that is a string"/>
</node>
<node CREATED="1405018639734" ID="ID_1058995342" MODIFIED="1405018641916" TEXT="For Each loopSheet In .Worksheets">
<node CREATED="1405018643445" ID="ID_1127462762" MODIFIED="1405018679516" TEXT="Can also use a variable (loopSheet) that is set to Excel.Worksheet to loop through each sheet in the collection Worksheets"/>
</node>
</node>
<node CREATED="1405019738205" FOLDED="true" ID="ID_98498387" MODIFIED="1405019849059" TEXT="Change the name of a worksheet">
<node CREATED="1405019776794" ID="ID_1725658454" MODIFIED="1405019778302" TEXT="For Each SheetLoop In .Worksheets">
<node CREATED="1405019759531" ID="ID_1280437865" MODIFIED="1405019775521" TEXT="Using a variable of type Excel.Worksheet"/>
</node>
<node CREATED="1405019811723" ID="ID_1118557388" MODIFIED="1405019814289" TEXT="If SheetLoop.Name = &quot;Sheet1&quot; Then">
<node CREATED="1405019790513" ID="ID_398151344" MODIFIED="1405019797985" TEXT="See if this is the one you want to change"/>
</node>
<node CREATED="1405019840932" ID="ID_147328701" MODIFIED="1405019842122" TEXT="SheetLoop.Name = &quot;DTotals&quot;">
<node CREATED="1405019843139" ID="ID_578044569" MODIFIED="1405019846153" TEXT="Give it a new name"/>
</node>
</node>
<node CREATED="1405020967012" ID="ID_299861333" MODIFIED="1405020980385" TEXT="FIND something on a spreadsheet">
<node CREATED="1405021008006" ID="ID_440679851" MODIFIED="1405021025411" TEXT="You will need two &quot;Range&quot; variables">
<node CREATED="1405021046759" ID="ID_624017191" MODIFIED="1405021049734" TEXT="myRange = .Worksheets(&quot;OrderInfo&quot;).Range(&quot;A1&quot;)">
<node CREATED="1405021050288" ID="ID_1546742161" MODIFIED="1405021066014" TEXT="Set the first one to the top corner of the sheet"/>
</node>
<node CREATED="1405021080953" ID="ID_1001795178" MODIFIED="1405021083046" TEXT="onFind = myRange.Find(PickOrderNumber)">
<node CREATED="1405021087936" ID="ID_1029141283" MODIFIED="1405021113664" TEXT="Set the second one = the .Find method of the first one, and pass it what you want to find"/>
</node>
<node CREATED="1405021129547" ID="ID_1078722126" MODIFIED="1405021131384" TEXT="OrderRowNo = onFind.Row">
<node CREATED="1405021131971" ID="ID_307491661" MODIFIED="1405021142599" TEXT="Using a variable of type &quot;Long&quot; you can get the row number"/>
<node CREATED="1405021189621" ID="ID_1155927274" MODIFIED="1405021203219" TEXT="You could probably use column as well"/>
</node>
<node CREATED="1405021160196" ID="ID_659763864" MODIFIED="1405021162961" TEXT="Country = .Worksheets(&quot;OrderInfo&quot;).cells(OrderRowNo, 16).value">
<node CREATED="1405021163331" ID="ID_479477685" MODIFIED="1405021184426" TEXT="And then use that to refer to an adjacent cell for example"/>
</node>
</node>
</node>
</node>
<node CREATED="1405017695852" FOLDED="true" ID="ID_134476261" MODIFIED="1405018344117" TEXT="Add a style to a workbook">
<node CREATED="1405017787174" FOLDED="true" ID="ID_175381709" MODIFIED="1405018344116" TEXT="Private RedStyle As Excel.Style">
<node CREATED="1405017792806" ID="ID_1343718684" MODIFIED="1405017801606" TEXT="Declares a variable of type Excel.Style"/>
</node>
<node CREATED="1405017706909" FOLDED="true" ID="ID_292632910" MODIFIED="1405018344116" TEXT="RedStyle = xlWorkbook.Styles.Add(&quot;No Scan&quot;)">
<node CREATED="1405017718485" ID="ID_24897734" MODIFIED="1405017763885" TEXT="Creates the style variable by adding it to the collection and giving it a name that will be displayed in the &quot;Styles&quot; section in Excel"/>
</node>
<node CREATED="1405017834033" FOLDED="true" ID="ID_827440301" MODIFIED="1405018344116" TEXT="RedStyle.Interior.Color = System.Drawing.ColorTranslator.ToOle(Color.Red)">
<node CREATED="1405017837249" ID="ID_950815190" MODIFIED="1405017842623" TEXT="Sets the color of the style"/>
</node>
</node>
<node CREATED="1405017906092" FOLDED="true" ID="ID_272599077" MODIFIED="1405083125557" TEXT="Range">
<node CREATED="1405017951957" FOLDED="true" ID="ID_907363470" MODIFIED="1405018344117" TEXT="Remove Duplicates from column A through column O">
<node CREATED="1405017911491" ID="ID_1147585230" MODIFIED="1405017937171" TEXT=".Range(&quot;A1&quot;, &quot;O65536&quot;).RemoveDuplicates(Columns:=5, Header:=Excel.XlYesNoGuess.xlYes)"/>
</node>
<node CREATED="1405019149672" ID="ID_19629596" MODIFIED="1405019420060" TEXT="Select a single cell">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_19629596" ENDARROW="Default" ENDINCLINATION="153;0;" ID="Arrow_ID_288048042" SOURCE="ID_118100628" STARTARROW="None" STARTINCLINATION="153;0;"/>
<node CREATED="1405019156400" ID="ID_1831436403" MODIFIED="1405019158148" TEXT="myRange = .range(&quot;Q1&quot;)"/>
<node CREATED="1405019173447" ID="ID_790730374" MODIFIED="1405019175381" TEXT="myRange.Select()"/>
</node>
<node CREATED="1405019185263" ID="ID_1838153981" MODIFIED="1405019421872" TEXT="Insert a row">
<node CREATED="1405019193632" ID="ID_118100628" MODIFIED="1405019407954" TEXT="Select a single cell as above">
<arrowlink DESTINATION="ID_19629596" ENDARROW="Default" ENDINCLINATION="153;0;" ID="Arrow_ID_288048042" STARTARROW="None" STARTINCLINATION="153;0;"/>
</node>
<node CREATED="1405019214447" ID="ID_1664657574" MODIFIED="1405019215259" TEXT="myRange.EntireColumn.Insert(Shift:=Excel.XlDirection.xlToRight, CopyOrigin:=Excel.XlInsertFormatOrigin.xlFormatFromRightOrBelow)"/>
</node>
<node CREATED="1405019244868" ID="ID_120136614" MODIFIED="1405019429519" TEXT="Select a group of cells">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_120136614" ENDARROW="Default" ENDINCLINATION="206;0;" ID="Arrow_ID_1887769939" SOURCE="ID_1490150700" STARTARROW="None" STARTINCLINATION="206;0;"/>
<node CREATED="1405019264124" ID="ID_1070442024" MODIFIED="1405019266961" TEXT="myRange = .range(&quot;A2:CG&quot; &amp; myRows)"/>
<node CREATED="1405019275755" ID="ID_1920298737" MODIFIED="1405019276713" TEXT="myRange.Select()"/>
</node>
<node CREATED="1405019280930" ID="ID_402788990" MODIFIED="1405019288600" TEXT="Sort the group of cells">
<node CREATED="1405019291928" ID="ID_1490150700" MODIFIED="1405019429519" TEXT="Select a group of cells as above">
<arrowlink DESTINATION="ID_120136614" ENDARROW="Default" ENDINCLINATION="206;0;" ID="Arrow_ID_1887769939" STARTARROW="None" STARTINCLINATION="206;0;"/>
</node>
<node CREATED="1405019446320" ID="ID_751859825" MODIFIED="1405019449220" TEXT="myRange.Sort(Key1:=myRange.Range(&quot;Q1&quot;), Order1:=Excel.XlSortOrder.xlAscending, Orientation:=Excel.XlSortOrientation.xlSortColumns, Key2:=myRange.Range(&quot;A1&quot;), Order2:=Excel.XlSortOrder.xlAscending, Key3:=myRange.Range(&quot;E1&quot;), Order3:=Excel.XlSortOrder.xlAscending)"/>
</node>
<node CREATED="1405017965045" FOLDED="true" ID="ID_301161891" MODIFIED="1405018344118" TEXT="Select a row and include all columns that have data">
<node CREATED="1405018083825" ID="ID_707076492" MODIFIED="1405018086129" TEXT="RowRange = .Range(&quot;A&quot; &amp; x, (.Range(&quot;A&quot; &amp; x).End(Excel.XlDirection.xlToRight)))"/>
<node CREATED="1405018111691" FOLDED="true" ID="ID_98318609" MODIFIED="1405018344117" TEXT="RowRange.Style = OrangeStyle">
<node CREATED="1405018115723" ID="ID_1136461625" MODIFIED="1405018123663" TEXT="Then set the style of that selection"/>
</node>
</node>
<node CREATED="1405018149716" FOLDED="true" ID="ID_427046450" MODIFIED="1405018344118" TEXT="Autofit all cells on the sheet">
<node CREATED="1405018158357" ID="ID_1789589538" MODIFIED="1405018178948" TEXT=".Cells.Select()"/>
<node CREATED="1405018190932" ID="ID_1406752000" MODIFIED="1405018192305" TEXT=".Cells.EntireColumn.AutoFit()"/>
</node>
<node CREATED="1405020090663" ID="ID_1890265274" MODIFIED="1405020102043" TEXT="Create a &quot;Group&quot; of cells">
<node CREATED="1405020125959" ID="ID_510781286" MODIFIED="1405020129453" TEXT="Select the range"/>
<node CREATED="1405020146448" ID="ID_588995364" MODIFIED="1405020148206" TEXT="storeRange.Rows.Group()"/>
</node>
</node>
<node CREATED="1405019948599" FOLDED="true" ID="ID_227903412" MODIFIED="1405020960709" TEXT="Cells">
<node CREATED="1405018923064" FOLDED="true" ID="ID_145442491" MODIFIED="1405019702903" TEXT="Loop through all the cells in a column">
<node CREATED="1405018942551" ID="ID_1180199958" MODIFIED="1405018999697" TEXT="For x = 1 To .rows.count">
<node CREATED="1405018959577" ID="ID_1434624804" MODIFIED="1405019684383" TEXT="This would be after refering to the sheet with a &quot;With&quot; statement like above">
<arrowlink DESTINATION="ID_1083629917" ENDARROW="Default" ENDINCLINATION="432;0;" ID="Arrow_ID_1384511904" STARTARROW="None" STARTINCLINATION="432;0;"/>
</node>
</node>
</node>
<node CREATED="1405019029164" FOLDED="true" ID="ID_1358203121" MODIFIED="1405019706445" TEXT="To CHECK the contents of a cell">
<node CREATED="1405019038364" ID="ID_1789647306" MODIFIED="1405019077723" TEXT="If .cells(x, y).Text = &quot;Whatever&quot; Then"/>
</node>
<node CREATED="1405019085429" FOLDED="true" ID="ID_777611688" MODIFIED="1405019707591" TEXT="To SET the contents of a cell">
<node CREATED="1405019094861" ID="ID_817165048" MODIFIED="1405019109133" TEXT=".cells(x, y).Value = &quot;Whatever&quot;"/>
</node>
<node CREATED="1405019981752" FOLDED="true" ID="ID_1594780837" MODIFIED="1405020042617" TEXT="To set the FORMULA in a cell">
<node CREATED="1405019999113" ID="ID_1824897469" MODIFIED="1405019999999" TEXT=".Worksheets(&quot;DTotals&quot;).cells(dtStopRow, 6).formula = &quot;=Count(F&quot; &amp; dtStartRow &amp; &quot;:F&quot; &amp; dtStopRow - 1 &amp; &quot;)&quot;">
<node CREATED="1405020030171" ID="ID_1702954247" MODIFIED="1405020039290" TEXT="Uses variables to create the formula dynamically"/>
</node>
</node>
</node>
</node>
</node>
</map>
