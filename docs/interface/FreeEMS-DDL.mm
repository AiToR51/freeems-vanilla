<map version="0.8.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1295054950694" ID="Freemind_Link_97820589" MODIFIED="1295054961611" TEXT="FreeEMS-DDL">
<node CREATED="1295054963648" FOLDED="true" ID="_" MODIFIED="1295054968651" POSITION="right" TEXT="Structures">
<node CREATED="1295055085534" ID="Freemind_Link_1932887062" MODIFIED="1295055089962" TEXT="Structure">
<node CREATED="1295055090886" ID="Freemind_Link_581348170" MODIFIED="1295055490047" TEXT="Name">
<node CREATED="1295056876737" ID="Freemind_Link_728383192" MODIFIED="1295056913329" TEXT="camelCaseValidCIdentifier"/>
</node>
<node CREATED="1295055106270" ID="Freemind_Link_780753375" MODIFIED="1295055520035" TEXT="Description">
<node CREATED="1295055794728" ID="Freemind_Link_1038674060" MODIFIED="1295055802339" TEXT="Arbitrary String"/>
</node>
<node CREATED="1295055279435" ID="Freemind_Link_51327626" MODIFIED="1295070409703" TEXT="Members">
<node CREATED="1295055286675" ID="Freemind_Link_487956991" MODIFIED="1295072005007" TEXT="Member" VSHIFT="7">
<node CREATED="1295072058062" HGAP="24" ID="Freemind_Link_518469867" MODIFIED="1295076929801" TEXT="Name" VSHIFT="38">
<node CREATED="1295056876737" ID="Freemind_Link_369954331" MODIFIED="1295056913329" TEXT="camelCaseValidCIdentifier"/>
</node>
<node CREATED="1295126317820" ID="Freemind_Link_1237581391" MODIFIED="1295126321167" TEXT="Description">
<node CREATED="1295055794728" ID="Freemind_Link_1891604257" MODIFIED="1295055802339" TEXT="Arbitrary String"/>
</node>
<node CREATED="1295055290075" ID="Freemind_Link_289504752" MODIFIED="1295055309260" TEXT="Type">
<node CREATED="1295055724438" ID="Freemind_Link_990168552" MODIFIED="1295070774118" TEXT="Embedded Structure">
<node CREATED="1295073426976" ID="Freemind_Link_902584035" MODIFIED="1295076890378" TEXT="reference to name of struct described in this file"/>
</node>
<node CREATED="1295060449354" ID="Freemind_Link_462012820" MODIFIED="1295060453924" TEXT="string">
<node CREATED="1295072112595" ID="Freemind_Link_1608348891" MODIFIED="1295072132179" TEXT="initialise with string with implicit null byte termination"/>
<node CREATED="1295072132823" ID="Freemind_Link_476965414" MODIFIED="1295072145059" TEXT="or maybe with hex bytes and &apos;&apos; chars comma seperated"/>
<node CREATED="1295072145759" ID="Freemind_Link_1815957938" MODIFIED="1295072156250" TEXT="need different mech for this or not? review C..."/>
</node>
<node CREATED="1295055739357" ID="Freemind_Link_1148409383" MODIFIED="1295055740792" TEXT="array">
<node CREATED="1295073392203" ID="Freemind_Link_1453994828" MODIFIED="1295073405645" TEXT="primitive type"/>
<node CREATED="1295126376768" ID="Freemind_Link_1511633365" MODIFIED="1295126382843" TEXT="should allow complex types?"/>
<node CREATED="1295073406225" ID="Freemind_Link_1761752028" MODIFIED="1295073416892" TEXT="size/length/count"/>
</node>
<node CREATED="1295070727013" ID="Freemind_Link_1607189331" MODIFIED="1295070729257" TEXT="primitives">
<node CREATED="1295055741396" ID="Freemind_Link_175573994" MODIFIED="1295057159254" TEXT="int8"/>
<node CREATED="1295057160051" ID="Freemind_Link_965411911" MODIFIED="1295057161782" TEXT="int16"/>
<node CREATED="1295057165098" ID="Freemind_Link_974482838" MODIFIED="1295057167365" TEXT="int32"/>
<node CREATED="1295057167690" ID="Freemind_Link_1895351719" MODIFIED="1295057169733" TEXT="int64"/>
<node CREATED="1295057170042" ID="Freemind_Link_212300535" MODIFIED="1295057177189" TEXT="uint8"/>
<node CREATED="1295057178297" ID="Freemind_Link_1210849335" MODIFIED="1295057181148" TEXT="uint16"/>
<node CREATED="1295057181473" ID="Freemind_Link_869639131" MODIFIED="1295057185852" TEXT="uint32"/>
<node CREATED="1295057186392" ID="Freemind_Link_188479725" MODIFIED="1295057194539" TEXT="uint64"/>
<node CREATED="1295057195144" ID="Freemind_Link_1955232050" MODIFIED="1295057201187" TEXT="float32"/>
<node CREATED="1295057201567" ID="Freemind_Link_192533444" MODIFIED="1295057206354" TEXT="double64"/>
</node>
<node CREATED="1295072521411" ID="Freemind_Link_546636645" MODIFIED="1295072526973" TEXT="bitfield groups">
<node CREATED="1295072527563" ID="Freemind_Link_135956286" MODIFIED="1295126425168" TEXT="Like C, promote to assumed size, 1 - 8 = byte, 9 - 16 = 2 bytes, etc"/>
<node CREATED="1295075321837" ID="Freemind_Link_1693219897" MODIFIED="1295075356022" TEXT="Bits">
<node CREATED="1295075356762" ID="Freemind_Link_1748356336" MODIFIED="1295075358149" TEXT="Bit">
<node CREATED="1295075358955" ID="Freemind_Link_1742557028" MODIFIED="1295075360654" TEXT="Name">
<node CREATED="1295056876737" ID="Freemind_Link_72847294" MODIFIED="1295056913329" TEXT="camelCaseValidCIdentifier"/>
</node>
<node CREATED="1295075361114" ID="Freemind_Link_1198407438" MODIFIED="1295075365396" TEXT="Description">
<node CREATED="1295055794728" ID="Freemind_Link_428835922" MODIFIED="1295055802339" TEXT="Arbitrary String"/>
</node>
</node>
</node>
<node CREATED="1295077009055" ID="Freemind_Link_1824894025" MODIFIED="1295128918721" TEXT="need to handle :2 or :3 etc or just single bits? if so how?"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1295054969191" FOLDED="true" HGAP="29" ID="Freemind_Link_1308391612" MODIFIED="1295058685923" POSITION="right" TEXT="Instances" VSHIFT="-18">
<node CREATED="1295056060883" ID="Freemind_Link_1566182298" MODIFIED="1295056064158" TEXT="Instance">
<node CREATED="1295055426439" ID="Freemind_Link_1638933398" MODIFIED="1295055460920" TEXT="Location ID">
<node CREATED="1295055761315" ID="Freemind_Link_1723951298" MODIFIED="1295055773405" TEXT="0 - 65535/0 - 0xFFFF"/>
</node>
<node CREATED="1295055090886" ID="Freemind_Link_1568705440" MODIFIED="1295055490047" TEXT="Name">
<node CREATED="1295056876737" ID="Freemind_Link_1039327800" MODIFIED="1295056913329" TEXT="camelCaseValidCIdentifier"/>
</node>
<node CREATED="1295055106270" ID="Freemind_Link_873708223" MODIFIED="1295055520035" TEXT="Description">
<node CREATED="1295055794728" ID="Freemind_Link_467648927" MODIFIED="1295055802339" TEXT="Arbitrary String"/>
</node>
<node CREATED="1295092079030" ID="Freemind_Link_748424588" MODIFIED="1295126580223" TEXT="Type">
<node CREATED="1295073426976" ID="Freemind_Link_1714251361" MODIFIED="1295076890378" TEXT="reference to name of struct described in this file"/>
</node>
<node CREATED="1295127620509" ID="Freemind_Link_1878726924" MODIFIED="1295127634006" TEXT="RequiresInitialisation">
<node CREATED="1295127634316" ID="Freemind_Link_1335073101" MODIFIED="1295127635903" TEXT="true">
<node CREATED="1295128075072" ID="Freemind_Link_636843431" MODIFIED="1295128085219" TEXT="used for settings"/>
<node CREATED="1295128255677" ID="Freemind_Link_633467946" MODIFIED="1295128270544" TEXT="metadata required"/>
<node CREATED="1295127641027" ID="Freemind_Link_864152975" MODIFIED="1295127957747" TEXT="pre/post modifiers are optional"/>
<node CREATED="1295127641027" ID="Freemind_Link_423652072" MODIFIED="1295127966810" TEXT="init data must be present below"/>
</node>
<node CREATED="1295127636524" ID="Freemind_Link_1002686172" MODIFIED="1295127637615" TEXT="false">
<node CREATED="1295128090087" ID="Freemind_Link_98460536" MODIFIED="1295128101937" TEXT="used for dynamic variables"/>
<node CREATED="1295127885892" ID="Freemind_Link_1531600669" MODIFIED="1295127899470" TEXT="metadata still required"/>
<node CREATED="1295127900098" ID="Freemind_Link_1848175859" MODIFIED="1295127907070" TEXT="init data not required"/>
<node CREATED="1295127865621" ID="Freemind_Link_400967570" MODIFIED="1295127885463" TEXT="pre/post mods are ignored"/>
</node>
</node>
<node CREATED="1295071896737" ID="Freemind_Link_412867311" MODIFIED="1295126739676" TEXT="Pre-Modifiers">
<node CREATED="1295092312537" ID="Freemind_Link_1580969995" MODIFIED="1295092317165" TEXT="const"/>
<node CREATED="1295092317568" ID="Freemind_Link_1858407024" MODIFIED="1295092320109" TEXT="volatile"/>
<node CREATED="1295092320809" ID="Freemind_Link_1362244560" MODIFIED="1295092321804" TEXT="etc"/>
</node>
<node CREATED="1295071905969" ID="Freemind_Link_876166804" MODIFIED="1295126749747" TEXT="Post-Modifiers">
<node CREATED="1295092324576" ID="Freemind_Link_1952086712" MODIFIED="1295092331292" TEXT="memory macros"/>
</node>
<node CREATED="1295071914832" ID="Freemind_Link_1350158791" MODIFIED="1295071932498" TEXT="Initialisers">
<node CREATED="1295071933879" ID="Freemind_Link_1249899787" MODIFIED="1295071939978" TEXT="Initialiser">
<node CREATED="1295071940502" ID="Freemind_Link_1164605336" MODIFIED="1295071974655" TEXT="String Data in the matching format for the type in the referenced structure, GCC will catch mistakes."/>
<node CREATED="1295126690979" ID="Freemind_Link_63560959" MODIFIED="1295126711070" TEXT="Nested where nested structs exist in type"/>
<node CREATED="1295128197625" ID="Freemind_Link_556508501" MODIFIED="1295128204797" TEXT="Need metadata here too, how to structure?">
<node CREATED="1295126799116" ID="Freemind_Link_526931198" MODIFIED="1295128232938" TEXT="conversion info">
<node CREATED="1295128170985" ID="Freemind_Link_525017322" MODIFIED="1295128175798" TEXT="internal unit"/>
<node CREATED="1295127088626" ID="Freemind_Link_1132611618" MODIFIED="1295127093501" TEXT="offset"/>
<node CREATED="1295127093897" ID="Freemind_Link_90178106" MODIFIED="1295127096805" TEXT="multiplier"/>
</node>
<node CREATED="1295126827411" ID="Freemind_Link_793636607" MODIFIED="1295126882219" TEXT="Need normal/extreme/limit values for top and bottom">
<node CREATED="1295127676176" ID="Freemind_Link_992302813" MODIFIED="1295128140928" TEXT="use as guides for settings?"/>
<node CREATED="1295127729334" ID="Freemind_Link_1742794459" MODIFIED="1295128126224" TEXT="use for display of dynamic vars "/>
</node>
<node CREATED="1295130388911" ID="Freemind_Link_225156899" MODIFIED="1295130401729" TEXT="Display Name">
<node CREATED="1295130402870" ID="Freemind_Link_1451489942" MODIFIED="1295130409633" TEXT="Arbitrary String"/>
</node>
</node>
<node CREATED="1295126883223" ID="Freemind_Link_1980835143" MODIFIED="1295127215253" TEXT="how to handle OAOO of #define stuff and #include stuff such as included table data and axis sizes etc"/>
</node>
</node>
</node>
</node>
<node CREATED="1295054978592" FOLDED="true" ID="Freemind_Link_1047542891" MODIFIED="1295054986947" POSITION="left" TEXT="Interface Version">
<node CREATED="1295060094652" ID="Freemind_Link_162999746" MODIFIED="1295060105295" TEXT="Undefined format, possibly just a string, parsed in a certain way."/>
<node CREATED="1295060122082" ID="Freemind_Link_202044789" MODIFIED="1295060193752" TEXT="The version upgrade path semantics on this possibly no longer matter with the data description service stuff"/>
</node>
<node CREATED="1295055940316" FOLDED="true" ID="Freemind_Link_1252171363" MODIFIED="1295055943095" POSITION="left" TEXT="Notes">
<node CREATED="1295055944244" ID="Freemind_Link_1770492473" MODIFIED="1295055946033" TEXT="Note">
<node CREATED="1295055963203" ID="Freemind_Link_1653509447" MODIFIED="1295055967206" TEXT="Title">
<node CREATED="1295055987320" ID="Freemind_Link_560570732" MODIFIED="1295055991732" TEXT="Arbitrary String"/>
</node>
<node CREATED="1295055977922" ID="Freemind_Link_1547490228" MODIFIED="1295055981476" TEXT="Content">
<node CREATED="1295055946508" ID="Freemind_Link_682652048" MODIFIED="1295055954191" TEXT="Arbitrary String"/>
</node>
</node>
</node>
<node CREATED="1295055883569" FOLDED="true" ID="Freemind_Link_314948960" MODIFIED="1295058348458" POSITION="left" TEXT="PayloadIDs">
<node CREATED="1295055918950" ID="Freemind_Link_479458067" MODIFIED="1295058363689" TEXT="PayloadID">
<node CREATED="1295056583617" ID="Freemind_Link_1005995527" MODIFIED="1295058377056" TEXT="ID">
<node CREATED="1295056593960" ID="Freemind_Link_921919665" MODIFIED="1295056609578" TEXT="0 - 65535/0 - 0xFFFF"/>
</node>
<node CREATED="1295056091664" ID="Freemind_Link_1935699995" MODIFIED="1295060548302" TEXT="Name">
<node CREATED="1295056876737" ID="Freemind_Link_1927447471" MODIFIED="1295056913329" TEXT="camelCaseValidCIdentifier"/>
</node>
<node CREATED="1295060548826" ID="Freemind_Link_176272650" MODIFIED="1295060550814" TEXT="Status">
<node CREATED="1295060552010" ID="Freemind_Link_1302204832" MODIFIED="1295060566852" TEXT="Current">
<node CREATED="1295060571289" ID="Freemind_Link_434851495" MODIFIED="1295060578884" TEXT="Should be used for new and existing designs"/>
</node>
<node CREATED="1295060567201" ID="Freemind_Link_389509129" MODIFIED="1295060569388" TEXT="Deprecated">
<node CREATED="1295060580567" ID="Freemind_Link_1663226101" MODIFIED="1295060588579" TEXT="Should NOT be used for new designs"/>
<node CREATED="1295060588984" ID="Freemind_Link_1005448757" MODIFIED="1295060618305" TEXT="Should be phased out from existing designs"/>
</node>
<node CREATED="1295060633404" ID="Freemind_Link_1890847315" MODIFIED="1295060637111" TEXT="TestOnly">
<node CREATED="1295060649338" ID="Freemind_Link_1548183532" MODIFIED="1295060687099" TEXT="Not to be used, except for testing"/>
<node CREATED="1295060687584" ID="Freemind_Link_1575687360" MODIFIED="1295060694090" TEXT="May be removed without warning at any time"/>
</node>
</node>
<node CREATED="1295056502639" ID="Freemind_Link_1631680006" MODIFIED="1295056505738" TEXT="Description">
<node CREATED="1295058551368" ID="Freemind_Link_956747082" MODIFIED="1295058558554" TEXT="Arbitrary String"/>
</node>
<node CREATED="1295058698038" ID="Freemind_Link_492834460" MODIFIED="1295058710359" TEXT="ContentID">
<node CREATED="1295058712069" ID="Freemind_Link_1663798519" MODIFIED="1295058735534" TEXT="no idea how to do this, possibly link to an instance or structure"/>
</node>
<node CREATED="1295060960852" ID="Freemind_Link_1317718050" MODIFIED="1295060966576" TEXT="HasContent?">
<node CREATED="1295060967084" ID="Freemind_Link_1593582893" MODIFIED="1295126095149" TEXT="how to describe packets with/without arguments, with/without data"/>
</node>
<node CREATED="1295060378647" ID="Freemind_Link_556998624" MODIFIED="1295060382978" TEXT="Length">
<node CREATED="1295060755978" ID="Freemind_Link_1193360840" MODIFIED="1295060776018" TEXT="Not including header or checksum"/>
<node CREATED="1295060799968" ID="Freemind_Link_708407923" MODIFIED="1295060818017" TEXT="A positive integer"/>
<node CREATED="1295060825021" ID="Freemind_Link_1047368061" MODIFIED="1295060828769" TEXT="Can be variable"/>
</node>
<node CREATED="1295060845580" ID="Freemind_Link_989435751" MODIFIED="1295060849079" TEXT="MinLength">
<node CREATED="1295060895281" ID="Freemind_Link_214507019" MODIFIED="1295060907891" TEXT="maybe just this instead"/>
</node>
<node CREATED="1295060849507" ID="Freemind_Link_892000692" MODIFIED="1295060851847" TEXT="MaxLength"/>
<node CREATED="1295060909078" ID="Freemind_Link_1232181307" MODIFIED="1295060915218" TEXT="LengthWithoutData">
<node CREATED="1295060917487" ID="Freemind_Link_573167457" MODIFIED="1295060921210" TEXT="maybe this is the best format"/>
</node>
<node CREATED="1295060383599" ID="Freemind_Link_1739355357" MODIFIED="1295060396513" TEXT="Content? use ID above?"/>
</node>
</node>
<node CREATED="1295061087436" FOLDED="true" ID="Freemind_Link_246400430" MODIFIED="1295061090431" POSITION="left" TEXT="ErrorIDs">
<node CREATED="1295061091436" ID="Freemind_Link_890707077" MODIFIED="1295061094374" TEXT="ErrorID">
<node CREATED="1295061097396" ID="Freemind_Link_803103528" MODIFIED="1295061098583" TEXT="ID">
<node CREATED="1295056593960" ID="Freemind_Link_1965808330" MODIFIED="1295056609578" TEXT="0 - 65535/0 - 0xFFFF"/>
</node>
<node CREATED="1295061099043" ID="Freemind_Link_707084184" MODIFIED="1295061105958" TEXT="Name">
<node CREATED="1295056876737" ID="Freemind_Link_706141046" MODIFIED="1295056913329" TEXT="camelCaseValidCIdentifier"/>
</node>
<node CREATED="1295061106419" ID="Freemind_Link_199138221" MODIFIED="1295061110221" TEXT="Description">
<node CREATED="1295058551368" ID="Freemind_Link_113398013" MODIFIED="1295058558554" TEXT="Arbitrary String"/>
</node>
</node>
</node>
</node>
</map>
