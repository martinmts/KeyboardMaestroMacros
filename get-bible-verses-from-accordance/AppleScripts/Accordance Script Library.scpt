FasdUAS 1.101.10   ��   ��    k             l     ��  ��       Accordance Script Library     � 	 	 4   A c c o r d a n c e   S c r i p t   L i b r a r y   
  
 l     ��  ��      Version 1.10.4     �      V e r s i o n   1 . 1 0 . 4      l     ��  ��    !  Created by Joe Weaks, 2012     �   6   C r e a t e d   b y   J o e   W e a k s ,   2 0 1 2      l     ��������  ��  ��        l     ��  ��    � � The Accordance Script Library is a library of script handlers that enable inter-application workflows with Accordance Bible Software. Using the library, Services, Launcher Actions and other Scripts can interact with Accordance in multiple ways.     �  �   T h e   A c c o r d a n c e   S c r i p t   L i b r a r y   i s   a   l i b r a r y   o f   s c r i p t   h a n d l e r s   t h a t   e n a b l e   i n t e r - a p p l i c a t i o n   w o r k f l o w s   w i t h   A c c o r d a n c e   B i b l e   S o f t w a r e .   U s i n g   t h e   l i b r a r y ,   S e r v i c e s ,   L a u n c h e r   A c t i o n s   a n d   o t h e r   S c r i p t s   c a n   i n t e r a c t   w i t h   A c c o r d a n c e   i n   m u l t i p l e   w a y s .      l     ��  ��    M G This version of the ASL is tested under OSX 10.9.2 and Accordance 10.4     �   �   T h i s   v e r s i o n   o f   t h e   A S L   i s   t e s t e d   u n d e r   O S X   1 0 . 9 . 2   a n d   A c c o r d a n c e   1 0 . 4     !   l     ��������  ��  ��   !  " # " l      �� $ %��   $"This script's purpose is to be used as a script library for use in other scripting applications. To install the library, place this Accordance Script Library in:~/Library/Scripts/It does include handlers that allow it to be used as a template for creating Quicksilver and LaunchBar actions. It has a run handler that allows it to be launched from any scripting environment which will begin with a dialog box.-- The core of the Accordance Script Library is the handler:lookupAccordance(searchString, moduleType, whichModule, fieldType, inputFrom, outputTo, useCitationFormat, otherOptions)-- This handler can be called from other environments using "load script", such as:	set accScript to load script alias ((path to scripts folder from user domain as string) & "Accordance Script Library.scpt")			tell accScript to  lookupAccordance("hope", "English Texts", 1, "Words", "Script", "accordanceWindow", false, "")or 	tell accScript to lookupAccordance("John 11.35", "Scripture", "GNT-T", "Verses", "Script", "displayResult", true, "")    % � & &8  T h i s   s c r i p t ' s   p u r p o s e   i s   t o   b e   u s e d   a s   a   s c r i p t   l i b r a r y   f o r   u s e   i n   o t h e r   s c r i p t i n g   a p p l i c a t i o n s .    T o   i n s t a l l   t h e   l i b r a r y ,   p l a c e   t h i s   A c c o r d a n c e   S c r i p t   L i b r a r y   i n :  ~ / L i b r a r y / S c r i p t s /   I t   d o e s   i n c l u d e   h a n d l e r s   t h a t   a l l o w   i t   t o   b e   u s e d   a s   a   t e m p l a t e   f o r   c r e a t i n g   Q u i c k s i l v e r   a n d   L a u n c h B a r   a c t i o n s .   I t   h a s   a   r u n   h a n d l e r   t h a t   a l l o w s   i t   t o   b e   l a u n c h e d   f r o m   a n y   s c r i p t i n g   e n v i r o n m e n t   w h i c h   w i l l   b e g i n   w i t h   a   d i a l o g   b o x .   - -   T h e   c o r e   o f   t h e   A c c o r d a n c e   S c r i p t   L i b r a r y   i s   t h e   h a n d l e r :  l o o k u p A c c o r d a n c e ( s e a r c h S t r i n g ,   m o d u l e T y p e ,   w h i c h M o d u l e ,   f i e l d T y p e ,   i n p u t F r o m ,   o u t p u t T o ,   u s e C i t a t i o n F o r m a t ,   o t h e r O p t i o n s )   - -   T h i s   h a n d l e r   c a n   b e   c a l l e d   f r o m   o t h e r   e n v i r o n m e n t s   u s i n g   " l o a d   s c r i p t " ,   s u c h   a s :   	 s e t   a c c S c r i p t   t o   l o a d   s c r i p t   a l i a s   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   s t r i n g )   &   " A c c o r d a n c e   S c r i p t   L i b r a r y . s c p t " )  	 	  	 t e l l   a c c S c r i p t   t o     l o o k u p A c c o r d a n c e ( " h o p e " ,   " E n g l i s h   T e x t s " ,   1 ,   " W o r d s " ,   " S c r i p t " ,   " a c c o r d a n c e W i n d o w " ,   f a l s e ,   " " )   o r     	 t e l l   a c c S c r i p t   t o   l o o k u p A c c o r d a n c e ( " J o h n   1 1 . 3 5 " ,   " S c r i p t u r e " ,   " G N T - T " ,   " V e r s e s " ,   " S c r i p t " ,   " d i s p l a y R e s u l t " ,   t r u e ,   " " )   #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   + + %-------------------------------------    , � - - J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - *  . / . l     �� 0 1��   0    Property Settings  --    1 � 2 2 .     P r o p e r t y   S e t t i n g s     - - /  3 4 3 l     �� 5 6��   5 � � These are just default settings. Normally this script's routine is called from another script or Service, providing its own property settings. Alter these property settings in the Script or Action or Service that is using the Script Library    6 � 7 7�   T h e s e   a r e   j u s t   d e f a u l t   s e t t i n g s .   N o r m a l l y   t h i s   s c r i p t ' s   r o u t i n e   i s   c a l l e d   f r o m   a n o t h e r   s c r i p t   o r   S e r v i c e ,   p r o v i d i n g   i t s   o w n   p r o p e r t y   s e t t i n g s .   A l t e r   t h e s e   p r o p e r t y   s e t t i n g s   i n   t h e   S c r i p t   o r   A c t i o n   o r   S e r v i c e   t h a t   i s   u s i n g   t h e   S c r i p t   L i b r a r y 4  8 9 8 l     �� : ;��   : ? 9 See fuller documentation of the settings explained below    ; � < < r   S e e   f u l l e r   d o c u m e n t a t i o n   o f   t h e   s e t t i n g s   e x p l a i n e d   b e l o w 9  = > = l     ��������  ��  ��   >  ? @ ? j     �� A�� 0 
