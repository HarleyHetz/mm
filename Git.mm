<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1405449109604" ID="ID_1026994753" MODIFIED="1405449114626" TEXT="Git">
<node CREATED="1405449208725" ID="ID_347772696" MODIFIED="1405449218834" POSITION="right" TEXT="Distributed Version Control System">
<node CREATED="1405449245442" ID="ID_1701400350" MODIFIED="1405449269531" TEXT="You don&apos;t just check out the latest snapshot of files"/>
<node CREATED="1405449270355" ID="ID_266314312" MODIFIED="1405449294322" TEXT="You mirror the entire repository">
<node CREATED="1405449295780" ID="ID_1082830677" MODIFIED="1405449305571" TEXT="This creates redundancy for safety"/>
<node CREATED="1405449306244" ID="ID_228187259" MODIFIED="1405449352628" TEXT="If server crashes, it can be restored by one of the clients"/>
</node>
<node CREATED="1405449448977" ID="ID_281272912" MODIFIED="1405449459872" TEXT="Nearly every operation is performed on local machine">
<node CREATED="1405449482946" ID="ID_469156339" MODIFIED="1405449491769" TEXT="Means that there is very little you can&apos;t do if offline."/>
</node>
<node CREATED="1405449516372" ID="ID_75880921" MODIFIED="1405449529171" TEXT="Uses SHA-1 Hash Checksum to verify data"/>
<node CREATED="1405449561221" ID="ID_1206848402" MODIFIED="1405449567388" TEXT="Generally only adds data">
<node CREATED="1405449571965" ID="ID_1695401764" MODIFIED="1405449580933" TEXT="Very difficult to loose data once committed"/>
</node>
<node CREATED="1405520072858" ID="ID_1798106349" MODIFIED="1405520077800" TEXT="Two types of files">
<node CREATED="1405520078801" ID="ID_98269755" MODIFIED="1405520080705" TEXT="Tracked">
<node CREATED="1405520096961" ID="ID_1200348575" MODIFIED="1405520110242" TEXT="These changes in these files are tracked by git"/>
</node>
<node CREATED="1405520081553" ID="ID_1803009881" MODIFIED="1405520083872" TEXT="Untracked">
<node CREATED="1405520084817" ID="ID_1380654933" MODIFIED="1405520093833" TEXT="These files are essentially ignored by git"/>
</node>
</node>
<node CREATED="1405449601702" ID="ID_1195321821" MODIFIED="1405449608630" TEXT="Three states data lives in">
<node CREATED="1405520128859" ID="ID_1366430845" MODIFIED="1405520138490" TEXT="These states are ONLY for Tracked files"/>
<node CREATED="1405449609894" ID="ID_249556699" MODIFIED="1405449612069" TEXT="Committed">
<node CREATED="1405449645641" ID="ID_862343797" MODIFIED="1405449661903" TEXT="Data safely stored in your local database"/>
</node>
<node CREATED="1405449621535" ID="ID_1722733674" MODIFIED="1405449639335" TEXT="Modified">
<node CREATED="1405449675106" ID="ID_1196099336" MODIFIED="1405449684825" TEXT="Data has changed, but has not been committed"/>
</node>
<node CREATED="1405449614790" ID="ID_1064702241" MODIFIED="1405449619822" TEXT="Staged">
<node CREATED="1405449697202" ID="ID_1264151806" MODIFIED="1405449717210" TEXT="Data has been marked in its&apos; current state for the next commit"/>
</node>
</node>
<node CREATED="1405449743451" ID="ID_454992401" MODIFIED="1405449749202" TEXT="Three places data lives">
<node CREATED="1405449765460" ID="ID_1208929145" MODIFIED="1405449769515" TEXT="Working Directory">
<node CREATED="1405449791117" ID="ID_521350069" MODIFIED="1405449797028" TEXT="Modify files here"/>
</node>
<node CREATED="1405449771115" ID="ID_522616427" MODIFIED="1405449774163" TEXT="Staging Area">
<node CREATED="1405449799374" ID="ID_89301017" MODIFIED="1405449807821" TEXT="Stage files here for next commit"/>
</node>
<node CREATED="1405449775013" ID="ID_611265454" MODIFIED="1405449777980" TEXT="Git Directory">
<node CREATED="1405449811622" ID="ID_465131091" MODIFIED="1405449821125" TEXT="Committed files live here"/>
</node>
</node>
</node>
<node CREATED="1405449958347" ID="ID_1833490187" MODIFIED="1405449961970" POSITION="right" TEXT="Commands">
<node CREATED="1405449871928" ID="ID_1818075036" MODIFIED="1405449876335" TEXT="Configure Git">
<node CREATED="1405449877369" ID="ID_1023789647" MODIFIED="1405449885880" TEXT="git config --global user.name Jeffery A Hetzler"/>
<node CREATED="1405449899409" ID="ID_516920267" MODIFIED="1405449910480" TEXT="git config --global user.email harleyhetz@yahoo.com"/>
</node>
<node CREATED="1405449949555" ID="ID_255693651" MODIFIED="1405449952833" TEXT="Check Settings">
<node CREATED="1405449954379" ID="ID_331363317" MODIFIED="1405449956690" TEXT="git config --list "/>
</node>
<node CREATED="1405449999547" ID="ID_717103530" MODIFIED="1405450004740" TEXT="Check the value of a key">
<node CREATED="1405450005668" ID="ID_819738979" MODIFIED="1405450011219" TEXT="git config {key}">
<node CREATED="1405450012381" ID="ID_1615876899" MODIFIED="1405450024564" TEXT="Where {key} = the value of the key you want to check"/>
</node>
</node>
<node CREATED="1405450043182" ID="ID_1523689508" MODIFIED="1405450045909" TEXT="Get Help">
<node CREATED="1405450046950" ID="ID_1444674275" MODIFIED="1405450049397" TEXT="git help &lt;verb&gt;">
<node CREATED="1405450049926" ID="ID_1666040151" MODIFIED="1405450062261" TEXT="Where &lt;verb&gt; = the command you want help on"/>
</node>
</node>
<node CREATED="1405518799709" ID="ID_336762685" MODIFIED="1405518806712" TEXT="Initialize a Repo">
<node CREATED="1405518807972" ID="ID_1337613280" MODIFIED="1405518811781" TEXT="git init">
<node CREATED="1405518813525" ID="ID_114933599" MODIFIED="1405518832774" TEXT="This starts the tracking process on whatever folder you have navigated to in git"/>
<node CREATED="1405518837989" ID="ID_455072388" MODIFIED="1405520277405" TEXT="No files are being tracked yet you must add them first">
<arrowlink COLOR="#0033ff" DESTINATION="ID_884572057" ENDARROW="Default" ENDINCLINATION="282;0;" ID="Arrow_ID_1806952243" STARTARROW="None" STARTINCLINATION="282;0;"/>
</node>
</node>
</node>
<node CREATED="1405520236135" ID="ID_1109544139" MODIFIED="1405520239070" TEXT="Adding files">
<node CREATED="1405518851462" ID="ID_884572057" MODIFIED="1405520266040" TEXT="git add {filename}">
<linktarget COLOR="#0033ff" DESTINATION="ID_884572057" ENDARROW="Default" ENDINCLINATION="282;0;" ID="Arrow_ID_1806952243" SOURCE="ID_455072388" STARTARROW="None" STARTINCLINATION="282;0;"/>
<node CREATED="1405518910855" ID="ID_1607075444" MODIFIED="1405518923223" TEXT="Where {filename} is the name of the file you want to add"/>
<node CREATED="1405518855030" ID="ID_1901455411" MODIFIED="1405518879967" TEXT="This adds the files to the repository and begins tracking them"/>
<node CREATED="1405520418870" ID="ID_900439341" MODIFIED="1405520430349" TEXT="This command also &quot;stages&quot; files that you have changed"/>
</node>
<node CREATED="1405638247029" ID="ID_375259850" MODIFIED="1405638253499" TEXT="git add .">
<node CREATED="1405638256897" ID="ID_1522447566" MODIFIED="1405638260849" TEXT="Adds all new files"/>
</node>
<node CREATED="1405638262657" ID="ID_621661571" MODIFIED="1405638268709" TEXT="git add -u">
<node CREATED="1405638270157" ID="ID_1212580563" MODIFIED="1405638286009" TEXT="updates tracking for files that changed names or were deleted"/>
</node>
<node CREATED="1405638288417" ID="ID_458088186" MODIFIED="1405638294359" TEXT="git add -A">
<node CREATED="1405638295708" ID="ID_196385549" MODIFIED="1405638300789" TEXT="Does both of the above"/>
</node>
</node>
<node CREATED="1405638329540" ID="ID_455459366" MODIFIED="1405638347561" TEXT="Committing files to your local repo">
<node CREATED="1405638349380" ID="ID_1410523913" MODIFIED="1405638363482" TEXT="git commit -m &quot;message&quot;">
<node CREATED="1405638365500" ID="ID_1023603200" MODIFIED="1405638376692" TEXT="Where &quot;message&quot; is a description"/>
</node>
</node>
<node CREATED="1405518965346" ID="ID_1962068625" MODIFIED="1405520010226" TEXT="Clone an existing Repo">
<node CREATED="1405518974650" ID="ID_1568745593" MODIFIED="1405518982650" TEXT="git clone {url}">
<node CREATED="1405518983675" ID="ID_1633854644" MODIFIED="1405518994714" TEXT="Where {url} is the path to the repository"/>
<node CREATED="1405519026716" ID="ID_1727782234" MODIFIED="1405519046243" TEXT="This will create a directory in whatever folder you have navigated to that will duplicate what&apos;s in the Repo"/>
<node CREATED="1405519916012" ID="ID_831307284" MODIFIED="1405520003179" TEXT="You can specify to create a directory named something other than the directory on the server by appending the new directory name to the end of the command&#xa;git clone {url} {new directory name}"/>
</node>
</node>
<node CREATED="1405520195086" ID="ID_1201760216" MODIFIED="1405520199845" TEXT="Check the status of your files">
<node CREATED="1405520201942" ID="ID_1707557662" MODIFIED="1405520204701" TEXT="git status"/>
</node>
</node>
</node>
</map>
