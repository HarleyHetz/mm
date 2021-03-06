<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1405955443882" ID="ID_592175722" MODIFIED="1405955450839" TEXT="R Programming">
<node CREATED="1405955490565" ID="ID_617062794" MODIFIED="1405955507585" POSITION="right" TEXT="Data Structures">
<node CREATED="1405955563863" ID="ID_966422017" MODIFIED="1405955629213" TEXT="Homogeneous (Contents are all the same type)">
<node CREATED="1405955508638" ID="ID_595192176" MODIFIED="1405955943623" TEXT="Atomic Vector">
<node CREATED="1405955525994" ID="ID_818725434" MODIFIED="1405955530065" TEXT="1 Dimension"/>
<node CREATED="1405955763525" ID="ID_669636165" MODIFIED="1405955773509" TEXT="Properties">
<node CREATED="1405955774609" ID="ID_225877671" MODIFIED="1405955779554" TEXT="Type"/>
<node CREATED="1405955779921" ID="ID_97180741" MODIFIED="1405955781262" TEXT="Length"/>
<node CREATED="1405955787479" ID="ID_787991488" MODIFIED="1405955790240" TEXT="Attirbutes"/>
</node>
<node CREATED="1405955950822" ID="ID_1595405478" MODIFIED="1405955953271" TEXT="Types">
<node CREATED="1405955960722" ID="ID_190141354" MODIFIED="1405955962765" TEXT="Logical"/>
<node CREATED="1405955964302" ID="ID_566812305" MODIFIED="1405955975113" TEXT="Integer">
<node CREATED="1405956190951" ID="ID_1777414389" MODIFIED="1405956206286" TEXT="is.numeric()">
<node CREATED="1405956207277" ID="ID_451898498" MODIFIED="1405956229117" TEXT="Determines if a vector is a number, ie integer or double"/>
</node>
</node>
<node CREATED="1405955975370" ID="ID_813253207" MODIFIED="1405955976993" TEXT="Double"/>
<node CREATED="1405955977203" ID="ID_699427953" MODIFIED="1405955979980" TEXT="Character"/>
</node>
<node CREATED="1405956073434" ID="ID_939797495" MODIFIED="1405956080969" TEXT="ALWAYS Flat"/>
<node CREATED="1405955887204" ID="ID_1469352700" MODIFIED="1405955899762" TEXT="is.atomic()">
<node CREATED="1405955900925" ID="ID_422648695" MODIFIED="1405955908896" TEXT="Determines if an object is a vector"/>
</node>
<node CREATED="1405956109057" ID="ID_1082773138" MODIFIED="1405956118823" TEXT="You can determine the type of vector with:">
<node CREATED="1405956119845" ID="ID_1435923366" MODIFIED="1405956148783" TEXT="is.character()"/>
<node CREATED="1405956149025" ID="ID_1944476271" MODIFIED="1405956152769" TEXT="is.double()"/>
<node CREATED="1405956152995" ID="ID_1678564950" MODIFIED="1405956156755" TEXT="is.integer()"/>
<node CREATED="1405956156966" ID="ID_1371177998" MODIFIED="1405956164204" TEXT="is.logical()"/>
</node>
<node CREATED="1405955684814" ID="ID_826578083" MODIFIED="1405956307806" TEXT="Coercion">
<node CREATED="1405956245435" ID="ID_1880857556" MODIFIED="1405956336666" TEXT="If coerced to a number, a logical vector becomes TRUE = 1, FALSE = 0"/>
<node CREATED="1405956341292" ID="ID_954114432" MODIFIED="1405956387664" TEXT="Elements of an atomic vector must be the same type, when combined, they will be coerced to the most flexible type"/>
<node CREATED="1405956416252" ID="ID_962703294" MODIFIED="1405956429683" TEXT="You can explicitly coerce with:">
<node CREATED="1405956431048" ID="ID_367531491" MODIFIED="1405956435089" TEXT="as.character()"/>
<node CREATED="1405956435534" ID="ID_571647838" MODIFIED="1405956438638" TEXT="as.double()"/>
<node CREATED="1405956439551" ID="ID_1517040410" MODIFIED="1405956443248" TEXT="as.integer()"/>
<node CREATED="1405956443895" ID="ID_1846115387" MODIFIED="1405956447780" TEXT="as.logical()"/>
</node>
</node>
<node CREATED="1405957065156" ID="ID_1905452670" MODIFIED="1405957069353" TEXT="Attributes">
<node CREATED="1405957070499" ID="ID_770096281" MODIFIED="1405957082059" TEXT="All objects can have arbitrary additional attributes">
<node CREATED="1405957083611" ID="ID_721681260" MODIFIED="1405957207488" TEXT="y &lt;- 1:10&#xa;attr(y, &quot;new_attribute&quot;) &lt;- &quot;This is a vector&quot;&#xa;attr(y, &quot;new_attribute&quot;)&#xa;#&gt; [1] &quot;This is a vector&quot;"/>
<node CREATED="1405957116579" ID="ID_1386122884" MODIFIED="1405957299700" TEXT="Three attributes never lost are:">
<node CREATED="1405957301190" ID="ID_1319268963" MODIFIED="1405957316650" TEXT="Names: names(x)">
<node CREATED="1405957371165" ID="ID_377817714" MODIFIED="1405957393210" TEXT="Name vectors when creating:">
<node CREATED="1405957393748" ID="ID_1958987909" MODIFIED="1405957398351" TEXT="x &lt;- c(a = 1, b = 2, c = 3)"/>
</node>
<node CREATED="1405957411166" ID="ID_1848529122" MODIFIED="1405957416470" TEXT="Modify it in place:">
<node CREATED="1405957417539" ID="ID_1361125044" MODIFIED="1405957419645" TEXT="x &lt;- 1:3; names(x) &lt;- c(&quot;a&quot;, &quot;b&quot;, &quot;c&quot;)"/>
</node>
<node CREATED="1405957440463" ID="ID_1628774748" MODIFIED="1405957447967" TEXT="Create a modified copy:">
<node CREATED="1405957449316" ID="ID_450152173" MODIFIED="1405957451016" TEXT="x &lt;- setNames(1:3, c(&quot;a&quot;, &quot;b&quot;, &quot;c&quot;))"/>
</node>
<node CREATED="1405957467280" ID="ID_981587082" MODIFIED="1405957481990" TEXT="Names do not have to be unique, but subsetting is more useful if they are..."/>
<node CREATED="1405957492606" ID="ID_1728638782" MODIFIED="1405957603347" TEXT="Not all elements of a vector need to have a name, if some names are missing names() will return an empty string, if all names are missing, names() will return NULL."/>
<node CREATED="1405957607084" ID="ID_1287742445" MODIFIED="1405957728205" TEXT="Create a new vector without names using unname(x)"/>
<node CREATED="1405957730818" ID="ID_437541782" MODIFIED="1405957743096" TEXT="or remove names in place with names(x) &lt;- NULL"/>
</node>
<node CREATED="1405957317345" ID="ID_4990078" MODIFIED="1405957326283" TEXT="Class: class(x)"/>
<node CREATED="1405957327227" ID="ID_1297963250" MODIFIED="1405957339583" TEXT="Dimensions: dim(x)"/>
</node>
</node>
</node>
<node CREATED="1405958635104" ID="ID_1910454937" MODIFIED="1405958638161" TEXT="Factors">
<node CREATED="1405958682535" ID="ID_1968439406" MODIFIED="1405958720956" TEXT="A vector that rides on top of another vector and contains teh predefined values that the original factor can be"/>
<node CREATED="1405958734629" ID="ID_589206048" MODIFIED="1405958741353" TEXT="Contains two attributes">
<node CREATED="1405958742655" ID="ID_377028314" MODIFIED="1405958746321" TEXT="Class"/>
<node CREATED="1405958747265" ID="ID_899673348" MODIFIED="1405958750135" TEXT="Level"/>
<node CREATED="1405958951469" ID="ID_1058463939" MODIFIED="1405959020289">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      x &lt;- factor(c(&quot;a&quot;, &quot;b&quot;, &quot;b&quot;, &quot;a&quot;))&#160;&#160;<br />x&#160;&#160;<br /><i>#&gt; [1] a b b a&#160;&#160;<br />#&gt; Levels: a b&#160;&#160;</i><br />class(x)&#160;&#160;<br /><i>#&gt; [1] &quot;factor&quot;&#160;</i>&#160;<br />levels(x)&#160;&#160;<br /><i>#&gt; [1] &quot;a&quot; &quot;b&quot;</i>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1405955531649" ID="ID_639075496" MODIFIED="1405955536844" TEXT="Matrix">
<node CREATED="1405955538614" ID="ID_1085926974" MODIFIED="1405955543825" TEXT="2 Dimensional"/>
<node CREATED="1405959073151" ID="ID_1308381379" MODIFIED="1405959084554" TEXT="Created with the matrix() command"/>
</node>
<node CREATED="1405955545673" ID="ID_1843699800" MODIFIED="1405955551243" TEXT="Array">
<node CREATED="1405955552436" ID="ID_1867070739" MODIFIED="1405955556087" TEXT="No Dimension"/>
<node CREATED="1405959088275" ID="ID_224660903" MODIFIED="1405959096137" TEXT="Created with the array() command"/>
</node>
</node>
<node CREATED="1405955581234" ID="ID_1662556536" MODIFIED="1405955619198" TEXT="Heterogeneous (Contents can be of different types)">
<node CREATED="1405955634213" ID="ID_1659964614" MODIFIED="1405955637973" TEXT="List">
<node CREATED="1405955638417" ID="ID_1102089859" MODIFIED="1405955645250" TEXT="1 Dimension"/>
<node CREATED="1405955910573" ID="ID_549504382" MODIFIED="1405955993630" TEXT="is.list()">
<node CREATED="1405955918163" ID="ID_1818979810" MODIFIED="1405955924762" TEXT="Determines if an object is a list"/>
</node>
<node CREATED="1405956905880" ID="ID_482749672" MODIFIED="1405956911122" TEXT="as.list()">
<node CREATED="1405956912190" ID="ID_502031187" MODIFIED="1405956921862" TEXT="coerce to a list"/>
</node>
<node CREATED="1405956932244" ID="ID_839773023" MODIFIED="1405956935395" TEXT="unlist(()">
<node CREATED="1405956936355" ID="ID_89061439" MODIFIED="1405956942673" TEXT="Turn a list into a vector">
<node CREATED="1405956943601" ID="ID_841157124" MODIFIED="1405956956190" TEXT="Uses the same coercion rules as c()"/>
</node>
</node>
</node>
<node CREATED="1405955647099" ID="ID_8637231" MODIFIED="1405955650937" TEXT="Data Frame">
<node CREATED="1405955652286" ID="ID_1914963344" MODIFIED="1405955658699" TEXT="2 Dimensional"/>
</node>
</node>
</node>
<node CREATED="1405955680625" ID="ID_1487728976" MODIFIED="1405955689494" POSITION="right" TEXT="Commands">
<node CREATED="1405955689907" ID="ID_1437126008" MODIFIED="1405955797604" TEXT="str()">
<node CREATED="1405955698932" ID="ID_1593347720" MODIFIED="1405955718635" TEXT="Gives a compact, human readable description of any R data structure"/>
</node>
<node CREATED="1405955798797" ID="ID_1637064041" MODIFIED="1405955820404" TEXT="typeof()">
<node CREATED="1405955822299" ID="ID_452699849" MODIFIED="1405955833219" TEXT="Displays what type of vector you have"/>
</node>
<node CREATED="1405955836924" ID="ID_1246359374" MODIFIED="1405955841277" TEXT="length()">
<node CREATED="1405955842330" ID="ID_788578398" MODIFIED="1405955849880" TEXT="Displays the length of a vecrtor"/>
</node>
<node CREATED="1405955851713" ID="ID_1741637636" MODIFIED="1405955856893" TEXT="attributes()">
<node CREATED="1405955858320" ID="ID_1616445452" MODIFIED="1405955868086" TEXT="displays the attributes of a vector"/>
</node>
<node CREATED="1405955994886" ID="ID_1077504420" MODIFIED="1405955998911" TEXT="c()">
<node CREATED="1405956000011" ID="ID_1697920894" MODIFIED="1405956013599" TEXT="Combine: Creates an Atomic Vector"/>
<node CREATED="1405956027943" ID="ID_1536916337" MODIFIED="1405956050142" TEXT="dbl_var &lt;- c(1, 2.5, 4.5)"/>
</node>
<node CREATED="1405956466992" ID="ID_140413165" MODIFIED="1405956470720" TEXT="list()">
<node CREATED="1405956471960" ID="ID_209860747" MODIFIED="1405956477920" TEXT="Constructs a list"/>
<node CREATED="1405956479456" ID="ID_628446386" MODIFIED="1405956520891" TEXT="x &lt;- list(1:3, &quot;a&quot;, c(TRUE, FALSE, TRUE), c(2.3, 5.9))"/>
</node>
</node>
</node>
</map>