moduletype 
moduleType A m      B B � C C  E n g l i s h   T o o l s @  D E D l     �� F G��   F
 Options: {"Current Window", "Scripture", "English Texts", "Greek Texts", "Hebrew Texts", "English Tools", "Greek Tools", "Hebrew Tools", "Reference Tools", "General Tools", "Parallels", "User Tools", "User Notes", "Map", "Timeline", "Search All", "Save File"}    G � H H   O p t i o n s :   { " C u r r e n t   W i n d o w " ,   " S c r i p t u r e " ,   " E n g l i s h   T e x t s " ,   " G r e e k   T e x t s " ,   " H e b r e w   T e x t s " ,   " E n g l i s h   T o o l s " ,   " G r e e k   T o o l s " ,   " H e b r e w   T o o l s " ,   " R e f e r e n c e   T o o l s " ,   " G e n e r a l   T o o l s " ,   " P a r a l l e l s " ,   " U s e r   T o o l s " ,   " U s e r   N o t e s " ,   " M a p " ,   " T i m e l i n e " ,   " S e a r c h   A l l " ,   " S a v e   F i l e " } E  I J I l     ��������  ��  ��   J  K L K j    �� M�� 0 whichmodule whichModule M m    ����  L  N O N l     �� P Q��   P G A Options: {1, 2, 3, 4, 5, 6, 7, 8, 9, 0, "NRSVS", "NIV11", etc.}     Q � R R �   O p t i o n s :   { 1 ,   2 ,   3 ,   4 ,   5 ,   6 ,   7 ,   8 ,   9 ,   0 ,   " N R S V S " ,   " N I V 1 1 " ,   e t c . }   O  S T S l     ��������  ��  ��   T  U V U j    �� W�� 0 	fieldtype 	fieldType W m     X X � Y Y  D e f a u l t V  Z [ Z l     �� \ ]��   \ s m Options: {"Default", "Words", "Verses"} -- ignored unless output is "accordanceWindow" in a scripture module    ] � ^ ^ �   O p t i o n s :   { " D e f a u l t " ,   " W o r d s " ,   " V e r s e s " }   - -   i g n o r e d   u n l e s s   o u t p u t   i s   " a c c o r d a n c e W i n d o w "   i n   a   s c r i p t u r e   m o d u l e [  _ ` _ l     ��������  ��  ��   `  a b a j   	 �� c�� 0 outputto outputTo c m   	 
 d d � e e   a c c o r d a n c e W i n d o w b  f g f l     �� h i��   h q k Options: {"accordanceWindow", "returnResult", "pasteResult", "copyResult", "speakResult", "displayResult"}    i � j j �   O p t i o n s :   { " a c c o r d a n c e W i n d o w " ,   " r e t u r n R e s u l t " ,   " p a s t e R e s u l t " ,   " c o p y R e s u l t " ,   " s p e a k R e s u l t " ,   " d i s p l a y R e s u l t " } g  k l k l     ��������  ��  ��   l  m n m j    �� o�� &0 usecitationformat useCitationFormat o m    ��
�� boovfals n  p q p l     �� r s��   r J D Options: {true, false} -- ignored if outputTo is "accordanceWindow"    s � t t �   O p t i o n s :   { t r u e ,   f a l s e }   - -   i g n o r e d   i f   o u t p u t T o   i s   " a c c o r d a n c e W i n d o w " q  u v u l     ��������  ��  ��   v  w x w j    �� y�� 0 otheroptions otherOptions y m     z z � { {   x  | } | l     �� ~ ��   ~ "  a place for obscure options     � � � 8   a   p l a c e   f o r   o b s c u r e   o p t i o n s }  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � + %-------------------------------------    � � � � J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l     �� � ���   � !  User Settings Explained --    � � � � 6   U s e r   S e t t i n g s   E x p l a i n e d   - - �  � � � l     �� � ���   � + %-------------------------------------    � � � � J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l      �� � ���   �3-These are properties that allow the user to customize where to send the output (outputTo), which type of Accordance module to use (moduleType), which module of that type (whichModule) and how to format the results if not being displayed in Accordance (useCitationFormat).-- outputToThis property indicates what to do with the result. Options to choose from:a. "accordanceWindow" = displays the result in a new Accordance window of type specified in moduleType. (This option brings Accordance to the front and performs the search in an Accordance window. All the other options leave Accordance in the background and work in the front application, but they are limited to looking up verse references.) Controlling an Accordance window in this way will cause OSX to prompt you to allow the current app to control the user interfaice in System Preferences/Securityb. "returnResult" = returns the scripture text ready for further processing in a scripting environment such as Servicesc. "pasteResult" = pastes scripture text in front app using clipboard. Used for Quicksilver actions and other scripts. Do not use with Services which have their own replace text mechanism. Use returnResult to let the Service function replace text. d. "copyResult" = places the result of the search on the clipboarde. "speakResult" = speaks the results (only modern language texts; voice name can be placed in otherOptions)f. "displayResult" = displays scripture text in a HUD or Dialog Box in the app that called the action (Uses Quicksilver or Launchbar HUD if available). To display inside Accordance, use "accordanceWindow"
-- moduleTypeDesignate the type of module to search in Accordance ("English Texts", "Greek Texts", "Map", "English Tools", etc.). Note that Tools and Texts use the plural form, as is the practice in Accordance menus.Options to choose from:"Current Window" -- finds result in the current window open in Accordance ("Recycles" the front window). A new default window should open if one is not already present."Scripture" = used to indicate the user-sorted list of texts that includes all English, Greek and Hebrew. Used when not displaying the result in an Accordance Window"English Texts" = finds result in an English Text"Greek Texts" = finds result in a Greek Text"Hebrew Texts" = finds result in a Hebrew Text"English Tools" = finds result in a new Accordance English Tool window"Greek Tools" = finds result in a new Accordance Greek Tool window."Hebrew Tools" = finds result in a new Accordance English Tool window."Reference Tools" = finds result in a new Accordance Reference tool window"General Tools" = finds result in a new Accordance General Tool window"Parallels" = finds result in a new Accordance Parallel window"User Tools" = finds result in a new Accordance User Tool window"User Notes" = finds result in a new Accordance User Notes window"Map" = finds result in a new Accordance Map window"Timeline" = finds result in a new Accordance Timeline window"Search All" = finds result in a new Accordance Search All window"Save file" = opens a saved Accordance Tab/Window and finds the result in that save window. The file path is specified in otherOptions. Leave whichModule set to 1 and Field set to Default as they are ignored.-- fieldType"Verses" = searches verses in a new Accordance scripture text window; this is only option when not displaying the result in Accordance (ie. outputTo is set to "accordanceWindow")."Words" = displays words in a new Accordance scripture text window"Default" = will not adjust the default field type. Used with all non-scripture text Accordance windows such as Tools.(Due to limitations scripting Accordance, fieldType is actually ignored for all Accordance module types other than Scripture windows. For example, you can not change the field of a Greek Tool to English gloss. In some instances, you can adjust the default search "Field" for that window type to achieve the desired results. You must be savvy about sending a scripture reference to a Reference Tool, and a place name to a Map window, etc., in order to avoid errors. Be sure you're sending a search string in the appropriate font layout & language for that search field. )-- whichModuleSpecify which module to use for the results1, 2,� 0 = setting to an integer will pull the corresponding scripture from that position in the module list in Accordance"NRSVS, CEB, Anchor, UBS Lexicon, �" = setting to a module short name will use that module; the short module name must be as displayed in an Accordance File/New menu. Make sure the whichModule name coincides with the correct corresponding moduleType. Setting the whichModule: "NIV11" and the moduleType: "Greek Texts" will error.-- searchStringWill be a valid verse reference for verse searches and can be any text string for other searches-- useCitationFormatChoose whether to use the Citation format when not displaying the result in an Accordance Windowtrue = uses the Citation format false = uses a standard Verses formatNote that true and false are not wrapped in quotation marks. This setting is ignored when outputTo is set to "accordanceWindow". It is handy for othe outputs (ie. outputTo: "pasteResult", "displayResult", "speakResult" or "returnResult").  You can customize the Citation format in Accordance/Preferences/Citation.-- otherOptionsA place for obscure options; often empty and unusedCan specify voice name {"Victoria", "Fred", ...} if output is "speakResult"Can provide the file path when moduleType is "Save File". Format is: "Macintosh HD:Users:MyUsername:FileName"Can also indicate copy and paste text results from an Accordance Window (see below)--------------------------------------------------- Note:Note that most properties are given inside quotation marks.Only certain configurations are supported or just make sense or function together. Only Scripture Verses can be searched without displaying in Accordance. Some options will be ignored if not applicable. (eg. useCitationFormat does not apply when displaying the output in an Accordance window. The fieldType of Verses or Words is ignored when not displaying a Scripture module in Accordance.)Possible configurations:outputTo: "returnResult" / "displayResult" / "pasteResult" / "speakResult" / "copyResult"moduletype: "Scripture"fieldType: "Verses"whichModule: 1 / 2 / 3 / � / "NRSV" / "GNT28-T" / �useCitationFormat: true / falseoutputTo: "accordanceWindow"moduleType: "English Texts" / "Greek Texts" / "Hebrew Texts" (Avoid using "Scripture" when displaying in an Accordance Window. The best practice is to indicate which group the text comes from.)fieldType: "Verses" / "Words"whichModule: 1 / 2 / 3 / � / "NRSV" / "GNT28-T" / �outputTo: "accordanceWindow"moduleType: "User Notes" / "User Tools" / "General Tools" / "English Tools" / "Greek Tools" / "Hebrew Tools" / "Reference Tools" / "Map"fieldType: "Default"whichModule: 1 / 2 / 3 /  � / "PhotoGuide" / "UBS Lexicon" / "BDB" / "WBC-NT" / "OT in NT" / "Beige" / �outputTo: "accordanceWindow"moduleType: "Current Window" / "Timeline" / "Search All"fieldType: "Default"whichModule: 1-- Tip: If there is a particular Tool where you often want to ad hoc search a particular field from wherever you are, use the "Save File":outputTo: "accordanceWindow"moduleType: "Save File"fieldType: "Default"whichModule: 1otherOptions: "Macintosh HD:Users:MyHomeFolder:My Save File"    � � � �:Z  T h e s e   a r e   p r o p e r t i e s   t h a t   a l l o w   t h e   u s e r   t o   c u s t o m i z e   w h e r e   t o   s e n d   t h e   o u t p u t   ( o u t p u t T o ) ,   w h i c h   t y p e   o f   A c c o r d a n c e   m o d u l e   t o   u s e   ( m o d u l e T y p e ) ,   w h i c h   m o d u l e   o f   t h a t   t y p e   ( w h i c h M o d u l e )   a n d   h o w   t o   f o r m a t   t h e   r e s u l t s   i f   n o t   b e i n g   d i s p l a y e d   i n   A c c o r d a n c e   ( u s e C i t a t i o n F o r m a t ) .   - -   o u t p u t T o  T h i s   p r o p e r t y   i n d i c a t e s   w h a t   t o   d o   w i t h   t h e   r e s u l t .    O p t i o n s   t o   c h o o s e   f r o m :  a .   " a c c o r d a n c e W i n d o w "   =   d i s p l a y s   t h e   r e s u l t   i n   a   n e w   A c c o r d a n c e   w i n d o w   o f   t y p e   s p e c i f i e d   i n   m o d u l e T y p e .    ( T h i s   o p t i o n   b r i n g s   A c c o r d a n c e   t o   t h e   f r o n t   a n d   p e r f o r m s   t h e   s e a r c h   i n   a n   A c c o r d a n c e   w i n d o w .   A l l   t h e   o t h e r   o p t i o n s   l e a v e   A c c o r d a n c e   i n   t h e   b a c k g r o u n d   a n d   w o r k   i n   t h e   f r o n t   a p p l i c a t i o n ,   b u t   t h e y   a r e   l i m i t e d   t o   l o o k i n g   u p   v e r s e   r e f e r e n c e s . )   C o n t r o l l i n g   a n   A c c o r d a n c e   w i n d o w   i n   t h i s   w a y   w i l l   c a u s e   O S X   t o   p r o m p t   y o u   t o   a l l o w   t h e   c u r r e n t   a p p   t o   c o n t r o l   t h e   u s e r   i n t e r f a i c e   i n   S y s t e m   P r e f e r e n c e s / S e c u r i t y  b .   " r e t u r n R e s u l t "   =   r e t u r n s   t h e   s c r i p t u r e   t e x t   r e a d y   f o r   f u r t h e r   p r o c e s s i n g   i n   a   s c r i p t i n g   e n v i r o n m e n t   s u c h   a s   S e r v i c e s  c .   " p a s t e R e s u l t "   =   p a s t e s   s c r i p t u r e   t e x t   i n   f r o n t   a p p   u s i n g   c l i p b o a r d .   U s e d   f o r   Q u i c k s i l v e r   a c t i o n s   a n d   o t h e r   s c r i p t s .   D o   n o t   u s e   w i t h   S e r v i c e s   w h i c h   h a v e   t h e i r   o w n   r e p l a c e   t e x t   m e c h a n i s m .   U s e   r e t u r n R e s u l t   t o   l e t   t h e   S e r v i c e   f u n c t i o n   r e p l a c e   t e x t .    d .   " c o p y R e s u l t "   =   p l a c e s   t h e   r e s u l t   o f   t h e   s e a r c h   o n   t h e   c l i p b o a r d  e .   " s p e a k R e s u l t "   =   s p e a k s   t h e   r e s u l t s   ( o n l y   m o d e r n   l a n g u a g e   t e x t s ;   v o i c e   n a m e   c a n   b e   p l a c e d   i n   o t h e r O p t i o n s )  f .   " d i s p l a y R e s u l t "   =   d i s p l a y s   s c r i p t u r e   t e x t   i n   a   H U D   o r   D i a l o g   B o x   i n   t h e   a p p   t h a t   c a l l e d   t h e   a c t i o n   ( U s e s   Q u i c k s i l v e r   o r   L a u n c h b a r   H U D   i f   a v a i l a b l e ) .   T o   d i s p l a y   i n s i d e   A c c o r d a n c e ,   u s e   " a c c o r d a n c e W i n d o w "  
  - -   m o d u l e T y p e  D e s i g n a t e   t h e   t y p e   o f   m o d u l e   t o   s e a r c h   i n   A c c o r d a n c e   ( " E n g l i s h   T e x t s " ,   " G r e e k   T e x t s " ,   " M a p " ,   " E n g l i s h   T o o l s " ,   e t c . ) .   N o t e   t h a t   T o o l s   a n d   T e x t s   u s e   t h e   p l u r a l   f o r m ,   a s   i s   t h e   p r a c t i c e   i n   A c c o r d a n c e   m e n u s .  O p t i o n s   t o   c h o o s e   f r o m :  " C u r r e n t   W i n d o w "   - -   f i n d s   r e s u l t   i n   t h e   c u r r e n t   w i n d o w   o p e n   i n   A c c o r d a n c e   ( " R e c y c l e s "   t h e   f r o n t   w i n d o w ) .   A   n e w   d e f a u l t   w i n d o w   s h o u l d   o p e n   i f   o n e   i s   n o t   a l r e a d y   p r e s e n t .  " S c r i p t u r e "   =   u s e d   t o   i n d i c a t e   t h e   u s e r - s o r t e d   l i s t   o f   t e x t s   t h a t   i n c l u d e s   a l l   E n g l i s h ,   G r e e k   a n d   H e b r e w .   U s e d   w h e n   n o t   d i s p l a y i n g   t h e   r e s u l t   i n   a n   A c c o r d a n c e   W i n d o w  " E n g l i s h   T e x t s "   =   f i n d s   r e s u l t   i n   a n   E n g l i s h   T e x t  " G r e e k   T e x t s "   =   f i n d s   r e s u l t   i n   a   G r e e k   T e x t  " H e b r e w   T e x t s "   =   f i n d s   r e s u l t   i n   a   H e b r e w   T e x t  " E n g l i s h   T o o l s "   =   f i n d s   r e s u l t   i n   a   n e w   A c c o r d a n c e   E n g l i s h   T o o l   w i n d o w  " G r e e k   T o o l s "   =   f i n d s   r e s u l t   i n   a   n e w   A c c o r d a n c e   G r e e k   T o o l   w i n d o w .  " H e b r e w   T o o l s "   =   f i n d s   r e s u l t   i n   a   n e w   A c c o r d a n c e   E n g l i s h   T o o l   w i n d o w .  " R e f e r e n c e   T o o l s "   =   f i n d s   r e s u l t   i n   a   n e w   A c c o r d a n c e   R e f e r e n c e   t o o l   w i n d o w  " G e n e r a l   T o o l s "   =   f i n d s   r e s u l t   i n   a   n e w   A c c o r d a n c e   G e n e r a l   T o o l   w i n d o w  " P a r a l l e l s "   =   f i n d s   r e s u l t   i n   a   n e w   A c c o r d a n c e   P a r a l l e l   w i n d o w  " U s e r   T o o l s "   =   f i n d s   r e s u l t   i n   a   n e w   A c c o r d a n c e   U s e r   T o o l   w i n d o w  " U s e r   N o t e s "   =   f i n d s   r e s u l t   i n   a   n e w   A c c o r d a n c e   U s e r   N o t e s   w i n d o w  " M a p "   =   f i n d s   r e s u l t   i n   a   n e w   A c c o r d a n c e   M a p   w i n d o w  " T i m e l i n e "   =   f i n d s   r e s u l t   i n   a   n e w   A c c o r d a n c e   T i m e l i n e   w i n d o w  " S e a r c h   A l l "   =   f i n d s   r e s u l t   i n   a   n e w   A c c o r d a n c e   S e a r c h   A l l   w i n d o w  " S a v e   f i l e "   =   o p e n s   a   s a v e d   A c c o r d a n c e   T a b / W i n d o w   a n d   f i n d s   t h e   r e s u l t   i n   t h a t   s a v e   w i n d o w .   T h e   f i l e   p a t h   i s   s p e c i f i e d   i n   o t h e r O p t i o n s .   L e a v e   w h i c h M o d u l e   s e t   t o   1   a n d   F i e l d   s e t   t o   D e f a u l t   a s   t h e y   a r e   i g n o r e d .   - -   f i e l d T y p e  " V e r s e s "   =   s e a r c h e s   v e r s e s   i n   a   n e w   A c c o r d a n c e   s c r i p t u r e   t e x t   w i n d o w ;   t h i s   i s   o n l y   o p t i o n   w h e n   n o t   d i s p l a y i n g   t h e   r e s u l t   i n   A c c o r d a n c e   ( i e .   o u t p u t T o   i s   s e t   t o   " a c c o r d a n c e W i n d o w " ) .  " W o r d s "   =   d i s p l a y s   w o r d s   i n   a   n e w   A c c o r d a n c e   s c r i p t u r e   t e x t   w i n d o w  " D e f a u l t "   =   w i l l   n o t   a d j u s t   t h e   d e f a u l t   f i e l d   t y p e .   U s e d   w i t h   a l l   n o n - s c r i p t u r e   t e x t   A c c o r d a n c e   w i n d o w s   s u c h   a s   T o o l s .  ( D u e   t o   l i m i t a t i o n s   s c r i p t i n g   A c c o r d a n c e ,   f i e l d T y p e   i s   a c t u a l l y   i g n o r e d   f o r   a l l   A c c o r d a n c e   m o d u l e   t y p e s   o t h e r   t h a n   S c r i p t u r e   w i n d o w s .   F o r   e x a m p l e ,   y o u   c a n   n o t   c h a n g e   t h e   f i e l d   o f   a   G r e e k   T o o l   t o   E n g l i s h   g l o s s .   I n   s o m e   i n s t a n c e s ,   y o u   c a n   a d j u s t   t h e   d e f a u l t   s e a r c h   " F i e l d "   f o r   t h a t   w i n d o w   t y p e   t o   a c h i e v e   t h e   d e s i r e d   r e s u l t s .   Y o u   m u s t   b e   s a v v y   a b o u t   s e n d i n g   a   s c r i p t u r e   r e f e r e n c e   t o   a   R e f e r e n c e   T o o l ,   a n d   a   p l a c e   n a m e   t o   a   M a p   w i n d o w ,   e t c . ,   i n   o r d e r   t o   a v o i d   e r r o r s .   B e   s u r e   y o u ' r e   s e n d i n g   a   s e a r c h   s t r i n g   i n   t h e   a p p r o p r i a t e   f o n t   l a y o u t   &   l a n g u a g e   f o r   t h a t   s e a r c h   f i e l d .   )   - -   w h i c h M o d u l e  S p e c i f y   w h i c h   m o d u l e   t o   u s e   f o r   t h e   r e s u l t s  1 ,   2 , &   0   =   s e t t i n g   t o   a n   i n t e g e r   w i l l   p u l l   t h e   c o r r e s p o n d i n g   s c r i p t u r e   f r o m   t h a t   p o s i t i o n   i n   t h e   m o d u l e   l i s t   i n   A c c o r d a n c e  " N R S V S ,   C E B ,   A n c h o r ,   U B S   L e x i c o n ,   & "   =   s e t t i n g   t o   a   m o d u l e   s h o r t   n a m e   w i l l   u s e   t h a t   m o d u l e ;   t h e   s h o r t   m o d u l e   n a m e   m u s t   b e   a s   d i s p l a y e d   i n   a n   A c c o r d a n c e   F i l e / N e w   m e n u .   M a k e   s u r e   t h e   w h i c h M o d u l e   n a m e   c o i n c i d e s   w i t h   t h e   c o r r e c t   c o r r e s p o n d i n g   m o d u l e T y p e .   S e t t i n g   t h e   w h i c h M o d u l e :   " N I V 1 1 "   a n d   t h e   m o d u l e T y p e :   " G r e e k   T e x t s "   w i l l   e r r o r .   - -   s e a r c h S t r i n g  W i l l   b e   a   v a l i d   v e r s e   r e f e r e n c e   f o r   v e r s e   s e a r c h e s   a n d   c a n   b e   a n y   t e x t   s t r i n g   f o r   o t h e r   s e a r c h e s   - -   u s e C i t a t i o n F o r m a t  C h o o s e   w h e t h e r   t o   u s e   t h e   C i t a t i o n   f o r m a t   w h e n   n o t   d i s p l a y i n g   t h e   r e s u l t   i n   a n   A c c o r d a n c e   W i n d o w  t r u e   =   u s e s   t h e   C i t a t i o n   f o r m a t    f a l s e   =   u s e s   a   s t a n d a r d   V e r s e s   f o r m a t  N o t e   t h a t   t r u e   a n d   f a l s e   a r e   n o t   w r a p p e d   i n   q u o t a t i o n   m a r k s .   T h i s   s e t t i n g   i s   i g n o r e d   w h e n   o u t p u t T o   i s   s e t   t o   " a c c o r d a n c e W i n d o w " .   I t   i s   h a n d y   f o r   o t h e   o u t p u t s   ( i e .   o u t p u t T o :   " p a s t e R e s u l t " ,   " d i s p l a y R e s u l t " ,   " s p e a k R e s u l t "   o r   " r e t u r n R e s u l t " ) .     Y o u   c a n   c u s t o m i z e   t h e   C i t a t i o n   f o r m a t   i n   A c c o r d a n c e / P r e f e r e n c e s / C i t a t i o n .   - -   o t h e r O p t i o n s  A   p l a c e   f o r   o b s c u r e   o p t i o n s ;   o f t e n   e m p t y   a n d   u n u s e d  C a n   s p e c i f y   v o i c e   n a m e   { " V i c t o r i a " ,   " F r e d " ,   . . . }   i f   o u t p u t   i s   " s p e a k R e s u l t "  C a n   p r o v i d e   t h e   f i l e   p a t h   w h e n   m o d u l e T y p e   i s   " S a v e   F i l e " .   F o r m a t   i s :   " M a c i n t o s h   H D : U s e r s : M y U s e r n a m e : F i l e N a m e "  C a n   a l s o   i n d i c a t e   c o p y   a n d   p a s t e   t e x t   r e s u l t s   f r o m   a n   A c c o r d a n c e   W i n d o w   ( s e e   b e l o w )   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   - -   N o t e :  N o t e   t h a t   m o s t   p r o p e r t i e s   a r e   g i v e n   i n s i d e   q u o t a t i o n   m a r k s .  O n l y   c e r t a i n   c o n f i g u r a t i o n s   a r e   s u p p o r t e d   o r   j u s t   m a k e   s e n s e   o r   f u n c t i o n   t o g e t h e r .   O n l y   S c r i p t u r e   V e r s e s   c a n   b e   s e a r c h e d   w i t h o u t   d i s p l a y i n g   i n   A c c o r d a n c e .   S o m e   o p t i o n s   w i l l   b e   i g n o r e d   i f   n o t   a p p l i c a b l e .   ( e g .   u s e C i t a t i o n F o r m a t   d o e s   n o t   a p p l y   w h e n   d i s p l a y i n g   t h e   o u t p u t   i n   a n   A c c o r d a n c e   w i n d o w .   T h e   f i e l d T y p e   o f   V e r s e s   o r   W o r d s   i s   i g n o r e d   w h e n   n o t   d i s p l a y i n g   a   S c r i p t u r e   m o d u l e   i n   A c c o r d a n c e . )   P o s s i b l e   c o n f i g u r a t i o n s :  o u t p u t T o :   " r e t u r n R e s u l t "   /   " d i s p l a y R e s u l t "   /   " p a s t e R e s u l t "   /   " s p e a k R e s u l t "   /   " c o p y R e s u l t "  m o d u l e t y p e :   " S c r i p t u r e "  f i e l d T y p e :   " V e r s e s "  w h i c h M o d u l e :   1   /   2   /   3   /   &   /   " N R S V "   /   " G N T 2 8 - T "   /   &  u s e C i t a t i o n F o r m a t :   t r u e   /   f a l s e   o u t p u t T o :   " a c c o r d a n c e W i n d o w "  m o d u l e T y p e :   " E n g l i s h   T e x t s "   /   " G r e e k   T e x t s "   /   " H e b r e w   T e x t s "    ( A v o i d   u s i n g   " S c r i p t u r e "   w h e n   d i s p l a y i n g   i n   a n   A c c o r d a n c e   W i n d o w .   T h e   b e s t   p r a c t i c e   i s   t o   i n d i c a t e   w h i c h   g r o u p   t h e   t e x t   c o m e s   f r o m . )  f i e l d T y p e :   " V e r s e s "   /   " W o r d s "  w h i c h M o d u l e :   1   /   2   /   3   /   &   /   " N R S V "   /   " G N T 2 8 - T "   /   &   o u t p u t T o :   " a c c o r d a n c e W i n d o w "  m o d u l e T y p e :   " U s e r   N o t e s "   /   " U s e r   T o o l s "   /   " G e n e r a l   T o o l s "   /   " E n g l i s h   T o o l s "   /   " G r e e k   T o o l s "   /   " H e b r e w   T o o l s "   /   " R e f e r e n c e   T o o l s "   /   " M a p "  f i e l d T y p e :   " D e f a u l t "  w h i c h M o d u l e :   1   /   2   /   3   /     &   /   " P h o t o G u i d e "   /   " U B S   L e x i c o n "   /   " B D B "   /   " W B C - N T "   /   " O T   i n   N T "   /   " B e i g e "   /   &   o u t p u t T o :   " a c c o r d a n c e W i n d o w "  m o d u l e T y p e :   " C u r r e n t   W i n d o w "   /   " T i m e l i n e "   /   " S e a r c h   A l l "  f i e l d T y p e :   " D e f a u l t "  w h i c h M o d u l e :   1   - -   T i p :   I f   t h e r e   i s   a   p a r t i c u l a r   T o o l   w h e r e   y o u   o f t e n   w a n t   t o   a d   h o c   s e a r c h   a   p a r t i c u l a r   f i e l d   f r o m   w h e r e v e r   y o u   a r e ,   u s e   t h e   " S a v e   F i l e " :  o u t p u t T o :   " a c c o r d a n c e W i n d o w "  m o d u l e T y p e :   " S a v e   F i l e "  f i e l d T y p e :   " D e f a u l t "  w h i c h M o d u l e :   1  o t h e r O p t i o n s :   " M a c i n t o s h   H D : U s e r s : M y H o m e F o l d e r : M y   S a v e   F i l e "  �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � + %-------------------------------------    � � � � J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l     �� � ���   � %  End User Settings  Explained--    � � � � >   E n d   U s e r   S e t t i n g s     E x p l a i n e d - - �  � � � l     �� � ���   � + %-------------------------------------    � � � � J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � + %-------------------------------------    � � � � J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l     �� � ���   � X R The remainder of the script should only be altered if you know what you're doing.    � � � � �   T h e   r e m a i n d e r   o f   t h e   s c r i p t   s h o u l d   o n l y   b e   a l t e r e d   i f   y o u   k n o w   w h a t   y o u ' r e   d o i n g . �  � � � l     �� � ���   � + %-------------------------------------    � � � � J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 9 3 Use this run handler when run as a compiled script    � � � � f   U s e   t h i s   r u n   h a n d l e r   w h e n   r u n   a s   a   c o m p i l e d   s c r i p t �  � � � i     � � � I     �� ���
�� .aevtoappnull  �   � **** � J      ����  ��   � k     2 � �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � Z T setting searchString to "doQuery" will prompt a dialog asking for the search string    � � � � �   s e t t i n g   s e a r c h S t r i n g   t o   " d o Q u e r y "   w i l l   p r o m p t   a   d i a l o g   a s k i n g   f o r   t h e   s e a r c h   s t r i n g �  � � � r      � � � m      � � � � �  d o Q u e r y � o      ���� 0 searchstring searchString �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � - ' Gets selected text using the clipboard    � � � � N   G e t s   s e l e c t e d   t e x t   u s i n g   t h e   c l i p b o a r d �  � � � l   �� � ���   � !  doKeyCombination("c", "x")    � � � � 6   d o K e y C o m b i n a t i o n ( " c " ,   " x " ) �  � � � l   �� � ���   �  	 delay .2    � � � �    d e l a y   . 2 �  � � � l   �� � ���   � ( " set searchString to the clipboard    � � � � D   s e t   s e a r c h S t r i n g   t o   t h e   c l i p b o a r d �  � � � l   ��������  ��  ��   �  � � � r     � � � m     � � � � �  S c r i p t � o      ���� 0 	inputfrom 	inputFrom �  � � � r    / � � � I    -�� ����� $0 lookupaccordance lookupAccordance �  � � � o   	 
���� 0 searchstring searchString �  � � � o   
 ���� 0 
moduletype 
moduleType �  � � � o    ���� 0 whichmodule whichModule �    o    ���� 0 	fieldtype 	fieldType  o    ���� 0 	inputfrom 	inputFrom  o    ���� 0 outputto outputTo  o    $���� &0 usecitationformat useCitationFormat �� o   $ )���� 0 otheroptions otherOptions��  ��   � o      ���� 0 	theresult 	theResult � 	��	 L   0 2

 o   0 1���� 0 	theresult 	theResult��   �  l     ��������  ��  ��    l     ����   / ) Handler to serve as a Quicksilver action    � R   H a n d l e r   t o   s e r v e   a s   a   Q u i c k s i l v e r   a c t i o n  w       i     I     ����
�� .DAEDopnt****       utxt o      ���� 0 searchstring searchString��   k     T  l     ��������  ��  ��    l     ����   7 1 force front app in front of QS, due to bug in QS    �   b   f o r c e   f r o n t   a p p   i n   f r o n t   o f   Q S ,   d u e   t o   b u g   i n   Q S !"! O     #$# k    %% &'& I   	������
�� .miscactvnull��� ��� null��  ��  ' (�( r   
 )*) 6  
 +,+ n   
 -.- 1    �~
�~ 
pnam. 4  
 �}/
�} 
prcs/ m    �|�| , =   010 1    �{
�{ 
pisf1 m    �z
�z boovtrue* o      �y�y 0 frontapp frontApp�  $ m     22�                                                                                  sevs  alis    �  Macintosh HD               ��8�H+  ��~System Events.app                                              ��Z�A|�        ����  	                CoreServices    ��$      �A�9    ��~��{��z  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  " 343 O   *565 I  $ )�x�w�v
�x .miscactvnull��� ��� null�w  �v  6 4    !�u7
�u 
capp7 o     �t�t 0 frontapp frontApp4 898 l  + +�s�r�q�s  �r  �q  9 :;: r   + .<=< m   + ,>> �??  Q u i c k s i l v e r= o      �p�p 0 	inputfrom 	inputFrom; @�o@ I   / T�nA�m�n $0 lookupaccordance lookupAccordanceA BCB o   0 1�l�l 0 searchstring searchStringC DED o   1 6�k�k 0 
moduletype 
moduleTypeE FGF o   6 ;�j�j 0 whichmodule whichModuleG HIH o   ; @�i�i 0 	fieldtype 	fieldTypeI JKJ o   @ A�h�h 0 	inputfrom 	inputFromK LML o   A F�g�g 0 outputto outputToM NON o   F K�f�f &0 usecitationformat useCitationFormatO P�eP o   K P�d�d 0 otheroptions otherOptions�e  �m  �o  �                                                                                  daed  alis    �  Macintosh HD               ��8�H+   0QQuicksilver.app                                                ���Ξa        ����  	                Applications    ��$      Ξ�g     0Q {�  ��  7Macintosh HD:Users: joew: Applications: Quicksilver.app      Q u i c k s i l v e r . a p p    M a c i n t o s h   H D  'Users/joew/Applications/Quicksilver.app   /    ��   QRQ l     �c�b�a�c  �b  �a  R STS l     �`UV�`  U - ' Handler to serve as a Launchbar action   V �WW N   H a n d l e r   t o   s e r v e   a s   a   L a u n c h b a r   a c t i o nT XYX w      Z[Z i    \]\ I      �_^�^�_ 0 handle_string  ^ _�]_ o      �\�\ 0 searchstring searchString�]  �^  ] k     /`` aba r     cdc m     ee �ff  L a u n c h B a rd o      �[�[ 0 	inputfrom 	inputFromb ghg l   �Zij�Z  i * $tell application "LaunchBar" to hide   j �kk H t e l l   a p p l i c a t i o n   " L a u n c h B a r "   t o   h i d eh lml I   	�Yn�X
�Y .GURLGURLnull��� ��� TEXTn m    oo �pp   x - l a u n c h b a r : h i d e�X  m q�Wq I   
 /�Vr�U�V $0 lookupaccordance lookupAccordancer sts o    �T�T 0 searchstring searchStringt uvu o    �S�S 0 
moduletype 
moduleTypev wxw o    �R�R 0 whichmodule whichModulex yzy o    �Q�Q 0 	fieldtype 	fieldTypez {|{ o    �P�P 0 	inputfrom 	inputFrom| }~} o    !�O�O 0 outputto outputTo~ � o   ! &�N�N &0 usecitationformat useCitationFormat� ��M� o   & +�L�L 0 otheroptions otherOptions�M  �U  �W  [v                                                                                      @ alis       Macintosh HD               ��8�H+  �ؠLaunchBar.app                                                  ����            ����  A                 ��$                L a u n c h B a r . a p p    M a c i n t o s h   H D  Applications/LaunchBar.app  / ��      Y ��� l     �K�J�I�K  �J  �I  � ��� l     �H�G�F�H  �G  �F  � ��� l     �E���E  � + %-------------------------------------   � ��� J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �D���D  �   Accordance Handlers --   � ��� .   A c c o r d a n c e   H a n d l e r s   - -� ��� l     �C���C  � + %-------------------------------------   � ��� J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �B�A�@�B  �A  �@  � ��� i    !��� I      �?��>�? .0 getmodulenamefromlist getModuleNameFromList� ��=� o      �<�< 0 modulenumber moduleNumber�=  �>  � k     �� ��� l     �;���;  � U O returns module short name corresponding to the order in the list in Accordance   � ��� �   r e t u r n s   m o d u l e   s h o r t   n a m e   c o r r e s p o n d i n g   t o   t h e   o r d e r   i n   t h e   l i s t   i n   A c c o r d a n c e� ��� r     ��� I     �:�9�8�: 0 getmodulelist getModuleList�9  �8  � o      �7�7 0 
modulelist 
moduleList� ��� r    ��� n    ��� 4   	 �6�
�6 
cobj� o   
 �5�5 0 modulenumber moduleNumber� o    	�4�4 0 
modulelist 
moduleList� o      �3�3 0 
modulename 
moduleName� ��� l   �2�1�0�2  �1  �0  � ��� l   �/���/  � ' ! Remove leading control character   � ��� B   R e m o v e   l e a d i n g   c o n t r o l   c h a r a c t e r� ��� l   �.���.  � _ Y if text 1 thru 1 of moduleName is "" then set moduleName to text 2 thru -1 of moduleName   � ��� �   i f   t e x t   1   t h r u   1   o f   m o d u l e N a m e   i s   " "   t h e n   s e t   m o d u l e N a m e   t o   t e x t   2   t h r u   - 1   o f   m o d u l e N a m e� ��� r    ��� n   ��� I    �-��,�- .0 removeextracharacters removeExtraCharacters� ��+� o    �*�* 0 
modulename 
moduleName�+  �,  �  f    � o      �)�) 0 
modulename 
moduleName� ��� l   �(�'�&�(  �'  �&  � ��%� L    �� o    �$�$ 0 
modulename 
moduleName�%  � ��� l     �#�"�!�#  �"  �!  � ��� i   " %��� I      � ���  0 getmodulelist getModuleList�  �  � k     �� ��� l     ����  � 4 . returns a list of all Accordance text modules   � ��� \   r e t u r n s   a   l i s t   o f   a l l   A c c o r d a n c e   t e x t   m o d u l e s� ��� O    ��� r    ��� I   	���
� .AccdVerL****      � ****�  �  � o      �� 0 	theresult 	theResult� m     ���                                                                                  ACC0  alis    ^  Macintosh HD               ��8�H+  �ؠAccordance.app                                                 ��M�?�2        ����  	                Applications    ��$      �?�    �ؠ  )Macintosh HD:Applications: Accordance.app     A c c o r d a n c e . a p p    M a c i n t o s h   H D  Applications/Accordance.app   / ��  � ��� L    �� o    �� 0 	theresult 	theResult�  � ��� l     ����  �  �  � ��� i   & )��� I      ���� $0 getscripturetext getScriptureText� ��� o      �� 0 
modulename 
moduleName� ��� o      �� 0 textreference textReference� ��� o      ��  0 citationformat citationFormat�  �  � k     �� ��� l     ����  � 3 - returns scripture text from the named module   � ��� Z   r e t u r n s   s c r i p t u r e   t e x t   f r o m   t h e   n a m e d   m o d u l e� ��� l     ����  � Y S setting citationFormat to true will use the custom citation format from Accordance   � ��� �   s e t t i n g   c i t a t i o n F o r m a t   t o   t r u e   w i l l   u s e   t h e   c u s t o m   c i t a t i o n   f o r m a t   f r o m   A c c o r d a n c e� ��� O    ��� r    ��� I   ���

� .AccdTxRf****      � ****� J    	�� ��� o    �	�	 0 
modulename 
moduleName� ��� o    �� 0 textreference textReference� ��� o    ��  0 citationformat citationFormat�  �
  � o      �� 0 	theresult 	theResult� m     ���                                                                                  ACC0  alis    ^  Macintosh HD               ��8�H+  �ؠAccordance.app                                                 ��M�?�2        ����  	                Applications    ��$      �?�    �ؠ  )Macintosh HD:Applications: Accordance.app     A c c o r d a n c e . a p p    M a c i n t o s h   H D  Applications/Accordance.app   / ��  �  �  L     o    �� 0 	theresult 	theResult�  �  l     ��� �  �  �     i   * - I      ������ 0 checkenglish checkEnglish 	��	 o      ���� 0 
modulename 
moduleName��  ��   k     

  l     ����   6 0 returns true if the module is an English module    � `   r e t u r n s   t r u e   i f   t h e   m o d u l e   i s   a n   E n g l i s h   m o d u l e  O     r     I   ����
�� .AccdIsEg****      � **** J     �� o    ���� 0 
modulename 
moduleName��  ��   o      ���� 0 	theresult 	theResult m     �                                                                                  ACC0  alis    ^  Macintosh HD               ��8�H+  �ؠAccordance.app                                                 ��M�?�2        ����  	                Applications    ��$      �?�    �ؠ  )Macintosh HD:Applications: Accordance.app     A c c o r d a n c e . a p p    M a c i n t o s h   H D  Applications/Accordance.app   / ��   �� L     o    ���� 0 	theresult 	theResult��    l     ��������  ��  ��    l     �� !��    + %-------------------------------------   ! �"" J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - #$# l     ��%&��  % ' ! Accordance Lookup script library   & �'' B   A c c o r d a n c e   L o o k u p   s c r i p t   l i b r a r y$ ()( l     ��*+��  * b \ This versatile routine can be called from an external script using the load script command.   + �,, �   T h i s   v e r s a t i l e   r o u t i n e   c a n   b e   c a l l e d   f r o m   a n   e x t e r n a l   s c r i p t   u s i n g   t h e   l o a d   s c r i p t   c o m m a n d .) -.- i   . 1/0/ I      ��1���� $0 lookupaccordance lookupAccordance1 232 o      ���� 0 search_string search_String3 454 o      ���� 0 module_type module_Type5 676 o      ���� 0 which_module which_Module7 898 o      ���� 0 
field_type 
field_Type9 :;: o      ���� 0 
input_from 
input_From; <=< o      ���� 0 	output_to 	output_To= >?> o      ���� (0 use_citationformat use_CitationFormat? @��@ o      ���� 0 other_options other_Options��  ��  0 k    kAA BCB l     ��DE��  D      E �FF   C GHG l     ��IJ��  I 9 3 display dialog "Entering lookupAccordance Handler"   J �KK f   d i s p l a y   d i a l o g   " E n t e r i n g   l o o k u p A c c o r d a n c e   H a n d l e r "H LML l     ��������  ��  ��  M NON l     ��PQ��  P 4 . Check to see if need to ask for search string   Q �RR \   C h e c k   t o   s e e   i f   n e e d   t o   a s k   f o r   s e a r c h   s t r i n gO STS Z     #UV��WU G     XYX l    Z����Z =    [\[ o     ���� 0 search_string search_String\ m    ]] �^^  d o Q u e r y��  ��  Y l   	_����_ =   	`a` o    ���� 0 search_string search_Stringa m    bb �cc  ��  ��  V k    dd efe r    ghg n    iji 1    ��
�� 
ttxtj l   k����k I   ��lm
�� .sysodlogaskr        TEXTl m    nn �oo " E n t e r   s e a r c h   t e x tm ��p��
�� 
dtxtp m    qq �rr  J o h n   1 1 : 3 5��  ��  ��  h o      ���� 0 search_string search_Stringf s��s r    tut m    ��
�� boovtrueu o      ���� 0 doquery doQuery��  ��  W r     #vwv m     !��
�� boovfalsw o      ���� 0 doquery doQueryT xyx l  $ $��������  ��  ��  y z{z l  $ $��������  ��  ��  { |}| Z   $i~���~ C  $ '��� o   $ %���� 0 	output_to 	output_To� m   % &�� ���   a c c o r d a n c e W i n d o w k   * 8�� ��� I   * 4������� $0 showinaccordance showInAccordance� ��� o   + ,���� 0 search_string search_String� ��� o   , -���� 0 module_type module_Type� ��� o   - .���� 0 which_module which_Module� ��� o   . /���� 0 
field_type 
field_Type� ���� o   / 0���� 0 other_options other_Options��  ��  � ���� L   5 8�� l  5 7������ 1   5 7��
�� 
rslt��  ��  ��  ��  � k   ;i�� ��� l  ; ;������  � : 4 use Accordance Apple event calls to obtain the text   � ��� h   u s e   A c c o r d a n c e   A p p l e   e v e n t   c a l l s   t o   o b t a i n   t h e   t e x t� ��� l  ; ;������  � b \ ignores module_Type which should be set to "English/Greek/Hebrew Texts" or just "Scripture"   � ��� �   i g n o r e s   m o d u l e _ T y p e   w h i c h   s h o u l d   b e   s e t   t o   " E n g l i s h / G r e e k / H e b r e w   T e x t s "   o r   j u s t   " S c r i p t u r e "� ��� l  ; ;������  � : 4 ignores field_Type, which should be set to "Verses"   � ��� h   i g n o r e s   f i e l d _ T y p e ,   w h i c h   s h o u l d   b e   s e t   t o   " V e r s e s "� ��� l  ; ;��������  ��  ��  � ��� l  ; ;������  � C = Remove any non-alphanumeric characters from end of reference   � ��� z   R e m o v e   a n y   n o n - a l p h a n u m e r i c   c h a r a c t e r s   f r o m   e n d   o f   r e f e r e n c e� ��� l  ; ;������  � A ; mostly for the purpose of removing a final carriage return   � ��� v   m o s t l y   f o r   t h e   p u r p o s e   o f   r e m o v i n g   a   f i n a l   c a r r i a g e   r e t u r n� ��� r   ; C��� I   ; A������� .0 removeextracharacters removeExtraCharacters� ���� o   < =���� 0 search_string search_String��  ��  � o      ���� 0 search_string search_String� ��� l  D D��������  ��  ��  � ��� l  D D������  � G A Looks up the name of the module to use if a number is designated   � ��� �   L o o k s   u p   t h e   n a m e   o f   t h e   m o d u l e   t o   u s e   i f   a   n u m b e r   i s   d e s i g n a t e d� ��� Q   D z���� k   G U�� ��� r   G L��� c   G J��� o   G H���� 0 which_module which_Module� m   H I��
�� 
long� o      ���� 0 which_module which_Module� ���� r   M U��� I   M S������� .0 getmodulenamefromlist getModuleNameFromList� ���� o   N O���� 0 which_module which_Module��  ��  � o      ���� 0 which_module which_Module��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   ] z�� ��� r   ] d��� I   ] b�������� 0 getmodulelist getModuleList��  ��  � o      ���� 0 
modulelist 
moduleList� ���� Z   e z������� H   e i�� E  e h��� o   e f���� 0 
modulelist 
moduleList� o   f g���� 0 which_module which_Module� L   l v�� b   l u��� b   l q��� m   l o�� ��� " T h e   T e x t   m o d u l e   "� o   o p���� 0 which_module which_Module� m   q t�� ���  "   w a s   n o t   f o u n d��  ��  ��  � ��� l  { {��������  ��  ��  � ��� l  { {������  � #  Get the text from Accordance   � ��� :   G e t   t h e   t e x t   f r o m   A c c o r d a n c e� ��� Q   { ����� O  ~ ���� r   � ���� I  � ������
�� .AccdTxRf****      � ****� J   � ��� ��� o   � ����� 0 which_module which_Module� ��� o   � ����� 0 search_string search_String� ���� o   � ����� (0 use_citationformat use_CitationFormat��  ��  � o      ���� 0 	theresult 	theResult� m   ~ ����                                                                                  ACC0  alis    ^  Macintosh HD               ��8�H+  �ؠAccordance.app                                                 ��M�?�2        ����  	                Applications    ��$      �?�    �ؠ  )Macintosh HD:Applications: Accordance.app     A c c o r d a n c e . a p p    M a c i n t o s h   H D  Applications/Accordance.app   / ��  � R      �����
�� .ascrerr ****      � ****� o      ���� 0 err  ��  � r   � ���� b   � ���� m   � �   � 6 I n v a l i d   s e a r c h   p a r a m e t e r s :  � o   � ����� 0 err  � o      �� 0 	theresult 	theResult�  l  � ��~�}�|�~  �}  �|    r   � � I   � ��{�z�{ &0 removeextraspaces removeExtraSpaces 	�y	 o   � ��x�x 0 	theresult 	theResult�y  �z   o      �w�w 0 	theresult 	theResult 

 l  � ��v�u�t�v  �u  �t   �s Z   �i�r =  � � o   � ��q�q 0 	output_to 	output_To m   � � �  p a s t e R e s u l t k   � �  l  � ��p�o�n�p  �o  �n    I   � ��m�l�m 0 	pastetext 	pasteText  o   � ��k�k 0 	theresult 	theResult �j o   � ��i�i 0 
input_from 
input_From�j  �l    L   � � m   � ��h
�h boovtrue  �g  l  � ��f�e�d�f  �e  �d  �g   !"! =  � �#$# o   � ��c�c 0 	output_to 	output_To$ m   � �%% �&&  c o p y R e s u l t" '(' k   � �)) *+* l  � ��b�a�`�b  �a  �`  + ,-, I  � ��_.�^
�_ .JonspClpnull���     ****. o   � ��]�] 0 	theresult 	theResult�^  - /0/ I  � ��\1�[
�\ .sysodelanull��� ��� nmbr1 m   � �22 ?ə������[  0 343 L   � �55 m   � ��Z
�Z boovtrue4 6�Y6 l  � ��X�W�V�X  �W  �V  �Y  ( 787 =  � �9:9 o   � ��U�U 0 	output_to 	output_To: m   � �;; �<<  s p e a k R e s u l t8 =>= k   �?? @A@ I   � ��TB�S�T 0 minimumvolume minimumVolumeB C�RC m   � ��Q�Q 2�R  �S  A DED Q   �FGHF k   � �II JKJ l  � ��PLM�P  L 8 2 in case a voice name is given in the otherOptions   M �NN d   i n   c a s e   a   v o i c e   n a m e   i s   g i v e n   i n   t h e   o t h e r O p t i o n sK O�OO I  � ��NPQ
�N .sysottosnull���     TEXTP o   � ��M�M 0 	theresult 	theResultQ �LR�K
�L 
VOICR o   � ��J�J 0 other_options other_Options�K  �O  G R      �I�H�G
�I .ascrerr ****      � ****�H  �G  H I �FS�E
�F .sysottosnull���     TEXTS o  �D�D 0 	theresult 	theResult�E  E TUT L  
VV m  	�C
�C boovtrueU W�BW l �A�@�?�A  �@  �?  �B  > XYX = Z[Z o  �>�> 0 	output_to 	output_To[ m  \\ �]]  d i s p l a y R e s u l tY ^_^ k  X`` aba Z  Scdefc = ghg o  �=�= 0 
input_from 
input_Fromh m  ii �jj  Q u i c k s i l v e rd w  /klk O #/mnm I ).�<o�;
�< .DAEDlargnull���    utxto o  )*�:�: 0 	theresult 	theResult�;  n m  #&pp�                                                                                  daed  alis    �  Macintosh HD               ��8�H+   0QQuicksilver.app                                                ���Ξa        ����  	                Applications    ��$      Ξ�g     0Q {�  ��  7Macintosh HD:Users: joew: Applications: Quicksilver.app      Q u i c k s i l v e r . a p p    M a c i n t o s h   H D  'Users/joew/Applications/Quicksilver.app   /    ��  l�                                                                                  daed  alis    �  Macintosh HD               ��8�H+   0QQuicksilver.app                                                ���Ξa        ����  	                Applications    ��$      Ξ�g     0Q {�  ��  7Macintosh HD:Users: joew: Applications: Quicksilver.app      Q u i c k s i l v e r . a p p    M a c i n t o s h   H D  'Users/joew/Applications/Quicksilver.app   /    ��  e qrq = 27sts o  23�9�9 0 
input_from 
input_Fromt m  36uu �vv  L a u n c h B a rr w�8w w  :Jxyx O >Jz{z I DI�7|�6
�7 .odlbltyp****      � ****| o  DE�5�5 0 	theresult 	theResult�6  { m  >A}}v                                                                                      @ alis       Macintosh HD               ��8�H+  �ؠLaunchBar.app                                                  ����            ����  A                 ��$                L a u n c h B a r . a p p    M a c i n t o s h   H D  Applications/LaunchBar.app  / ��      yv                                                                                      @ alis       Macintosh HD               ��8�H+  �ؠLaunchBar.app                                                  ����            ����  A                 ��$                L a u n c h B a r . a p p    M a c i n t o s h   H D  Applications/LaunchBar.app  / ��      �8  f l MS~�~ I  MS�4��3�4 0 displayresult displayResult� ��2� o  NO�1�1 0 	theresult 	theResult�2  �3   U O if input_From is "Script" or "Service" then -- will display dialog anywhere			   � ��� �   i f   i n p u t _ F r o m   i s   " S c r i p t "   o r   " S e r v i c e "   t h e n   - -   w i l l   d i s p l a y   d i a l o g   a n y w h e r e 	 	 	b ��� L  TV�� m  TU�0
�0 boovtrue� ��/� l WW�.�-�,�.  �-  �,  �/  _ ��� = [`��� o  [\�+�+ 0 	output_to 	output_To� m  \_�� ���  r e t u r n R e s u l t� ��*� L  ce�� o  cd�)�) 0 	theresult 	theResult�*  �r  �s  } ��(� l jj�'�&�%�'  �&  �%  �(  . ��� l     �$�#�"�$  �#  �"  � ��� l     �!���!  � + %-------------------------------------   � ��� J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     � ���   � S M This handler displays a search string in Accordance using a specified module   � ��� �   T h i s   h a n d l e r   d i s p l a y s   a   s e a r c h   s t r i n g   i n   A c c o r d a n c e   u s i n g   a   s p e c i f i e d   m o d u l e� ��� i   2 5��� I      ���� $0 showinaccordance showInAccordance� ��� o      �� 0 asearchstring aSearchString� ��� o      �� 0 amoduletype aModuleType� ��� o      �� 0 awhichmodule aWhichModule� ��� o      �� 0 
afieldtype 
aFieldType� ��� o      �� 0 aotheroptions aOtherOptions�  �  � k    ��� ��� l     ����  �  �  � ��� l     ����  � Z T Correct old module type or tool name references with plural forms found in New menu   � ��� �   C o r r e c t   o l d   m o d u l e   t y p e   o r   t o o l   n a m e   r e f e r e n c e s   w i t h   p l u r a l   f o r m s   f o u n d   i n   N e w   m e n u� ��� Q     ?���� Z   6����� G    *��� G    ��� l   ���� =   ��� n    ��� 7   ���
� 
ctxt� m    
����� m    ����� o    �� 0 amoduletype aModuleType� m    �� ���  T o o l�  �  � l   ��
�	� =   ��� o    �� 0 amoduletype aModuleType� m    �� ���  P a r a l l e l�
  �	  � l   (���� =   (��� n    &��� 7   &���
� 
ctxt� m     "����� m   # %����� o    �� 0 amoduletype aModuleType� m   & '�� ���  T e x t�  �  � r   - 2��� b   - 0��� o   - .�� 0 amoduletype aModuleType� m   . /�� ���  s� o      � �  0 amoduletype aModuleType�  �  � R      ������
�� .ascrerr ****      � ****��  ��  �  � ��� l  @ @��������  ��  ��  � ��� Q   @ U���� l  C H���� r   C H��� c   C F��� o   C D���� 0 awhichmodule aWhichModule� m   D E��
�� 
long� o      ���� 0 awhichmodule aWhichModule� ; 5 coerce the data type of aWhichModule to avoid errors   � ��� j   c o e r c e   t h e   d a t a   t y p e   o f   a W h i c h M o d u l e   t o   a v o i d   e r r o r s� R      ������
�� .ascrerr ****      � ****��  ��  � r   P U��� c   P S��� o   P Q���� 0 awhichmodule aWhichModule� m   Q R��
�� 
TEXT� o      ���� 0 awhichmodule aWhichModule� ��� l  V V��������  ��  ��  � ��� O  V `��� I  Z _������
�� .miscactvnull��� ��� null��  ��  � m   V W���                                                                                  ACC0  alis    ^  Macintosh HD               ��8�H+  �ؠAccordance.app                                                 ��M�?�2        ����  	                Applications    ��$      �?�    �ؠ  )Macintosh HD:Applications: Accordance.app     A c c o r d a n c e . a p p    M a c i n t o s h   H D  Applications/Accordance.app   / ��  � ��� I  a f�����
�� .sysodelanull��� ��� nmbr� m   a b�� ?ə�������  � ��� O   g���� k   k��� ��� l  k k��������  ��  ��  � � � Q   k � r   n x 4   n v��
�� 
prcs m   r u � 
 a c o r d o      ���� 0 accordprocess accordProcess R      ������
�� .ascrerr ****      � ****��  ��   Q   � �	
	 r   � � 4   � ���
�� 
prcs m   � � �  A c c o r d o      ���� 0 accordprocess accordProcess
 R      ������
�� .ascrerr ****      � ****��  ��   r   � � 4   � ���
�� 
prcs m   � � �  A c c o r d a n c e o      ���� 0 accordprocess accordProcess   l  � ���������  ��  ��    O   �� k   ��  l  � ���������  ��  ��     Z   ��!"#$! E  � �%&% J   � �'' ()( m   � �** �++  S c r i p t u r e) ,-, m   � �.. �//  E n g l i s h   T e x t s- 010 m   � �22 �33  G r e e k   T e x t s1 4��4 m   � �55 �66  H e b r e w   T e x t s��  & o   � ����� 0 amoduletype aModuleType" k   ��77 898 l  � ���������  ��  ��  9 :;: Z   �B<=��>< =  � �?@? o   � ����� 0 amoduletype aModuleType@ m   � �AA �BB  S c r i p t u r e= k   �CC DED I  � ���FG
�� .prcskprsnull���     ctxtF m   � �HH �II  nG ��J��
�� 
faalJ J   � �KK L��L m   � ���
�� eMdsKcmd��  ��  E MNM I  � ���O��
�� .sysodelanull��� ��� nmbrO m   � �PP ?ٙ�������  N QRQ l  � ���������  ��  ��  R STS l  � ���UV��  U ' ! Change from module 1 to 2 thru 9   V �WW B   C h a n g e   f r o m   m o d u l e   1   t o   2   t h r u   9T XYX Z   �
Z[����Z l  � �\����\ E  � �]^] J   � �__ `a` m   � ����� a bcb m   � ����� c ded m   � ����� e fgf m   � ����� g hih m   � ����� i jkj m   � ����� k lml m   � ����� m non m   � ����� 	o p��p m   � �����  ��  ^ o   � ����� 0 awhichmodule aWhichModule��  ��  [ k   �qq rsr l  � ���tu��  t  
 control #   u �vv    c o n t r o l   #s w��w I  ���xy
�� .prcskprsnull���     ctxtx l  � �z����z c   � �{|{ o   � ����� 0 awhichmodule aWhichModule| m   � ���
�� 
TEXT��  ��  y ��}��
�� 
faal} J   �~~ �� m   � ��
�� eMdsKctl��  ��  ��  ��  ��  Y ���� l ��������  ��  ��  ��  ��  > k  B�� ��� I @�����
�� .prcsclicnull��� ��� uiel� n  <��� 4  7<���
�� 
menI� o  :;���� 0 awhichmodule aWhichModule� n  7��� 4  27���
�� 
menE� m  56���� � n  2��� 4  -2���
�� 
menI� o  01���� 0 amoduletype aModuleType� n  -��� 4  (-���
�� 
menE� m  +,���� � n  (��� 4  !(���
�� 
menI� m  $'�� ���  N e w� n  !��� 4  !���
�� 
menE� m   ���� � n  ��� 4  ���
�� 
mbri� m  �� ���  F i l e� 4  ���
�� 
mbar� m  ���� ��  � ���� l AA��������  ��  ��  ��  ; ��� l CC��������  ��  ��  � ��� l CC��������  ��  ��  � ��� Z  C������� = CH��� o  CD���� 0 
afieldtype 
aFieldType� m  DG�� ���  V e r s e s� k  Kh�� ��� l KK������  � C = Remove any non-alphanumeric characters from end of reference   � ��� z   R e m o v e   a n y   n o n - a l p h a n u m e r i c   c h a r a c t e r s   f r o m   e n d   o f   r e f e r e n c e� ��� l KK������  � A ; mostly for the purpose of removing a final carriage return   � ��� v   m o s t l y   f o r   t h e   p u r p o s e   o f   r e m o v i n g   a   f i n a l   c a r r i a g e   r e t u r n� ��� r  KS��� n KQ��� I  LQ������� .0 removeextracharacters removeExtraCharacters� ���� o  LM���� 0 asearchstring aSearchString��  ��  �  f  KL� o      ���� 0 asearchstring aSearchString� ��� l TT����~��  �  �~  � ��� I Tf�}��
�} .prcskprsnull���     ctxt� m  TW�� ���  v� �|��{
�| 
faal� J  Zb�� ��� m  Z]�z
�z eMdsKcmd� ��y� m  ]`�x
�x eMdsKctl�y  �{  � ��� l gg�w���w  � u o click menu item "Verses" of menu 1 of menu item "Search For" of menu 1 of menu bar item "Search" of menu bar 1   � ��� �   c l i c k   m e n u   i t e m   " V e r s e s "   o f   m e n u   1   o f   m e n u   i t e m   " S e a r c h   F o r "   o f   m e n u   1   o f   m e n u   b a r   i t e m   " S e a r c h "   o f   m e n u   b a r   1� ��v� l gg�u�t�s�u  �t  �s  �v  � ��� = kp��� o  kl�r�r 0 
afieldtype 
aFieldType� m  lo�� ��� 
 W o r d s� ��q� I s��p��
�p .prcskprsnull���     ctxt� m  sv�� ���  w� �o��n
�o 
faal� J  y��� ��� m  y|�m
�m eMdsKcmd� ��l� m  |�k
�k eMdsKctl�l  �n  �q  ��  � ��� l ���j�i�h�j  �i  �h  � ��g� l ���f�e�d�f  �e  �d  �g  # ��� = ����� o  ���c�c 0 amoduletype aModuleType� m  ���� ���  C u r r e n t   W i n d o w� ��� k  ���� ��� l ���b�a�`�b  �a  �`  � ��� l ���_���_  � E ? a left arrow and then a tab reliably highlights the search box   � ��� ~   a   l e f t   a r r o w   a n d   t h e n   a   t a b   r e l i a b l y   h i g h l i g h t s   t h e   s e a r c h   b o x� ��� I ���^��]
�^ .prcskprsnull���     ctxt� 1  ���\
�\ 
spac�]  � ��� I ���[��Z
�[ .prcskcodnull���     ****� m  ���Y�Y {�Z  � ��� I ���X��W
�X .prcskprsnull���     ctxt� 1  ���V
�V 
tab �W  � � � l ���U�T�S�U  �T  �S     l ���R�R   U O or, a space will bring cursor to the Search Box if it is currently in the text    � �   o r ,   a   s p a c e   w i l l   b r i n g   c u r s o r   t o   t h e   S e a r c h   B o x   i f   i t   i s   c u r r e n t l y   i n   t h e   t e x t  l ���Q	�Q     keystroke space   	 �

     k e y s t r o k e   s p a c e  l ���P�O�N�P  �O  �N    l ���M�M   ^ X or, adding two semicolon strokes ensures the search box is hilighted in a Search window    � �   o r ,   a d d i n g   t w o   s e m i c o l o n   s t r o k e s   e n s u r e s   t h e   s e a r c h   b o x   i s   h i l i g h t e d   i n   a   S e a r c h   w i n d o w  l ���L�L   ( "keystroke ";" using {command down}    � D k e y s t r o k e   " ; "   u s i n g   { c o m m a n d   d o w n }  l ���K�K    	delay 0.2    �  d e l a y   0 . 2  l ���J�J   ( "keystroke ";" using {command down}    �   D k e y s t r o k e   " ; "   u s i n g   { c o m m a n d   d o w n } !"! l ���I�H�G�I  �H  �G  " #$# l ���F%&�F  % ] W or, adding this next line ensures the cursor is in the search box in a Map or Timeline   & �'' �   o r ,   a d d i n g   t h i s   n e x t   l i n e   e n s u r e s   t h e   c u r s o r   i s   i n   t h e   s e a r c h   b o x   i n   a   M a p   o r   T i m e l i n e$ ()( l ���E*+�E  * ) # keystroke "f" using {command down}   + �,, F   k e y s t r o k e   " f "   u s i n g   { c o m m a n d   d o w n }) -�D- l ���C�B�A�C  �B  �A  �D  � ./. = ��010 o  ���@�@ 0 amoduletype aModuleType1 m  ��22 �33  T i m e l i n e/ 454 k  ��66 787 I ���?9�>
�? .prcsclicnull��� ��� uiel9 n  ��:;: 4  ���=<
�= 
menI< o  ���<�< 0 amoduletype aModuleType; n  ��=>= 4  ���;?
�; 
menE? m  ���:�: > n  ��@A@ 4  ���9B
�9 
menIB m  ��CC �DD  N e wA n  ��EFE 4  ���8G
�8 
menEG m  ���7�7 F n  ��HIH 4  ���6J
�6 
mbriJ m  ��KK �LL  F i l eI 4  ���5M
�5 
mbarM m  ���4�4 �>  8 NON I ���3P�2
�3 .sysodelanull��� ��� nmbrP m  ��QQ ?�      �2  O RSR I ���1TU
�1 .prcskprsnull���     ctxtT m  ��VV �WW  fU �0X�/
�0 
faalX J  ��YY Z�.Z m  ���-
�- eMdsKcmd�.  �/  S [�,[ l ���+�*�)�+  �*  �)  �,  5 \]\ = �^_^ o  ���(�( 0 amoduletype aModuleType_ m  �`` �aa  M a p] bcb k  Qdd efe I 7�'g�&
�' .prcsclicnull��� ��� uielg n  3hih 4  .3�%j
�% 
menIj o  12�$�$ 0 awhichmodule aWhichModulei n  .klk 4  ).�#m
�# 
menEm m  ,-�"�" l n  )non 4  $)�!p
�! 
menIp o  '(� �  0 amoduletype aModuleTypeo n  $qrq 4  $�s
� 
menEs m  "#�� r n  tut 4  �v
� 
menIv m  ww �xx  N e wu n  yzy 4  �{
� 
menE{ m  �� z n  |}| 4  �~
� 
mbri~ m   ���  F i l e} 4  ��
� 
mbar� m  
�� �&  f ��� l 88����  �  �  � ��� I 8?���
� .sysodelanull��� ��� nmbr� m  8;�� ?�      �  � ��� I @O���
� .prcskprsnull���     ctxt� m  @C�� ���  f� ���
� 
faal� J  FK�� ��� m  FI�
� eMdsKcmd�  �  � ��� l PP���
�  �  �
  �  c ��� = TY��� o  TU�	�	 0 amoduletype aModuleType� m  UX�� ���  S e a r c h   A l l� ��� I \����
� .prcsclicnull��� ��� uiel� n  \��� 4  z��
� 
menI� o  }~�� 0 amoduletype aModuleType� n  \z��� 4  uz��
� 
menE� m  xy�� � n  \u��� 4  nu��
� 
menI� m  qt�� ���  N e w� n  \n��� 4  in��
� 
menE� m  lm� �  � n  \i��� 4  bi���
�� 
mbri� m  eh�� ���  F i l e� 4  \b���
�� 
mbar� m  `a���� �  � ��� = ����� o  ������ 0 amoduletype aModuleType� m  ���� ���  S a v e   F i l e� ���� k  ���� ��� l ����������  ��  ��  � ��� O ����� I �������
�� .aevtodocnull  �    alis� 4  �����
�� 
alis� o  ������ 0 aotheroptions aOtherOptions��  � m  �����                                                                                  MACS  alis    t  Macintosh HD               ��8�H+  ��~
Finder.app                                                     ����_��        ����  	                CoreServices    ��$      �`D    ��~��{��z  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ���� l ����������  ��  ��  ��  ��  $ k  ���� ��� l ��������  � ( " aModuleType is a tool or Parallel   � ��� D   a M o d u l e T y p e   i s   a   t o o l   o r   P a r a l l e l� ��� l ����������  ��  ��  � ���� I �������
�� .prcsclicnull��� ��� uiel� n  ����� 4  �����
�� 
menI� o  ������ 0 awhichmodule aWhichModule� n  ����� 4  �����
�� 
menE� m  ������ � n  ����� 4  �����
�� 
menI� o  ������ 0 amoduletype aModuleType� n  ����� 4  �����
�� 
menE� m  ������ � n  ����� 4  �����
�� 
menI� m  ���� ���  N e w� n  ����� 4  �����
�� 
menE� m  ������ � n  ����� 4  �����
�� 
mbri� m  ���� ���  F i l e� 4  �����
�� 
mbar� m  ������ ��  ��    ��� l ����������  ��  ��  � ��� I �������
�� .sysodelanull��� ��� nmbr� m  ���� ?ə�������  � ��� l ����������  ��  ��  � ��� I �������
�� .prcskprsnull���     ctxt� o  ������ 0 asearchstring aSearchString��  � ��� I �������
�� .sysodelanull��� ��� nmbr� m  ���� ?ٙ�������  � ��� l ����������  ��  ��  � ��� I �������
�� .prcskprsnull���     ctxt� o  ����
�� 
ret ��  � ��� l ����������  ��  ��  � ��� l ��������  � @ : Extra return in case the "New zone added" dialog comes up   � ��� t   E x t r a   r e t u r n   i n   c a s e   t h e   " N e w   z o n e   a d d e d "   d i a l o g   c o m e s   u p�    I ������
�� .sysodelanull��� ��� nmbr m  �� ?ٙ�������    I �����
�� .prcskprsnull���     ctxt o  ����
�� 
ret ��    l ��������  ��  ��   	
	 l ��������  ��  ��  
  Z  ����� E  J    m   �  c o p y R e s u l t  m   �  p a s t e R e s u l t �� m   �  r e t u r n R e s u l t��   o  ���� 0 aotheroptions aOtherOptions k  �  l �� !��    S M Clunky, but the following code can be used to copy results to the clipboard    ! �"" �   C l u n k y ,   b u t   t h e   f o l l o w i n g   c o d e   c a n   b e   u s e d   t o   c o p y   r e s u l t s   t o   t h e   c l i p b o a r d   #$# l ��%&��  % ^ X from inside an Accordance Window. It places the insertion point in the result text pane   & �'' �   f r o m   i n s i d e   a n   A c c o r d a n c e   W i n d o w .   I t   p l a c e s   t h e   i n s e r t i o n   p o i n t   i n   t h e   r e s u l t   t e x t   p a n e$ ()( l ��*+��  * 8 2 then selects all text and copies to the clipboard   + �,, d   t h e n   s e l e c t s   a l l   t e x t   a n d   c o p i e s   t o   t h e   c l i p b o a r d) -.- l ��������  ��  ��  . /0/ l ��12��  1   ** Important** --    2 �33 &   * *   I m p o r t a n t * *   - -  0 454 l ��67��  6 R L This UI scripting function will error if the results are too large to copy.   7 �88 �   T h i s   U I   s c r i p t i n g   f u n c t i o n   w i l l   e r r o r   i f   t h e   r e s u l t s   a r e   t o o   l a r g e   t o   c o p y .5 9:9 l ��;<��  ; K E Make sure the Context is set to 0, not All Context or Auto Context,    < �== �   M a k e   s u r e   t h e   C o n t e x t   i s   s e t   t o   0 ,   n o t   A l l   C o n t e x t   o r   A u t o   C o n t e x t ,  : >?> l ��@A��  @ b \ for Tools make sure Show Text as is not set to All Text, or the selection will be too large   A �BB �   f o r   T o o l s   m a k e   s u r e   S h o w   T e x t   a s   i s   n o t   s e t   t o   A l l   T e x t ,   o r   t h e   s e l e c t i o n   w i l l   b e   t o o   l a r g e? CDC l ��������  ��  ��  D EFE I ��G��
�� .sysodelanull��� ��� nmbrG m  HH ?ٙ�������  F IJI I )��KL
�� .prcskprsnull���     ctxtK 1  ��
�� 
tab L ��M��
�� 
faalM J   %NN O��O m   #��
�� eMdsKopt��  ��  J PQP I */��R��
�� .sysodelanull��� ��� nmbrR m  *+SS ?ə�������  Q TUT l 00��������  ��  ��  U VWV I 0?��XY
�� .prcskprsnull���     ctxtX m  03ZZ �[[  aY ��\��
�� 
faal\ J  6;]] ^��^ m  69��
�� eMdsKcmd��  ��  W _`_ l @@��������  ��  ��  ` aba l @@��cd��  c H B instead of command-a selecting all, can select a number of lines:   d �ee �   i n s t e a d   o f   c o m m a n d - a   s e l e c t i n g   a l l ,   c a n   s e l e c t   a   n u m b e r   o f   l i n e s :b fgf l @@��hi��  h  repeat 5 times   i �jj  r e p e a t   5   t i m e sg klk l @@��mn��  m : 4	key code 125 using {shift down} -- shift down arrow   n �oo h 	 k e y   c o d e   1 2 5   u s i n g   { s h i f t   d o w n }   - -   s h i f t   d o w n   a r r o wl pqp l @@��rs��  r  
end repeat   s �tt  e n d   r e p e a tq uvu l @@��������  ��  ��  v wxw I @E��y��
�� .sysodelanull��� ��� nmbry m  @Azz ?ə�������  x {|{ l FF��������  ��  ��  | }~} l FU�� I FU����
�� .prcskprsnull���     ctxt� m  FI�� ���  c� �����
�� 
faal� J  LQ�� ���� m  LO��
�� eMdsKcmd��  ��  � $  add control down for citation   � ��� <   a d d   c o n t r o l   d o w n   f o r   c i t a t i o n~ ��� I V]�����
�� .sysodelanull��� ��� nmbr� m  VY�� ?ٙ�������  � ��� l ^^��~�}�  �~  �}  � ��|� Z  ^�����{� = ^c��� o  ^_�z�z 0 aotheroptions aOtherOptions� m  _b�� ���  r e t u r n R e s u l t� k  fv�� ��� l ff�y���y  � U O return the copied results to the script or environment that called the handler   � ��� �   r e t u r n   t h e   c o p i e d   r e s u l t s   t o   t h e   s c r i p t   o r   e n v i r o n m e n t   t h a t   c a l l e d   t h e   h a n d l e r� ��� l ff�x�w�v�x  �w  �v  � ��� r  fm��� I fk�u�t�s
�u .JonsgClp****    ��� null�t  �s  � o      �r�r 0 	theresult 	theResult� ��� I ns�q��p
�q .sysodelanull��� ��� nmbr� m  no�� ?ə������p  � ��o� L  tv�� o  tu�n�n 0 	theresult 	theResult�o  � ��� = y~��� o  yz�m�m 0 aotheroptions aOtherOptions� m  z}�� ���  p a s t e R e s u l t� ��l� k  ���� ��� l ���k�j�i�k  �j  �i  � ��� l ���h���h  � 0 * paste the copied results in previous app    � ��� T   p a s t e   t h e   c o p i e d   r e s u l t s   i n   p r e v i o u s   a p p  � ��� I ���g��
�g .prcskprsnull���     ctxt� m  ���� ���  h� �f��e
�f 
faal� J  ���� ��d� m  ���c
�c eMdsKcmd�d  �e  � ��� I ���b��a
�b .sysodelanull��� ��� nmbr� m  ���� ?ə������a  � ��� r  ����� I ���`�_�^
�` .JonsgClp****    ��� null�_  �^  � o      �]�] 0 asearchstring aSearchString� ��� O ����� I  ���\��[�\ 0 	pastetext 	pasteText� ��� o  ���Z�Z 0 asearchstring aSearchString� ��Y� o  ���X�X 0 	inputfrom 	inputFrom�Y  �[  �  f  ��� ��W� L  ���� m  ���V
�V boovtrue�W  �l  �{  �|  ��  ��   ��U� l ���T�S�R�T  �S  �R  �U   o   � ��Q�Q 0 accordprocess accordProcess ��P� L  ���� m  ���O
�O boovtrue�P  � m   g h���                                                                                  sevs  alis    �  Macintosh HD               ��8�H+  ��~System Events.app                                              ��Z�A|�        ����  	                CoreServices    ��$      �A�9    ��~��{��z  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l ���N�M�L�N  �M  �L  � ��� l ���K�J�I�K  �J  �I  � ��H� l ���G�F�E�G  �F  �E  �H  � ��� l     �D�C�B�D  �C  �B  � ��� l     �A���A  � + %-------------------------------------   � ��� J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �@���@  �   Utility Handlers --   � ��� (   U t i l i t y   H a n d l e r s   - -� ��� l     �?���?  � + %-------------------------------------   � ��� J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �>�=�<�>  �=  �<  � ��� i   6 9��� I      �;��:�; .0 removeextracharacters removeExtraCharacters� ��9� o      �8�8 0 	thestring 	theString�9  �:  � k     d�� ��� l     �7���7  � [ U removes all non-alphanumeric characters from the beginning and the end of the string   � ��� �   r e m o v e s   a l l   n o n - a l p h a n u m e r i c   c h a r a c t e r s   f r o m   t h e   b e g i n n i n g   a n d   t h e   e n d   o f   t h e   s t r i n g� ��� l     �6�5�4�6  �5  �4  � ��� r        c      o     �3�3 0 	thestring 	theString m    �2
�2 
TEXT o      �1�1 0 	thestring 	theString�  T    3 k    . 	 Z    
�0�/
 E    m     � L a b c d e f g h i j k l m n o p q r s t u v w x y z 1 2 3 4 5 6 7 8 9 0 ( ) l   �.�- n     7   �,
�, 
ctxt m    �+�+  m    �*�*  o    �)�) 0 	thestring 	theString�.  �-    S    �0  �/  	 �( r   ! . n   ! , 7  " ,�'
�' 
ctxt m   & (�&�&  m   ) +�%�%�� o   ! "�$�$ 0 	thestring 	theString o      �#�# 0 	thestring 	theString�(    T   4 a k   9 \  !  Z  9 N"#�"�!" E  9 F$%$ m   9 :&& �'' L a b c d e f g h i j k l m n o p q r s t u v w x y z 1 2 3 4 5 6 7 8 9 0 ( )% n   : E()( 7  ; E� *+
�  
ctxt* m   ? A����+ m   B D����) o   : ;�� 0 	thestring 	theString#  S   I J�"  �!  ! ,�, r   O \-.- n   O Z/0/ 7  P Z�12
� 
ctxt1 m   T V�� 2 m   W Y����0 o   O P�� 0 	thestring 	theString. o      �� 0 	thestring 	theString�   3�3 L   b d44 o   b c�� 0 	thestring 	theString�  � 565 l     ����  �  �  6 787 i   : =9:9 I      �;�� &0 removeextraspaces removeExtraSpaces; <�< o      �� 0 	thestring 	theString�  �  : k     f== >?> l     �@A�  @ K E removes all white space from the beginning and the end of the string   A �BB �   r e m o v e s   a l l   w h i t e   s p a c e   f r o m   t h e   b e g i n n i n g   a n d   t h e   e n d   o f   t h e   s t r i n g? CDC l     ���
�  �  �
  D EFE r     GHG c     IJI o     �	�	 0 	thestring 	theStringJ m    �
� 
TEXTH o      �� 0 	thestring 	theStringF KLK T    4MM k    /NN OPO Z   !QR��Q H    SS E   TUT m    VV �WW    	U l   X��X n    YZY 7   �[\
� 
ctxt[ m    �� \ m    � �  Z o    ���� 0 	thestring 	theString�  �  R  S    �  �  P ]��] r   " /^_^ n   " -`a` 7  # -��bc
�� 
ctxtb m   ' )���� c m   * ,������a o   " #���� 0 	thestring 	theString_ o      ���� 0 	thestring 	theString��  L ded T   5 cff k   : ^gg hih Z  : Pjk����j H   : Hll E  : Gmnm m   : ;oo �pp    	n n   ; Fqrq 7  < F��st
�� 
ctxts m   @ B������t m   C E������r o   ; <���� 0 	thestring 	theStringk  S   K L��  ��  i u��u r   Q ^vwv n   Q \xyx 7  R \��z{
�� 
ctxtz m   V X���� { m   Y [������y o   Q R���� 0 	thestring 	theStringw o      ���� 0 	thestring 	theString��  e |��| L   d f}} o   d e���� 0 	thestring 	theString��  8 ~~ l     ��������  ��  ��   ��� i   > A��� I      ������� 0 	pastetext 	pasteText� ��� o      ���� 0 	thestring 	theString� ���� o      ���� 0 thescope theScope��  ��  � k     p�� ��� l     ������  � 1 + can hard code to paste into a specific app   � ��� V   c a n   h a r d   c o d e   t o   p a s t e   i n t o   a   s p e c i f i c   a p p� ��� l     ������  � . ( tell application "TextEdit" to activate   � ��� P   t e l l   a p p l i c a t i o n   " T e x t E d i t "   t o   a c t i v a t e� ��� l     ��������  ��  ��  � ��� l     ������  � 4 . Customizes result pasting for specific scopes   � ��� \   C u s t o m i z e s   r e s u l t   p a s t i n g   f o r   s p e c i f i c   s c o p e s� ���� Z     p����� =    ��� o     ���� 0 thescope theScope� m    �� ���  L a u n c h B a r� w    ��� O   ��� I   ����
�� .odlbactn****      � ****� m    �� ���  C o p y   a n d   P a s t e� �����
�� 
ptxt� o    ���� 0 	thestring 	theString��  � m    	��v                                                                                      @ alis       Macintosh HD               ��8�H+  �ؠLaunchBar.app                                                  ����            ����  A                 ��$                L a u n c h B a r . a p p    M a c i n t o s h   H D  Applications/LaunchBar.app  / ��      �v                                                                                      @ alis       Macintosh HD               ��8�H+  �ؠLaunchBar.app                                                  ����            ����  A                 ��$                L a u n c h B a r . a p p    M a c i n t o s h   H D  Applications/LaunchBar.app  / ��      � ��� G    "��� E    ��� o    ���� 0 thescope theScope� m    �� ���  T e x t E d i t� E     ��� o    ���� 0 thescope theScope� m    �� ��� 
 P a g e s� ���� k   % G�� ��� l  % %������  � J D With these apps, use command option shift for paste and match style   � ��� �   W i t h   t h e s e   a p p s ,   u s e   c o m m a n d   o p t i o n   s h i f t   f o r   p a s t e   a n d   m a t c h   s t y l e� ��� r   % ,��� I  % *������
�� .JonsgClp****    ��� null��  ��  � o      ���� 0 oldclipboard OldClipboard� ��� I  - 9�����
�� .JonspClpnull���     ****� K   - 5�� ����
�� 
ctxt� l  . 1������ c   . 1��� o   . /���� 0 	thestring 	theString� m   / 0��
�� 
TEXT��  ��  � �����
�� 
utxt� o   2 3���� 0 	thestring 	theString��  ��  � ��� l  : :������  �   Paste matching style   � ��� *   P a s t e   m a t c h i n g   s t y l e� ��� I   : A������� $0 dokeycombination doKeyCombination� ��� m   ; <�� ���  v� ���� m   < =�� ���  x o s��  ��  � ���� I  B G�����
�� .JonspClpnull���     ****� o   B C���� 0 oldclipboard OldClipboard��  ��  ��  � k   J p�� ��� r   J Q��� I  J O������
�� .JonsgClp****    ��� null��  ��  � o      ���� 0 oldclipboard OldClipboard� ��� I  R ^�����
�� .JonspClpnull���     ****� K   R Z�� ����
�� 
ctxt� l  S V������ c   S V��� o   S T���� 0 	thestring 	theString� m   T U��
�� 
TEXT��  ��  � �����
�� 
utxt� o   W X���� 0 	thestring 	theString��  ��  � ��� I   _ j������� $0 dokeycombination doKeyCombination� ��� m   ` c�� ���  v� ���� m   c f�� ���  x��  ��  � ���� I  k p�����
�� .JonspClpnull���     ****� o   k l���� 0 oldclipboard OldClipboard��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   B E   I      ������ 0 displayresult displayResult �� o      ���� 0 	thestring 	theString��  ��   k     I  O     G Z    F	
	 I   ����
�� .coredoexnull���     **** 4    ��
�� 
prcs m     �  Q u i c k s i l v e r��  
 k      w     O    I   ����
�� .DAEDlargnull���    utxt o    ���� 0 	thestring 	theString��   m    �                                                                                  daed  alis    �  Macintosh HD               ��8�H+   0QQuicksilver.app                                                ���Ξa        ����  	                Applications    ��$      Ξ�g     0Q {�  ��  7Macintosh HD:Users: joew: Applications: Quicksilver.app      Q u i c k s i l v e r . a p p    M a c i n t o s h   H D  'Users/joew/Applications/Quicksilver.app   /    ��  �                                                                                  daed  alis    �  Macintosh HD               ��8�H+   0QQuicksilver.app                                                ���Ξa        ����  	                Applications    ��$      Ξ�g     0Q {�  ��  7Macintosh HD:Users: joew: Applications: Quicksilver.app      Q u i c k s i l v e r . a p p    M a c i n t o s h   H D  'Users/joew/Applications/Quicksilver.app   /    ��   �� l   ��������  ��  ��  ��    I    (����
�� .coredoexnull���     **** 4     $��
�� 
prcs m   " # �    L a u n c h B a r��   !��! k   + 9"" #$# w   + 7%&% O  - 7'(' I  1 6��)��
�� .odlbltyp****      � ****) o   1 2���� 0 	thestring 	theString��  ( m   - .**v                                                                                      @ alis       Macintosh HD               ��8�H+  �ؠLaunchBar.app                                                  ����            ����  A                 ��$                L a u n c h B a r . a p p    M a c i n t o s h   H D  Applications/LaunchBar.app  / ��      &v                                                                                      @ alis       Macintosh HD               ��8�H+  �ؠLaunchBar.app                                                  ����            ����  A                 ��$                L a u n c h B a r . a p p    M a c i n t o s h   H D  Applications/LaunchBar.app  / ��      $ +,+ l  8 8��������  ��  ��  , -��- l   8 8��./��  . 			--Growl display disabled					else if exists process "GrowlHelperApp" then			using terms from application "Growl.app"			tell application "GrowlHelperApp.app"				�event register� given �class appl�:"Accordance Script Library", full text:{"Accordance Result"}, �class dnot�:{"Accordance Result"}, �class iapp�:"Accordance"				�event notifygr� given �class name�:"Accordance Result", title:"Accordance Result", description:theString, �class appl�:"Accordance Script Library" --with sticky			end tell			end   / �00    	 	 	 - - G r o w l   d i s p l a y   d i s a b l e d 	 	 	  	 	 e l s e   i f   e x i s t s   p r o c e s s   " G r o w l H e l p e r A p p "   t h e n  	 	 	 u s i n g   t e r m s   f r o m   a p p l i c a t i o n   " G r o w l . a p p "  	 	 	 t e l l   a p p l i c a t i o n   " G r o w l H e l p e r A p p . a p p "  	 	 	 	 � e v e n t   r e g i s t e r �   g i v e n   � c l a s s   a p p l � : " A c c o r d a n c e   S c r i p t   L i b r a r y " ,   f u l l   t e x t : { " A c c o r d a n c e   R e s u l t " } ,   � c l a s s   d n o t � : { " A c c o r d a n c e   R e s u l t " } ,   � c l a s s   i a p p � : " A c c o r d a n c e "  	 	 	 	 � e v e n t   n o t i f y g r �   g i v e n   � c l a s s   n a m e � : " A c c o r d a n c e   R e s u l t " ,   t i t l e : " A c c o r d a n c e   R e s u l t " ,   d e s c r i p t i o n : t h e S t r i n g ,   � c l a s s   a p p l � : " A c c o r d a n c e   S c r i p t   L i b r a r y "   - - w i t h   s t i c k y  	 	 	 e n d   t e l l  	 	 	 e n d ��  ��   O  < F121 I  @ E��3��
�� .sysodlogaskr        TEXT3 o   @ A���� 0 	thestring 	theString��  2  f   < = m     44�                                                                                  sevs  alis    �  Macintosh HD               ��8�H+  ��~System Events.app                                              ��Z�A|�        ����  	                CoreServices    ��$      �A�9    ��~��{��z  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   5��5 l  H H��������  ��  ��  ��  � 676 l     ����~��  �  �~  7 898 l     �}�|�{�}  �|  �{  9 :;: i   F I<=< I      �z>�y�z 0 minimumvolume minimumVolume> ?�x? o      �w�w 0 n  �x  �y  = k     #@@ ABA l     �vCD�v  C 6 0 sets volume to a minimal level (from 10 to 100)   D �EE `   s e t s   v o l u m e   t o   a   m i n i m a l   l e v e l   ( f r o m   1 0   t o   1 0 0 )B FGF r     	HIH n     JKJ 1    �u
�u 
ouvlK l    L�t�sL I    �r�q�p
�r .sysogtvlvlst   ��� null�q  �p  �t  �s  I o      �o�o 0 	curvolume 	curVolumeG MNM Z  
 OP�n�mO A   
 QRQ o   
 �l�l 0 	curvolume 	curVolumeR o    �k�k 0 n  P I   �j�iS
�j .aevtstvlnull��� ��� nmbr�i  S �hT�g
�h 
ouvlT o    �f�f 0 n  �g  �n  �m  N U�eU I   #�d�cV
�d .aevtstvlnull��� ��� nmbr�c  V �bW�a
�b 
muteW m    �`
�` boovfals�a  �e  ; XYX l     �_�^�]�_  �^  �]  Y Z[Z i   J M\]\ I      �\^�[�\ $0 dokeycombination doKeyCombination^ _`_ o      �Z�Z 0 thekeystroke theKeystroke` a�Ya o      �X�X 0 keymods keyMods�Y  �[  ] k     �bb cdc l     �Wef�W  e 0 * keyMods can contain any or none of "xosc"   f �gg T   k e y M o d s   c a n   c o n t a i n   a n y   o r   n o n e   o f   " x o s c "d hih l     �Vjk�V  j D > "x = ?, command; o = ?, option; s = ?, shift; c = ^, control"   k �ll |   " x   =  # ,   c o m m a n d ;   o   =  #% ,   o p t i o n ;   s   =  !� ,   s h i f t ;   c   =   ^ ,   c o n t r o l "i mnm l     �Uop�U  o I C Warning: Sending the ^ control modifier is unreliable in some apps   p �qq �   W a r n i n g :   S e n d i n g   t h e   ^   c o n t r o l   m o d i f i e r   i s   u n r e l i a b l e   i n   s o m e   a p p sn rsr l     �T�S�R�T  �S  �R  s tut O    vwv r    xyx c    z{z l   |�Q�P| n    }~} 1    �O
�O 
pnam~ l   �N�M 6   ��� 2   �L
�L 
prcs� =   ��� 1   	 �K
�K 
pisf� m    �J
�J boovtrue�N  �M  �Q  �P  { m    �I
�I 
ctxty o      �H�H 0 frontapp frontAppw m     ���                                                                                  sevs  alis    �  Macintosh HD               ��8�H+  ��~System Events.app                                              ��Z�A|�        ����  	                CoreServices    ��$      �A�9    ��~��{��z  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  u ��� O    ���� k    ��� ��� O    x��� k   # w�� ��� l  # #�G�F�E�G  �F  �E  � ��� r   # '��� J   # %�D�D  � o      �C�C 0 
keymodlist 
keyModList� ��� Z  ( 9���B�A� E   ( +��� o   ( )�@�@ 0 keymods keyMods� m   ) *�� ���  x� r   . 5��� b   . 3��� o   . /�?�? 0 
keymodlist 
keyModList� J   / 2�� ��>� m   / 0�=
�= eMdsKcmd�>  � o      �<�< 0 
keymodlist 
keyModList�B  �A  � ��� Z  : K���;�:� E   : =��� o   : ;�9�9 0 keymods keyMods� m   ; <�� ���  o� r   @ G��� b   @ E��� o   @ A�8�8 0 
keymodlist 
keyModList� J   A D�� ��7� m   A B�6
�6 eMdsKopt�7  � o      �5�5 0 
keymodlist 
keyModList�;  �:  � ��� Z  L ]���4�3� E   L O��� o   L M�2�2 0 keymods keyMods� m   M N�� ���  s� r   R Y��� b   R W��� o   R S�1�1 0 
keymodlist 
keyModList� J   S V�� ��0� m   S T�/
�/ eMdsKsft�0  � o      �.�. 0 
keymodlist 
keyModList�4  �3  � ��� Z  ^ o���-�,� E   ^ a��� o   ^ _�+�+ 0 keymods keyMods� m   _ `�� ���  c� r   d k��� b   d i��� o   d e�*�* 0 
keymodlist 
keyModList� J   e h�� ��)� m   e f�(
�( eMdsKctl�)  � o      �'�' 0 
keymodlist 
keyModList�-  �,  � ��&� I  p w�%��
�% .prcskprsnull���     ctxt� o   p q�$�$ 0 thekeystroke theKeystroke� �#��"
�# 
faal� o   r s�!�! 0 
keymodlist 
keyModList�"  �&  � m     ���                                                                                  sevs  alis    �  Macintosh HD               ��8�H+  ��~System Events.app                                              ��Z�A|�        ����  	                CoreServices    ��$      �A�9    ��~��{��z  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � �� � I  y ����
� .sysodelanull��� ��� nmbr� m   y |�� ?�333333�  �   � 4    ��
� 
capp� o    �� 0 frontapp frontApp� ��� l  � �����  �  �  � ��� l  � �����  � ; 5 For special keys, use key code in place of keystroke   � ��� j   F o r   s p e c i a l   k e y s ,   u s e   k e y   c o d e   i n   p l a c e   o f   k e y s t r o k e� ��� l  � �����  �   "left" = key code 123   � ��� ,   " l e f t "   =   k e y   c o d e   1 2 3� ��� l  � �����  �   "right" = key code 124   � ��� .   " r i g h t "   =   k e y   c o d e   1 2 4� ��� l  � �����  �   "down" = key code 125   � ��� ,   " d o w n "   =   k e y   c o d e   1 2 5� ��� l  � �����  �   "up" = key code 126   � ��� (   " u p "   =   k e y   c o d e   1 2 6� ��� l  � �����  �   "tab" = key code 48   � ��� (   " t a b "   =   k e y   c o d e   4 8� ��� l  � �����  �   "space" = key code 49   � ��� ,   " s p a c e "   =   k e y   c o d e   4 9� ��� l  � �����  �   "enter" = key code 76   � ��� ,   " e n t e r "   =   k e y   c o d e   7 6� 	 		  l  � ��		�  	   "return" = key code 36 ?   	 �		 2   " r e t u r n "   =   k e y   c o d e   3 6   ?	 			 l  � ��		�  	    "backspace" = key code 51   	 �				 4   " b a c k s p a c e "   =   k e y   c o d e   5 1	 	
		
 l  � ��		�  	   "home" = key code 115   	 �		 ,   " h o m e "   =   k e y   c o d e   1 1 5	 			 l  � ��		�  	   "end" = key code 119   	 �		 *   " e n d "   =   k e y   c o d e   1 1 9	 			 l  � ��		�  	   "insert" = key code 114   	 �		 0   " i n s e r t "   =   k e y   c o d e   1 1 4	 			 l  � ��		�  	   "delete" = key code 117   	 �		 0   " d e l e t e "   =   k e y   c o d e   1 1 7	 			 l  � ��
	 	!�
  	    "pgup" = key code 116   	! �	"	" ,   " p g u p "   =   k e y   c o d e   1 1 6	 	#�		# l  � ��	$	%�  	$   "pgdn" = key code 121   	% �	&	& ,   " p g d n "   =   k e y   c o d e   1 2 1�	  [ 	'	(	' l     ����  �  �  	( 	)�	) l     ����  �  �  �       � 	* B�� X d�� z	+	,	-	.	/	0	1	2	3	4	5	6	7	8	9�   	* �������������������������������������������� 0 
moduletype 
moduleType�� 0 whichmodule whichModule�� 0 	fieldtype 	fieldType�� 0 outputto outputTo�� &0 usecitationformat useCitationFormat�� 0 otheroptions otherOptions
�� .aevtoappnull  �   � ****
�� .DAEDopnt****       utxt�� 0 handle_string  �� .0 getmodulenamefromlist getModuleNameFromList�� 0 getmodulelist getModuleList�� $0 getscripturetext getScriptureText�� 0 checkenglish checkEnglish�� $0 lookupaccordance lookupAccordance�� $0 showinaccordance showInAccordance�� .0 removeextracharacters removeExtraCharacters�� &0 removeextraspaces removeExtraSpaces�� 0 	pastetext 	pasteText�� 0 displayresult displayResult�� 0 minimumvolume minimumVolume�� $0 dokeycombination doKeyCombination�� 
�� boovfals	+ �� �����	:	;��
�� .aevtoappnull  �   � ****��  ��  	:  	;  ��� ����������� 0 searchstring searchString�� 0 	inputfrom 	inputFrom�� �� $0 lookupaccordance lookupAccordance�� 0 	theresult 	theResult�� 3�E�O�E�O*�b   b  b  �b  b  b  �+ E�O�	, ������	<	=��
�� .DAEDopnt****       utxt�� 0 searchstring searchString��  	< �������� 0 searchstring searchString�� 0 frontapp frontApp�� 0 	inputfrom 	inputFrom	= 
2������	>����>����
�� .miscactvnull��� ��� null
�� 
prcs
�� 
pnam	>  
�� 
pisf
�� 
capp�� �� $0 lookupaccordance lookupAccordance�� U� *j O*�k/�,�[�,\Ze81E�UO*�/ *j UO�E�O*�b   b  b  �b  b  b  �+ 		- ��]����	?	@���� 0 handle_string  �� ��	A�� 	A  ���� 0 searchstring searchString��  	? ������ 0 searchstring searchString�� 0 	inputfrom 	inputFrom	@ eo������
�� .GURLGURLnull��� ��� TEXT�� �� $0 lookupaccordance lookupAccordance�� 0�E�O�j O*�b   b  b  �b  b  b  �+ 	. �������	B	C���� .0 getmodulenamefromlist getModuleNameFromList�� ��	D�� 	D  ���� 0 modulenumber moduleNumber��  	B �������� 0 modulenumber moduleNumber�� 0 
modulelist 
moduleList�� 0 
modulename 
moduleName	C �������� 0 getmodulelist getModuleList
�� 
cobj�� .0 removeextracharacters removeExtraCharacters�� *j+  E�O��/E�O)�k+ E�O�	/ �������	E	F���� 0 getmodulelist getModuleList��  ��  	E ���� 0 	theresult 	theResult	F ���
�� .AccdVerL****      � ****�� � 	*j E�UO�	0 �������	G	H���� $0 getscripturetext getScriptureText�� ��	I�� 	I  �������� 0 
modulename 
moduleName�� 0 textreference textReference��  0 citationformat citationFormat��  	G ���������� 0 
modulename 
moduleName�� 0 textreference textReference��  0 citationformat citationFormat�� 0 	theresult 	theResult	H ���
�� .AccdTxRf****      � ****�� � ���mvj E�UO�	1 ������	J	K���� 0 checkenglish checkEnglish�� ��	L�� 	L  ���� 0 
modulename 
moduleName��  	J ������ 0 
modulename 
moduleName�� 0 	theresult 	theResult	K ��
�� .AccdIsEg****      � ****�� � �kvj E�UO�	2 ��0����	M	N���� $0 lookupaccordance lookupAccordance�� ��	O�� 	O  ������������������ 0 search_string search_String�� 0 module_type module_Type�� 0 which_module which_Module�� 0 
field_type 
field_Type�� 0 
input_from 
input_From�� 0 	output_to 	output_To�� (0 use_citationformat use_CitationFormat�� 0 other_options other_Options��  	M �������������������������� 0 search_string search_String�� 0 module_type module_Type�� 0 which_module which_Module�� 0 
field_type 
field_Type�� 0 
input_from 
input_From�� 0 	output_to 	output_To�� (0 use_citationformat use_CitationFormat�� 0 other_options other_Options�� 0 doquery doQuery�� 0 
modulelist 
moduleList�� 0 	theresult 	theResult�� 0 err  	N -]b��n��q�����������~�}�|�{�z�y����x�w �v�u%�t2�s;�r�q�p�o\il�nuy�m�l�
�� 
bool
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
ttxt�� �� $0 showinaccordance showInAccordance
� 
rslt�~ .0 removeextracharacters removeExtraCharacters
�} 
long�| .0 getmodulenamefromlist getModuleNameFromList�{  �z  �y 0 getmodulelist getModuleList
�x .AccdTxRf****      � ****�w 0 err  �v &0 removeextraspaces removeExtraSpaces�u 0 	pastetext 	pasteText
�t .JonspClpnull���     ****
�s .sysodelanull��� ��� nmbr�r 2�q 0 minimumvolume minimumVolume
�p 
VOIC
�o .sysottosnull���     TEXT
�n .DAEDlargnull���    utxt
�m .odlbltyp****      � ****�l 0 displayresult displayResult��l�� 
 �� �& ���l �,E�OeE�Y fE�O�� *������+ 
O�EY0*�k+ E�O ��&E�O*�k+ E�W $X  *j+ E�O�� a �%a %Y hO a  ���mvj E�UW X  a �%E�O*�k+ E�O�a   *��l+ OeOPY ��a   �j Oa j OeOPY ��a   ,*a  k+ !O �a "�l #W X  �j #OeOPY \�a $  F�a %  a &Za & �j 'UY #�a (  a )Za ) �j *UY *�k+ +OeOPY �a ,  �Y hOP	3 �k��j�i	P	Q�h�k $0 showinaccordance showInAccordance�j �g	R�g 	R  �f�e�d�c�b�f 0 asearchstring aSearchString�e 0 amoduletype aModuleType�d 0 awhichmodule aWhichModule�c 0 
afieldtype 
aFieldType�b 0 aotheroptions aOtherOptions�i  	P �a�`�_�^�]�\�[�Z�a 0 asearchstring aSearchString�` 0 amoduletype aModuleType�_ 0 awhichmodule aWhichModule�^ 0 
afieldtype 
aFieldType�] 0 aotheroptions aOtherOptions�\ 0 accordprocess accordProcess�[ 0 	theresult 	theResult�Z 0 	inputfrom 	inputFrom	Q T�Y�X���W���V�U�T�S��R��Q��P*.25�OAH�N�M�LP�K�J�I�H�G�F�E�D��C�B��A��@�����?�>�=�<2KCQV`w�������;�:���9�8Z���7���6
�Y 
ctxt�X��
�W 
bool�V  �U  
�T 
long
�S 
TEXT
�R .miscactvnull��� ��� null
�Q .sysodelanull��� ��� nmbr
�P 
prcs�O 
�N 
faal
�M eMdsKcmd
�L .prcskprsnull���     ctxt�K �J �I �H �G 	
�F eMdsKctl
�E 
mbar
�D 
mbri
�C 
menE
�B 
menI
�A .prcsclicnull��� ��� uiel�@ .0 removeextracharacters removeExtraCharacters
�? 
spac�> {
�= .prcskcodnull���     ****
�< 
tab 
�; 
alis
�: .aevtodocnull  �    alis
�9 
ret 
�8 eMdsKopt
�7 .JonsgClp****    ��� null�6 0 	pastetext 	pasteText�h� 8�[�\[Z�\Zi2� 
 �� �&
 �[�\[Z�\Zi2� �& 
��%E�Y hW X  hO 
��&E�W X  ��&E�O� *j UO�j O�S *a a /E�W &X   *a a /E�W X  *a a /E�O�a a a a a v� סa   Pa a a kvl Oa j Olma a a  a !a "a #ja #v� ��&a a $kvl Y hOPY 5*a %k/a &a '/a (k/a )a */a (k/a )�/a (k/a )�/j +OPO�a ,  ")�k+ -E�Oa .a a a $lvl OPY  �a /  a 0a a a $lvl Y hOPYI�a 1  _ 2j Oa 3j 4O_ 5j OPY%�a 6  F*a %k/a &a 7/a (k/a )a 8/a (k/a )�/j +Oa 9j Oa :a a kvl OPY ١a ;  P*a %k/a &a </a (k/a )a =/a (k/a )�/a (k/a )�/j +Oa 9j Oa >a a kvl OPY ��a ?  ,*a %k/a &a @/a (k/a )a A/a (k/a )�/j +Y Q�a B  a C *a D�/j EUOPY 3*a %k/a &a F/a (k/a )a G/a (k/a )�/a (k/a )�/j +O�j O�j Oa j O_ Hj Oa j O_ Hj Oa Ia Ja Kmv� �a j O_ 5a a Lkvl O�j Oa Ma a kvl O�j Oa Na a kvl Oa j O�a O  *j PE�O�j O�Y ;�a Q  2a Ra a kvl O�j O*j PE�O) 	*��l+ SUOeY hY hOPUOeUOP	4 �5��4�3	S	T�2�5 .0 removeextracharacters removeExtraCharacters�4 �1	U�1 	U  �0�0 0 	thestring 	theString�3  	S �/�/ 0 	thestring 	theString	T �.�-&�,
�. 
TEXT
�- 
ctxt�,���2 e��&E�O ,hZ�[�\[Zk\Zk2 Y hO�[�\[Zl\Zi2E�[OY��O ,hZ�[�\[Zi\Zi2 Y hO�[�\[Zk\Z�2E�[OY��O�	5 �+:�*�)	V	W�(�+ &0 removeextraspaces removeExtraSpaces�* �'	X�' 	X  �&�& 0 	thestring 	theString�)  	V �%�% 0 	thestring 	theString	W �$V�#o�"
�$ 
TEXT
�# 
ctxt�"���( g��&E�O -hZ�[�\[Zk\Zk2 Y hO�[�\[Zl\Zi2E�[OY��O -hZ�[�\[Zi\Zi2 Y hO�[�\[Zk\Z�2E�[OY��O�	6 �!�� �	Y	Z��! 0 	pastetext 	pasteText�  �	[� 	[  ��� 0 	thestring 	theString� 0 thescope theScope�  	Y ���� 0 	thestring 	theString� 0 thescope theScope� 0 oldclipboard OldClipboard	Z �������������������
� 
ptxt
� .odlbactn****      � ****
� 
bool
� .JonsgClp****    ��� null
� 
ctxt
� 
TEXT
� 
utxt� 
� .JonspClpnull���     ****� $0 dokeycombination doKeyCombination� q��  �Z� 	��l UY [��
 ���& '*j E�O��&��j O*��l+ O�j Y (*j E�O��&��j O*a a l+ O�j 	7 ���	\	]�
� 0 displayresult displayResult� �		^�	 	^  �� 0 	thestring 	theString�  	\ �� 0 	thestring 	theString	] 
4���&��
� 
prcs
� .coredoexnull���     ****
� .DAEDlargnull���    utxt
� .odlbltyp****      � ****
� .sysodlogaskr        TEXT�
 J� D*��/j  �Z� �j UOPY (*��/j  �Z� �j UOPY ) �j 	UUOP	8 �=� ��	_	`��� 0 minimumvolume minimumVolume�  ��	a�� 	a  ���� 0 n  ��  	_ ������ 0 n  �� 0 	curvolume 	curVolume	` ��������
�� .sysogtvlvlst   ��� null
�� 
ouvl
�� .aevtstvlnull��� ��� nmbr
�� 
mute�� $*j  �,E�O�� *�l Y hO*�fl 	9 ��]����	b	c���� $0 dokeycombination doKeyCombination�� ��	d�� 	d  ������ 0 thekeystroke theKeystroke�� 0 keymods keyMods��  	b ���������� 0 thekeystroke theKeystroke�� 0 keymods keyMods�� 0 frontapp frontApp�� 0 
keymodlist 
keyModList	c ���	>���������������������������
�� 
prcs
�� 
pisf
�� 
pnam
�� 
ctxt
�� 
capp
�� eMdsKcmd
�� eMdsKopt
�� eMdsKsft
�� eMdsKctl
�� 
faal
�� .prcskprsnull���     ctxt
�� .sysodelanull��� ��� nmbr�� �� *�-�[�,\Ze81�,�&E�UO*�/ c� VjvE�O�� ��kv%E�Y hO�� ��kv%E�Y hO�� ��kv%E�Y hO�� ��kv%E�Y hO��l UOa j UOPascr  ��ޭ