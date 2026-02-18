# ASCII / Figlet Fonts — Dev Doc

> **Purpose:** Injectable reference for the Python Terminal Visual Catalogue.
> **Total pyfiglet fonts available:** 571
> **Curated selection below:** 62 fonts across 7 categories, chosen for visual impact & variety.
> **Sample word:** `Hello`

---

## 1. <a name='TableofContents'></a>Table of Contents

<!-- vscode-markdown-toc -->
* 1. [Table of Contents](#TableofContents)
* 2. [1. Curated Font Gallery](#CuratedFontGallery)
	* 2.1. [Essentials](#Essentials)
		* 2.1.1. [`standard` — 5h × 22w](#standard5h22w)
		* 2.1.2. [`big` — 6h × 23w](#big6h23w)
		* 2.1.3. [`small` — 4h × 18w](#small4h18w)
		* 2.1.4. [`mini` — 3h × 12w](#mini3h12w)
		* 2.1.5. [`banner` — 7h × 36w](#banner7h36w)
		* 2.1.6. [`block` — 6h × 38w](#block6h38w)
		* 2.1.7. [`lean` — 6h × 41w](#lean6h41w)
		* 2.1.8. [`slant` — 5h × 23w](#slant5h23w)
		* 2.1.9. [`shadow` — 4h × 22w](#shadow4h22w)
	* 2.2. [Retro & Pixel](#RetroPixel)
		* 2.2.1. [`3-d` — 8h × 36w](#3-d8h36w)
		* 2.2.2. [`3x5` — 6h × 20w](#3x56h20w)
		* 2.2.3. [`5x7` — 6h × 30w](#5x76h30w)
		* 2.2.4. [`4max` — 4h × 36w](#4max4h36w)
		* 2.2.5. [`chunky` — 4h × 30w](#chunky4h30w)
		* 2.2.6. [`digital` — 3h × 11w](#digital3h11w)
		* 2.2.7. [`lcd` — 5h × 30w](#lcd5h30w)
		* 2.2.8. [`stampatello` — 4h × 21w](#stampatello4h21w)
		* 2.2.9. [`smkeyboard` — 4h × 26w](#smkeyboard4h26w)
	* 2.3. [Big & Bold](#BigBold)
		* 2.3.1. [`banner3-D` — 8h × 52w](#banner3-D8h52w)
		* 2.3.2. [`colossal` — 8h × 33w](#colossal8h33w)
		* 2.3.3. [`doom` — 6h × 22w](#doom6h22w)
		* 2.3.4. [`epic` — 8h × 45w](#epic8h45w)
		* 2.3.5. [`georgia11` — 9h × 42w](#georgia119h42w)
		* 2.3.6. [`roman` — 7h × 46w](#roman7h46w)
		* 2.3.7. [`starwars` — 6h × 49w](#starwars6h49w)
	* 2.4. [Script & Cursive](#ScriptCursive)
		* 2.4.1. [`script` — 5h × 24w](#script5h24w)
		* 2.4.2. [`cursive` — 4h × 17w](#cursive4h17w)
		* 2.4.3. [`contessa` — 3h × 12w](#contessa3h12w)
		* 2.4.4. [`cybermedium` — 3h × 25w](#cybermedium3h25w)
		* 2.4.5. [`larry3d` — 7h × 40w](#larry3d7h40w)
		* 2.4.6. [`ogre` — 5h × 22w](#ogre5h22w)
		* 2.4.7. [`rectangles` — 5h × 19w](#rectangles5h19w)
	* 2.5. [Decorative](#Decorative)
		* 2.5.1. [`alligator` — 7h × 55w](#alligator7h55w)
		* 2.5.2. [`bubble` — 4h × 21w](#bubble4h21w)
		* 2.5.3. [`bulbhead` — 4h × 32w](#bulbhead4h32w)
		* 2.5.4. [`graffiti` — 6h × 36w](#graffiti6h36w)
		* 2.5.5. [`isometric1` — 11h × 62w](#isometric111h62w)
		* 2.5.6. [`letters` — 5h × 30w](#letters5h30w)
		* 2.5.7. [`poison` — 11h × 50w](#poison11h50w)
		* 2.5.8. [`speed` — 5h × 31w](#speed5h31w)
	* 2.6. [Minimal & Compact](#MinimalCompact)
		* 2.6.1. [`alphabet` — 5h × 17w](#alphabet5h17w)
		* 2.6.2. [`binary` — 1h × 44w](#binary1h44w)
		* 2.6.3. [`morse` — 1h × 20w](#morse1h20w)
		* 2.6.4. [`o8` — 5h × 46w](#o85h46w)
		* 2.6.5. [`pagga` — 3h × 20w](#pagga3h20w)
		* 2.6.6. [`runic` — 6h × 7w](#runic6h7w)
		* 2.6.7. [`short` — 2h × 10w](#short2h10w)
		* 2.6.8. [`term` — 1h × 5w](#term1h5w)
		* 2.6.9. [`thin` — 5h × 25w](#thin5h25w)
	* 2.7. [Tech & Hacker](#TechHacker)
		* 2.7.1. [`ansi_regular` — 5h × 41w](#ansi_regular5h41w)
		* 2.7.2. [`ansi_shadow` — 6h × 41w](#ansi_shadow6h41w)
		* 2.7.3. [`cyberlarge` — 3h × 38w](#cyberlarge3h38w)
		* 2.7.4. [`hex` — 1h × 14w](#hex1h14w)
		* 2.7.5. [`lockergnome` — 3h × 23w](#lockergnome3h23w)
		* 2.7.6. [`univers` — 9h × 43w](#univers9h43w)
		* 2.7.7. [`js_stick_letters` — 3h × 25w](#js_stick_letters3h25w)
* 3. [2. Data Format & JS Structure](#DataFormatJSStructure)
* 4. [3. Python Code Snippets](#PythonCodeSnippets)
	* 4.1. [Basic usage](#Basicusage)
	* 4.2. [Using Figlet class](#UsingFigletclass)
	* 4.3. [List all fonts](#Listallfonts)
	* 4.4. [art library (alternative)](#artlibraryalternative)
	* 4.5. [Rich + pyfiglet combo](#Richpyfigletcombo)
* 5. [4. Catalogue UI Spec](#CatalogueUISpec)
	* 5.1. [Card Layout](#CardLayout)
	* 5.2. [Features](#Features)
	* 5.3. [Rendering Strategy](#RenderingStrategy)
* 6. [5. Complete Font Index](#CompleteFontIndex)
* 7. [6. v0.0.2 Integration Tasklist](#v0.0.2IntegrationTasklist)
	* 7.1. [[x] Review](#xReview)
	* 7.2. [[x] Plan](#xPlan)
	* 7.3. [[x] Action](#xAction)

<!-- vscode-markdown-toc-config
	numbering=true
	autoSave=true
	/vscode-markdown-toc-config -->
<!-- /vscode-markdown-toc -->

---

## 2. <a name='CuratedFontGallery'></a>1. Curated Font Gallery

### 2.1. <a name='Essentials'></a>Essentials

#### 2.1.1. <a name='standard5h22w'></a>`standard` — 5h × 22w

```
 _   _      _ _       
| | | | ___| | | ___  
| |_| |/ _ \ | |/ _ \ 
|  _  |  __/ | | (_) |
|_| |_|\___|_|_|\___/
```

#### 2.1.2. <a name='big6h23w'></a>`big` — 6h × 23w

```
 _    _      _ _       
| |  | |    | | |      
| |__| | ___| | | ___  
|  __  |/ _ \ | |/ _ \ 
| |  | |  __/ | | (_) |
|_|  |_|\___|_|_|\___/
```

#### 2.1.3. <a name='small4h18w'></a>`small` — 4h × 18w

```
 _  _     _ _     
| || |___| | |___ 
| __ / -_) | / _ \
|_||_\___|_|_\___/
```

#### 2.1.4. <a name='mini3h12w'></a>`mini` — 3h × 12w

```
            
|_| _ || _  
| |(/_||(_)
```

#### 2.1.5. <a name='banner7h36w'></a>`banner` — 7h × 36w

```
#     #                             
#     # ###### #      #       ####  
#     # #      #      #      #    # 
####### #####  #      #      #    # 
#     # #      #      #      #    # 
#     # #      #      #      #    # 
#     # ###### ###### ######  ####
```

#### 2.1.6. <a name='block6h38w'></a>`block` — 6h × 38w

```
                                      
_|    _|            _|  _|            
_|    _|    _|_|    _|  _|    _|_|    
_|_|_|_|  _|_|_|_|  _|  _|  _|    _|  
_|    _|  _|        _|  _|  _|    _|  
_|    _|    _|_|_|  _|  _|    _|_|
```

#### 2.1.7. <a name='lean6h41w'></a>`lean` — 6h × 41w

```
                                         
    _/    _/            _/  _/           
   _/    _/    _/_/    _/  _/    _/_/    
  _/_/_/_/  _/_/_/_/  _/  _/  _/    _/   
 _/    _/  _/        _/  _/  _/    _/    
_/    _/    _/_/_/  _/  _/    _/_/
```

#### 2.1.8. <a name='slant5h23w'></a>`slant` — 5h × 23w

```
    __  __     ____    
   / / / /__  / / /___ 
  / /_/ / _ \/ / / __ \
 / __  /  __/ / / /_/ /
/_/ /_/\___/_/_/\____/
```

#### 2.1.9. <a name='shadow4h22w'></a>`shadow` — 4h × 22w

```
 |   |      | |       
 |   |  _ \ | |  _ \  
 ___ |  __/ | | (   | 
_|  _|\___|_|_|\___/
```

### 2.2. <a name='RetroPixel'></a>Retro & Pixel

#### 2.2.1. <a name='3-d8h36w'></a>`3-d` — 8h × 36w

```
 **      **          **  **         
/**     /**         /** /**         
/**     /**  *****  /** /**  ****** 
/********** **///** /** /** **////**
/**//////**/******* /** /**/**   /**
/**     /**/**////  /** /**/**   /**
/**     /**//****** *** ***//****** 
//      //  ////// /// ///  //////
```

#### 2.2.2. <a name='3x56h20w'></a>`3x5` — 6h × 20w

```
                    
# #      #   #      
# # ###  #   #  ### 
### ##   #   #  # # 
# # ###  ##  ## ### 
# #
```

#### 2.2.3. <a name='5x76h30w'></a>`5x7` — 6h × 30w

```
#  #        ##    ##          
#  #         #     #          
####   ##    #     #     ##   
#  #  # ##   #     #    #  #  
#  #  ##     #     #    #  #  
#  #   ##   ###   ###    ##
```

#### 2.2.4. <a name='4max4h36w'></a>`4max` — 4h × 36w

```
88  88 888888 88     88      dP"Yb  
88  88 88__   88     88     dP   Yb 
888888 88""   88  .o 88  .o Yb   dP 
88  88 888888 88ood8 88ood8  YbodP
```

#### 2.2.5. <a name='chunky4h30w'></a>`chunky` — 4h × 30w

```
 _______         __ __        
|   |   |.-----.|  |  |.-----.
|       ||  -__||  |  ||  _  |
|___|___||_____||__|__||_____|
```

#### 2.2.6. <a name='digital3h11w'></a>`digital` — 3h × 11w

```
+-+-+-+-+-+
|H|e|l|l|o|
+-+-+-+-+-+
```

#### 2.2.7. <a name='lcd5h30w'></a>`lcd` — 5h × 30w

```
                              
|   |         |     |         
|-+-|  -      +     +    -    
|   | |/      |     |   | |   
       --     -     -    -
```

#### 2.2.8. <a name='stampatello4h21w'></a>`stampatello` — 4h × 21w

```
,-_/,.     .  .      
' |_|/ ,-. |  |  ,-. 
 /| |  |-' |  |  | | 
 `' `' `-' `' `' `-'
```

#### 2.2.9. <a name='smkeyboard4h26w'></a>`smkeyboard` — 4h × 26w

```
 ____ ____ ____ ____ ____ 
||H |||e |||l |||l |||o ||
||__|||__|||__|||__|||__||
|/__\|/__\|/__\|/__\|/__\|
```

### 2.3. <a name='BigBold'></a>Big & Bold

#### 2.3.1. <a name='banner3-D8h52w'></a>`banner3-D` — 8h × 52w

```
'##::::'##:'########:'##:::::::'##::::::::'#######::
 ##:::: ##: ##.....:: ##::::::: ##:::::::'##.... ##:
 ##:::: ##: ##::::::: ##::::::: ##::::::: ##:::: ##:
 #########: ######::: ##::::::: ##::::::: ##:::: ##:
 ##.... ##: ##...:::: ##::::::: ##::::::: ##:::: ##:
 ##:::: ##: ##::::::: ##::::::: ##::::::: ##:::: ##:
 ##:::: ##: ########: ########: ########:. #######::
..:::::..::........::........::........:::.......:::
```

#### 2.3.2. <a name='colossal8h33w'></a>`colossal` — 8h × 33w

```
888    888        888888         
888    888        888888         
888    888        888888         
8888888888 .d88b. 888888 .d88b.  
888    888d8P  Y8b888888d88""88b 
888    88888888888888888888  888 
888    888Y8b.    888888Y88..88P 
888    888 "Y8888 888888 "Y88P"
```

#### 2.3.3. <a name='doom6h22w'></a>`doom` — 6h × 22w

```
 _   _      _ _       
| | | |    | | |      
| |_| | ___| | | ___  
|  _  |/ _ \ | |/ _ \ 
| | | |  __/ | | (_) |
\_| |_/\___|_|_|\___/
```

#### 2.3.4. <a name='epic8h45w'></a>`epic` — 8h × 45w

```
          _______  _        _        _______ 
|\     /|(  ____ \( \      ( \      (  ___  )
| )   ( || (    \/| (      | (      | (   ) |
| (___) || (__    | |      | |      | |   | |
|  ___  ||  __)   | |      | |      | |   | |
| (   ) || (      | |      | |      | |   | |
| )   ( || (____/\| (____/\| (____/\| (___) |
|/     \|(_______/(_______/(_______/(_______)
```

#### 2.3.5. <a name='georgia119h42w'></a>`georgia11` — 9h × 42w

```
                                          
                       ,,    ,,           
`7MMF'  `7MMF'       `7MM  `7MM           
  MM      MM           MM    MM           
  MM      MM  .gP"Ya   MM    MM  ,pW"Wq.  
  MMmmmmmmMM ,M'   Yb  MM    MM 6W'   `Wb 
  MM      MM 8M""""""  MM    MM 8M     M8 
  MM      MM YM.    ,  MM    MM YA.   ,A9 
.JMML.  .JMML.`Mbmmd'.JMML..JMML.`Ybmd9'
```

#### 2.3.6. <a name='roman7h46w'></a>`roman` — 7h × 46w

```
ooooo   ooooo           oooo  oooo            
`888'   `888'           `888  `888            
 888     888   .ooooo.   888   888   .ooooo.  
 888ooooo888  d88' `88b  888   888  d88' `88b 
 888     888  888ooo888  888   888  888   888 
 888     888  888    .o  888   888  888   888 
o888o   o888o `Y8bod8P' o888o o888o `Y8bod8P'
```

#### 2.3.7. <a name='starwars6h49w'></a>`starwars` — 6h × 49w

```
 __    __   _______  __       __        ______   
|  |  |  | |   ____||  |     |  |      /  __  \  
|  |__|  | |  |__   |  |     |  |     |  |  |  | 
|   __   | |   __|  |  |     |  |     |  |  |  | 
|  |  |  | |  |____ |  `----.|  `----.|  `--'  | 
|__|  |__| |_______||_______||_______| \______/
```

### 2.4. <a name='ScriptCursive'></a>Script & Cursive

#### 2.4.1. <a name='script5h24w'></a>`script` — 5h × 24w

```
 ,          _   _       
/|   |     | | | |      
 |___|  _  | | | |  __  
 |   |\|/  |/  |/  /  \_
 |   |/|__/|__/|__/\__/
```

#### 2.4.2. <a name='cursive4h17w'></a>`cursive` — 4h × 17w

```
 _    ,    _  _  
' )  /    // //  
 /--/ _  // // __
/  (_</_</_</_(_)
```

#### 2.4.3. <a name='contessa3h12w'></a>`contessa` — 3h × 12w

```
.  .   ..   
|__| _ || _ 
|  |(/,||(_)
```

#### 2.4.4. <a name='cybermedium3h25w'></a>`cybermedium` — 3h × 25w

```
_  _ ____ _    _    ____ 
|__| |___ |    |    |  | 
|  | |___ |___ |___ |__|
```

#### 2.4.5. <a name='larry3d7h40w'></a>`larry3d` — 7h × 40w

```
 __  __          ___    ___             
/\ \/\ \        /\_ \  /\_ \            
\ \ \_\ \     __\//\ \ \//\ \     ___   
 \ \  _  \  /'__`\\ \ \  \ \ \   / __`\ 
  \ \ \ \ \/\  __/ \_\ \_ \_\ \_/\ \L\ \
   \ \_\ \_\ \____\/\____\/\____\ \____/
    \/_/\/_/\/____/\/____/\/____/\/___/
```

#### 2.4.6. <a name='ogre5h22w'></a>`ogre` — 5h × 22w

```
            _ _       
  /\  /\___| | | ___  
 / /_/ / _ \ | |/ _ \ 
/ __  /  __/ | | (_) |
\/ /_/ \___|_|_|\___/
```

#### 2.4.7. <a name='rectangles5h19w'></a>`rectangles` — 5h × 19w

```
                   
 _____     _ _     
|  |  |___| | |___ 
|     | -_| | | . |
|__|__|___|_|_|___|
```

### 2.5. <a name='Decorative'></a>Decorative

#### 2.5.1. <a name='alligator7h55w'></a>`alligator` — 7h × 55w

```
      :::    ::::::::::::::::       :::       :::::::: 
     :+:    :+::+:       :+:       :+:      :+:    :+: 
    +:+    +:++:+       +:+       +:+      +:+    +:+  
   +#++:++#+++#++:++#  +#+       +#+      +#+    +:+   
  +#+    +#++#+       +#+       +#+      +#+    +#+    
 #+#    #+##+#       #+#       #+#      #+#    #+#     
###    #########################################
```

#### 2.5.2. <a name='bubble4h21w'></a>`bubble` — 4h × 21w

```
  _   _   _   _   _  
 / \ / \ / \ / \ / \ 
( H | e | l | l | o )
 \_/ \_/ \_/ \_/ \_/
```

#### 2.5.3. <a name='bulbhead4h32w'></a>`bulbhead` — 4h × 32w

```
 _   _  ____  __    __    _____ 
( )_( )( ___)(  )  (  )  (  _  )
 ) _ (  )__)  )(__  )(__  )(_)( 
(_) (_)(____)(____)(____)(_____)
```

#### 2.5.4. <a name='graffiti6h36w'></a>`graffiti` — 6h × 36w

```
  ___ ___         .__  .__          
 /   |   \   ____ |  | |  |   ____  
/    ~    \_/ __ \|  | |  |  /  _ \ 
\    Y    /\  ___/|  |_|  |_(  <_> )
 \___|_  /  \___  >____/____/\____/ 
       \/       \/
```

#### 2.5.5. <a name='isometric111h62w'></a>`isometric1` — 11h × 62w

```
      ___           ___           ___       ___       ___     
     /\__\         /\  \         /\__\     /\__\     /\  \    
    /:/  /        /::\  \       /:/  /    /:/  /    /::\  \   
   /:/__/        /:/\:\  \     /:/  /    /:/  /    /:/\:\  \  
  /::\  \ ___   /::\~\:\  \   /:/  /    /:/  /    /:/  \:\  \ 
 /:/\:\  /\__\ /:/\:\ \:\__\ /:/__/    /:/__/    /:/__/ \:\__\
 \/__\:\/:/  / \:\~\:\ \/__/ \:\  \    \:\  \    \:\  \ /:/  /
      \::/  /   \:\ \:\__\    \:\  \    \:\  \    \:\  /:/  / 
      /:/  /     \:\ \/__/     \:\  \    \:\  \    \:\/:/  /  
     /:/  /       \:\__\        \:\__\    \:\__\    \::/  /   
     \/__/         \/__/         \/__/     \/__/     \/__/
```

#### 2.5.6. <a name='letters5h30w'></a>`letters` — 5h × 30w

```
HH   HH        lll lll        
HH   HH   eee  lll lll  oooo  
HHHHHHH ee   e lll lll oo  oo 
HH   HH eeeee  lll lll oo  oo 
HH   HH  eeeee lll lll  oooo
```

#### 2.5.7. <a name='poison11h50w'></a>`poison` — 11h × 50w

```
                                                  
@@@  @@@  @@@@@@@@  @@@       @@@        @@@@@@   
@@@  @@@  @@@@@@@@  @@@       @@@       @@@@@@@@  
@@!  @@@  @@!       @@!       @@!       @@!  @@@  
!@!  @!@  !@!       !@!       !@!       !@!  @!@  
@!@!@!@!  @!!!:!    @!!       @!!       @!@  !@!  
!!!@!!!!  !!!!!:    !!!       !!!       !@!  !!!  
!!:  !!!  !!:       !!:       !!:       !!:  !!!  
:!:  !:!  :!:        :!:       :!:      :!:  !:!  
::   :::   :: ::::   :: ::::   :: ::::  ::::: ::  
 :   : :  : :: ::   : :: : :  : :: : :   : :  :
```

#### 2.5.8. <a name='speed5h31w'></a>`speed` — 5h × 31w

```
______  __    ___________      
___  / / /_______  /__  /_____ 
__  /_/ /_  _ \_  /__  /_  __ \
_  __  / /  __/  / _  / / /_/ /
/_/ /_/  \___//_/  /_/  \____/
```

### 2.6. <a name='MinimalCompact'></a>Minimal & Compact

#### 2.6.1. <a name='alphabet5h17w'></a>`alphabet` — 5h × 17w

```
H  H     l l     
H  H     l l     
HHHH eee l l ooo 
H  H e e l l o o 
H  H ee  l l ooo
```

#### 2.6.2. <a name='binary1h44w'></a>`binary` — 1h × 44w

```
01001000 01100101 01101100 01101100 01101111
```

#### 2.6.3. <a name='morse1h20w'></a>`morse` — 1h × 20w

```
.... . .-.. .-.. ---
```

#### 2.6.4. <a name='o85h46w'></a>`o8` — 5h × 46w

```
ooooo ooooo            o888  o888             
 888   888  ooooooooo8  888   888   ooooooo   
 888ooo888 888oooooo8   888   888 888     888 
 888   888 888          888   888 888     888 
o888o o888o  88oooo888 o888o o888o  88ooo88
```

#### 2.6.5. <a name='pagga3h20w'></a>`pagga` — 3h × 20w

```
░█░█░█▀▀░█░░░█░░░█▀█
░█▀█░█▀▀░█░░░█░░░█░█
░▀░▀░▀▀▀░▀▀▀░▀▀▀░▀▀▀
```

#### 2.6.6. <a name='runic6h7w'></a>`runic` — 6h × 7w

```
|    | 
|\   | 
| \  | 
|  \ | 
|   \| 
|    |
```

#### 2.6.7. <a name='short2h10w'></a>`short` — 2h × 10w

```
|_| _ ||  
| |(/_||()
```

#### 2.6.8. <a name='term1h5w'></a>`term` — 1h × 5w

```
Hello
```

#### 2.6.9. <a name='thin5h25w'></a>`thin` — 5h × 25w

```
                         
|   |     |    |         
|---|,---.|    |    ,---.
|   ||---'|    |    |   |
`   '`---'`---'`---'`---'
```

### 2.7. <a name='TechHacker'></a>Tech & Hacker

#### 2.7.1. <a name='ansi_regular5h41w'></a>`ansi_regular` — 5h × 41w

```
██   ██ ███████ ██      ██       ██████  
██   ██ ██      ██      ██      ██    ██ 
███████ █████   ██      ██      ██    ██ 
██   ██ ██      ██      ██      ██    ██ 
██   ██ ███████ ███████ ███████  ██████
```

#### 2.7.2. <a name='ansi_shadow6h41w'></a>`ansi_shadow` — 6h × 41w

```
██╗  ██╗███████╗██╗     ██╗      ██████╗ 
██║  ██║██╔════╝██║     ██║     ██╔═══██╗
███████║█████╗  ██║     ██║     ██║   ██║
██╔══██║██╔══╝  ██║     ██║     ██║   ██║
██║  ██║███████╗███████╗███████╗╚██████╔╝
╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ ╚═════╝
```

#### 2.7.3. <a name='cyberlarge3h38w'></a>`cyberlarge` — 3h × 38w

```
 _     _ _______                _____ 
 |_____| |______ |      |      |     |
 |     | |______ |_____ |_____ |_____|
```

#### 2.7.4. <a name='hex1h14w'></a>`hex` — 1h × 14w

```
48 65 6C 6C 6F
```

#### 2.7.5. <a name='lockergnome3h23w'></a>`lockergnome` — 3h × 23w

```
::| ::|     :| :|      
::::::|:~~/ :| :| ,::\ 
::| ::|:::, :| :| `::/
```

#### 2.7.6. <a name='univers9h43w'></a>`univers` — 9h × 43w

```
                                           
88        88            88 88              
88        88            88 88              
88        88            88 88              
88aaaaaaaa88  ,adPPYba, 88 88  ,adPPYba,   
88""""""""88 a8P_____88 88 88 a8"     "8a  
88        88 8PP""""""" 88 88 8b       d8  
88        88 "8b,   ,aa 88 88 "8a,   ,a8"  
88        88  `"Ybbd8"' 88 88  `"YbbdP"'
```

#### 2.7.7. <a name='js_stick_letters3h25w'></a>`js_stick_letters` — 3h × 25w

```
      ___            __  
|__| |__  |    |    /  \ 
|  | |___ |___ |___ \__/
```

---

## 3. <a name='DataFormatJSStructure'></a>2. Data Format & JS Structure

Each font entry stores metadata only — rendering happens via pyfiglet on-demand,
or we can pre-render a sample word and store the ASCII art as a string array.

```js
const FIGLET_FONTS = {
  // fontName: { category, height, width, sample: "pre-rendered lines", lib }
  // ── Essentials ──
  "standard": {
    category: "Essentials",
    height: 5,
    width: 22,
    lib: "pyfiglet",
    sample: [
      " _   _      _ _       ",
      "| | | | ___| | | ___  ",
      "| |_| |/ _ \\ | |/ _ \\ ",
      "|  _  |  __/ | | (_) |",
      "|_| |_|\\___|_|_|\\___/",
    ]
  },
  "big": {
    category: "Essentials",
    height: 6,
    width: 23,
    lib: "pyfiglet",
    sample: [
      " _    _      _ _       ",
      "| |  | |    | | |      ",
      "| |__| | ___| | | ___  ",
      "|  __  |/ _ \\ | |/ _ \\ ",
      "| |  | |  __/ | | (_) |",
      "|_|  |_|\\___|_|_|\\___/",
    ]
  },
  "small": {
    category: "Essentials",
    height: 4,
    width: 18,
    lib: "pyfiglet",
    sample: [
      " _  _     _ _     ",
      "| || |___| | |___ ",
      "| __ / -_) | / _ \\",
      "|_||_\\___|_|_\\___/",
    ]
  },
  "mini": {
    category: "Essentials",
    height: 3,
    width: 12,
    lib: "pyfiglet",
    sample: [
      "            ",
      "|_| _ || _  ",
      "| |(/_||(_)",
    ]
  },
  "banner": {
    category: "Essentials",
    height: 7,
    width: 36,
    lib: "pyfiglet",
    sample: [
      "#     #                             ",
      "#     # ###### #      #       ####  ",
      "#     # #      #      #      #    # ",
      "####### #####  #      #      #    # ",
      "#     # #      #      #      #    # ",
      "#     # #      #      #      #    # ",
      "#     # ###### ###### ######  ####",
    ]
  },
  "block": {
    category: "Essentials",
    height: 6,
    width: 38,
    lib: "pyfiglet",
    sample: [
      "                                      ",
      "_|    _|            _|  _|            ",
      "_|    _|    _|_|    _|  _|    _|_|    ",
      "_|_|_|_|  _|_|_|_|  _|  _|  _|    _|  ",
      "_|    _|  _|        _|  _|  _|    _|  ",
      "_|    _|    _|_|_|  _|  _|    _|_|",
    ]
  },
  "lean": {
    category: "Essentials",
    height: 6,
    width: 41,
    lib: "pyfiglet",
    sample: [
      "                                         ",
      "    _/    _/            _/  _/           ",
      "   _/    _/    _/_/    _/  _/    _/_/    ",
      "  _/_/_/_/  _/_/_/_/  _/  _/  _/    _/   ",
      " _/    _/  _/        _/  _/  _/    _/    ",
      "_/    _/    _/_/_/  _/  _/    _/_/",
    ]
  },
  "slant": {
    category: "Essentials",
    height: 5,
    width: 23,
    lib: "pyfiglet",
    sample: [
      "    __  __     ____    ",
      "   / / / /__  / / /___ ",
      "  / /_/ / _ \\/ / / __ \\",
      " / __  /  __/ / / /_/ /",
      "/_/ /_/\\___/_/_/\\____/",
    ]
  },
  "shadow": {
    category: "Essentials",
    height: 4,
    width: 22,
    lib: "pyfiglet",
    sample: [
      " |   |      | |       ",
      " |   |  _ \\ | |  _ \\  ",
      " ___ |  __/ | | (   | ",
      "_|  _|\\___|_|_|\\___/",
    ]
  },
  // ── Retro & Pixel ──
  "3-d": {
    category: "Retro & Pixel",
    height: 8,
    width: 36,
    lib: "pyfiglet",
    sample: [
      " **      **          **  **         ",
      "/**     /**         /** /**         ",
      "/**     /**  *****  /** /**  ****** ",
      "/********** **///** /** /** **////**",
      "/**//////**/******* /** /**/**   /**",
      "/**     /**/**////  /** /**/**   /**",
      "/**     /**//****** *** ***//****** ",
      "//      //  ////// /// ///  //////",
    ]
  },
  "3x5": {
    category: "Retro & Pixel",
    height: 6,
    width: 20,
    lib: "pyfiglet",
    sample: [
      "                    ",
      "# #      #   #      ",
      "# # ###  #   #  ### ",
      "### ##   #   #  # # ",
      "# # ###  ##  ## ### ",
      "# #",
    ]
  },
  "5x7": {
    category: "Retro & Pixel",
    height: 6,
    width: 30,
    lib: "pyfiglet",
    sample: [
      "#  #        ##    ##          ",
      "#  #         #     #          ",
      "####   ##    #     #     ##   ",
      "#  #  # ##   #     #    #  #  ",
      "#  #  ##     #     #    #  #  ",
      "#  #   ##   ###   ###    ##",
    ]
  },
  "4max": {
    category: "Retro & Pixel",
    height: 4,
    width: 36,
    lib: "pyfiglet",
    sample: [
      "88  88 888888 88     88      dP\"Yb  ",
      "88  88 88__   88     88     dP   Yb ",
      "888888 88\"\"   88  .o 88  .o Yb   dP ",
      "88  88 888888 88ood8 88ood8  YbodP",
    ]
  },
  "chunky": {
    category: "Retro & Pixel",
    height: 4,
    width: 30,
    lib: "pyfiglet",
    sample: [
      " _______         __ __        ",
      "|   |   |.-----.|  |  |.-----.",
      "|       ||  -__||  |  ||  _  |",
      "|___|___||_____||__|__||_____|",
    ]
  },
  "digital": {
    category: "Retro & Pixel",
    height: 3,
    width: 11,
    lib: "pyfiglet",
    sample: [
      "+-+-+-+-+-+",
      "|H|e|l|l|o|",
      "+-+-+-+-+-+",
    ]
  },
  "lcd": {
    category: "Retro & Pixel",
    height: 5,
    width: 30,
    lib: "pyfiglet",
    sample: [
      "                              ",
      "|   |         |     |         ",
      "|-+-|  -      +     +    -    ",
      "|   | |/      |     |   | |   ",
      "       --     -     -    -",
    ]
  },
  "stampatello": {
    category: "Retro & Pixel",
    height: 4,
    width: 21,
    lib: "pyfiglet",
    sample: [
      ",-_/,.     .  .      ",
      "' |_|/ ,-. |  |  ,-. ",
      " /| |  |-' |  |  | | ",
      " `' `' `-' `' `' `-'",
    ]
  },
  "smkeyboard": {
    category: "Retro & Pixel",
    height: 4,
    width: 26,
    lib: "pyfiglet",
    sample: [
      " ____ ____ ____ ____ ____ ",
      "||H |||e |||l |||l |||o ||",
      "||__|||__|||__|||__|||__||",
      "|/__\\|/__\\|/__\\|/__\\|/__\\|",
    ]
  },
  // ── Big & Bold ──
  "banner3-D": {
    category: "Big & Bold",
    height: 8,
    width: 52,
    lib: "pyfiglet",
    sample: [
      "'##::::'##:'########:'##:::::::'##::::::::'#######::",
      " ##:::: ##: ##.....:: ##::::::: ##:::::::'##.... ##:",
      " ##:::: ##: ##::::::: ##::::::: ##::::::: ##:::: ##:",
      " #########: ######::: ##::::::: ##::::::: ##:::: ##:",
      " ##.... ##: ##...:::: ##::::::: ##::::::: ##:::: ##:",
      " ##:::: ##: ##::::::: ##::::::: ##::::::: ##:::: ##:",
      " ##:::: ##: ########: ########: ########:. #######::",
      "..:::::..::........::........::........:::.......:::",
    ]
  },
  "colossal": {
    category: "Big & Bold",
    height: 8,
    width: 33,
    lib: "pyfiglet",
    sample: [
      "888    888        888888         ",
      "888    888        888888         ",
      "888    888        888888         ",
      "8888888888 .d88b. 888888 .d88b.  ",
      "888    888d8P  Y8b888888d88\"\"88b ",
      "888    88888888888888888888  888 ",
      "888    888Y8b.    888888Y88..88P ",
      "888    888 \"Y8888 888888 \"Y88P\"",
    ]
  },
  "doom": {
    category: "Big & Bold",
    height: 6,
    width: 22,
    lib: "pyfiglet",
    sample: [
      " _   _      _ _       ",
      "| | | |    | | |      ",
      "| |_| | ___| | | ___  ",
      "|  _  |/ _ \\ | |/ _ \\ ",
      "| | | |  __/ | | (_) |",
      "\\_| |_/\\___|_|_|\\___/",
    ]
  },
  "epic": {
    category: "Big & Bold",
    height: 8,
    width: 45,
    lib: "pyfiglet",
    sample: [
      "          _______  _        _        _______ ",
      "|\\     /|(  ____ \\( \\      ( \\      (  ___  )",
      "| )   ( || (    \\/| (      | (      | (   ) |",
      "| (___) || (__    | |      | |      | |   | |",
      "|  ___  ||  __)   | |      | |      | |   | |",
      "| (   ) || (      | |      | |      | |   | |",
      "| )   ( || (____/\\| (____/\\| (____/\\| (___) |",
      "|/     \\|(_______/(_______/(_______/(_______)",
    ]
  },
  "georgia11": {
    category: "Big & Bold",
    height: 9,
    width: 42,
    lib: "pyfiglet",
    sample: [
      "                                          ",
      "                       ,,    ,,           ",
      "`7MMF'  `7MMF'       `7MM  `7MM           ",
      "  MM      MM           MM    MM           ",
      "  MM      MM  .gP\"Ya   MM    MM  ,pW\"Wq.  ",
      "  MMmmmmmmMM ,M'   Yb  MM    MM 6W'   `Wb ",
      "  MM      MM 8M\"\"\"\"\"\"  MM    MM 8M     M8 ",
      "  MM      MM YM.    ,  MM    MM YA.   ,A9 ",
      ".JMML.  .JMML.`Mbmmd'.JMML..JMML.`Ybmd9'",
    ]
  },
  "roman": {
    category: "Big & Bold",
    height: 7,
    width: 46,
    lib: "pyfiglet",
    sample: [
      "ooooo   ooooo           oooo  oooo            ",
      "`888'   `888'           `888  `888            ",
      " 888     888   .ooooo.   888   888   .ooooo.  ",
      " 888ooooo888  d88' `88b  888   888  d88' `88b ",
      " 888     888  888ooo888  888   888  888   888 ",
      " 888     888  888    .o  888   888  888   888 ",
      "o888o   o888o `Y8bod8P' o888o o888o `Y8bod8P'",
    ]
  },
  "starwars": {
    category: "Big & Bold",
    height: 6,
    width: 49,
    lib: "pyfiglet",
    sample: [
      " __    __   _______  __       __        ______   ",
      "|  |  |  | |   ____||  |     |  |      /  __  \\  ",
      "|  |__|  | |  |__   |  |     |  |     |  |  |  | ",
      "|   __   | |   __|  |  |     |  |     |  |  |  | ",
      "|  |  |  | |  |____ |  `----.|  `----.|  `--'  | ",
      "|__|  |__| |_______||_______||_______| \\______/",
    ]
  },
  // ── Script & Cursive ──
  "script": {
    category: "Script & Cursive",
    height: 5,
    width: 24,
    lib: "pyfiglet",
    sample: [
      " ,          _   _       ",
      "/|   |     | | | |      ",
      " |___|  _  | | | |  __  ",
      " |   |\\|/  |/  |/  /  \\_",
      " |   |/|__/|__/|__/\\__/",
    ]
  },
  "cursive": {
    category: "Script & Cursive",
    height: 4,
    width: 17,
    lib: "pyfiglet",
    sample: [
      " _    ,    _  _  ",
      "' )  /    // //  ",
      " /--/ _  // // __",
      "/  (_</_</_</_(_)",
    ]
  },
  "contessa": {
    category: "Script & Cursive",
    height: 3,
    width: 12,
    lib: "pyfiglet",
    sample: [
      ".  .   ..   ",
      "|__| _ || _ ",
      "|  |(/,||(_)",
    ]
  },
  "cybermedium": {
    category: "Script & Cursive",
    height: 3,
    width: 25,
    lib: "pyfiglet",
    sample: [
      "_  _ ____ _    _    ____ ",
      "|__| |___ |    |    |  | ",
      "|  | |___ |___ |___ |__|",
    ]
  },
  "larry3d": {
    category: "Script & Cursive",
    height: 7,
    width: 40,
    lib: "pyfiglet",
    sample: [
      " __  __          ___    ___             ",
      "/\\ \\/\\ \\        /\\_ \\  /\\_ \\            ",
      "\\ \\ \\_\\ \\     __\\//\\ \\ \\//\\ \\     ___   ",
      " \\ \\  _  \\  /'__`\\\\ \\ \\  \\ \\ \\   / __`\\ ",
      "  \\ \\ \\ \\ \\/\\  __/ \\_\\ \\_ \\_\\ \\_/\\ \\L\\ \\",
      "   \\ \\_\\ \\_\\ \\____\\/\\____\\/\\____\\ \\____/",
      "    \\/_/\\/_/\\/____/\\/____/\\/____/\\/___/",
    ]
  },
  "ogre": {
    category: "Script & Cursive",
    height: 5,
    width: 22,
    lib: "pyfiglet",
    sample: [
      "            _ _       ",
      "  /\\  /\\___| | | ___  ",
      " / /_/ / _ \\ | |/ _ \\ ",
      "/ __  /  __/ | | (_) |",
      "\\/ /_/ \\___|_|_|\\___/",
    ]
  },
  "rectangles": {
    category: "Script & Cursive",
    height: 5,
    width: 19,
    lib: "pyfiglet",
    sample: [
      "                   ",
      " _____     _ _     ",
      "|  |  |___| | |___ ",
      "|     | -_| | | . |",
      "|__|__|___|_|_|___|",
    ]
  },
  // ── Decorative ──
  "alligator": {
    category: "Decorative",
    height: 7,
    width: 55,
    lib: "pyfiglet",
    sample: [
      "      :::    ::::::::::::::::       :::       :::::::: ",
      "     :+:    :+::+:       :+:       :+:      :+:    :+: ",
      "    +:+    +:++:+       +:+       +:+      +:+    +:+  ",
      "   +#++:++#+++#++:++#  +#+       +#+      +#+    +:+   ",
      "  +#+    +#++#+       +#+       +#+      +#+    +#+    ",
      " #+#    #+##+#       #+#       #+#      #+#    #+#     ",
      "###    #########################################",
    ]
  },
  "bubble": {
    category: "Decorative",
    height: 4,
    width: 21,
    lib: "pyfiglet",
    sample: [
      "  _   _   _   _   _  ",
      " / \\ / \\ / \\ / \\ / \\ ",
      "( H | e | l | l | o )",
      " \\_/ \\_/ \\_/ \\_/ \\_/",
    ]
  },
  "bulbhead": {
    category: "Decorative",
    height: 4,
    width: 32,
    lib: "pyfiglet",
    sample: [
      " _   _  ____  __    __    _____ ",
      "( )_( )( ___)(  )  (  )  (  _  )",
      " ) _ (  )__)  )(__  )(__  )(_)( ",
      "(_) (_)(____)(____)(____)(_____)",
    ]
  },
  "graffiti": {
    category: "Decorative",
    height: 6,
    width: 36,
    lib: "pyfiglet",
    sample: [
      "  ___ ___         .__  .__          ",
      " /   |   \\   ____ |  | |  |   ____  ",
      "/    ~    \\_/ __ \\|  | |  |  /  _ \\ ",
      "\\    Y    /\\  ___/|  |_|  |_(  <_> )",
      " \\___|_  /  \\___  >____/____/\\____/ ",
      "       \\/       \\/",
    ]
  },
  "isometric1": {
    category: "Decorative",
    height: 11,
    width: 62,
    lib: "pyfiglet",
    sample: [
      "      ___           ___           ___       ___       ___     ",
      "     /\\__\\         /\\  \\         /\\__\\     /\\__\\     /\\  \\    ",
      "    /:/  /        /::\\  \\       /:/  /    /:/  /    /::\\  \\   ",
      "   /:/__/        /:/\\:\\  \\     /:/  /    /:/  /    /:/\\:\\  \\  ",
      "  /::\\  \\ ___   /::\\~\\:\\  \\   /:/  /    /:/  /    /:/  \\:\\  \\ ",
      " /:/\\:\\  /\\__\\ /:/\\:\\ \\:\\__\\ /:/__/    /:/__/    /:/__/ \\:\\__\\",
      " \\/__\\:\\/:/  / \\:\\~\\:\\ \\/__/ \\:\\  \\    \\:\\  \\    \\:\\  \\ /:/  /",
      "      \\::/  /   \\:\\ \\:\\__\\    \\:\\  \\    \\:\\  \\    \\:\\  /:/  / ",
      "      /:/  /     \\:\\ \\/__/     \\:\\  \\    \\:\\  \\    \\:\\/:/  /  ",
      "     /:/  /       \\:\\__\\        \\:\\__\\    \\:\\__\\    \\::/  /   ",
      "     \\/__/         \\/__/         \\/__/     \\/__/     \\/__/",
    ]
  },
  "letters": {
    category: "Decorative",
    height: 5,
    width: 30,
    lib: "pyfiglet",
    sample: [
      "HH   HH        lll lll        ",
      "HH   HH   eee  lll lll  oooo  ",
      "HHHHHHH ee   e lll lll oo  oo ",
      "HH   HH eeeee  lll lll oo  oo ",
      "HH   HH  eeeee lll lll  oooo",
    ]
  },
  "poison": {
    category: "Decorative",
    height: 11,
    width: 50,
    lib: "pyfiglet",
    sample: [
      "                                                  ",
      "@@@  @@@  @@@@@@@@  @@@       @@@        @@@@@@   ",
      "@@@  @@@  @@@@@@@@  @@@       @@@       @@@@@@@@  ",
      "@@!  @@@  @@!       @@!       @@!       @@!  @@@  ",
      "!@!  @!@  !@!       !@!       !@!       !@!  @!@  ",
      "@!@!@!@!  @!!!:!    @!!       @!!       @!@  !@!  ",
      "!!!@!!!!  !!!!!:    !!!       !!!       !@!  !!!  ",
      "!!:  !!!  !!:       !!:       !!:       !!:  !!!  ",
      ":!:  !:!  :!:        :!:       :!:      :!:  !:!  ",
      "::   :::   :: ::::   :: ::::   :: ::::  ::::: ::  ",
      " :   : :  : :: ::   : :: : :  : :: : :   : :  :",
    ]
  },
  "speed": {
    category: "Decorative",
    height: 5,
    width: 31,
    lib: "pyfiglet",
    sample: [
      "______  __    ___________      ",
      "___  / / /_______  /__  /_____ ",
      "__  /_/ /_  _ \\_  /__  /_  __ \\",
      "_  __  / /  __/  / _  / / /_/ /",
      "/_/ /_/  \\___//_/  /_/  \\____/",
    ]
  },
  // ── Minimal & Compact ──
  "alphabet": {
    category: "Minimal & Compact",
    height: 5,
    width: 17,
    lib: "pyfiglet",
    sample: [
      "H  H     l l     ",
      "H  H     l l     ",
      "HHHH eee l l ooo ",
      "H  H e e l l o o ",
      "H  H ee  l l ooo",
    ]
  },
  "binary": {
    category: "Minimal & Compact",
    height: 1,
    width: 44,
    lib: "pyfiglet",
    sample: [
      "01001000 01100101 01101100 01101100 01101111",
    ]
  },
  "morse": {
    category: "Minimal & Compact",
    height: 1,
    width: 20,
    lib: "pyfiglet",
    sample: [
      ".... . .-.. .-.. ---",
    ]
  },
  "o8": {
    category: "Minimal & Compact",
    height: 5,
    width: 46,
    lib: "pyfiglet",
    sample: [
      "ooooo ooooo            o888  o888             ",
      " 888   888  ooooooooo8  888   888   ooooooo   ",
      " 888ooo888 888oooooo8   888   888 888     888 ",
      " 888   888 888          888   888 888     888 ",
      "o888o o888o  88oooo888 o888o o888o  88ooo88",
    ]
  },
  "pagga": {
    category: "Minimal & Compact",
    height: 3,
    width: 20,
    lib: "pyfiglet",
    sample: [
      "░█░█░█▀▀░█░░░█░░░█▀█",
      "░█▀█░█▀▀░█░░░█░░░█░█",
      "░▀░▀░▀▀▀░▀▀▀░▀▀▀░▀▀▀",
    ]
  },
  "runic": {
    category: "Minimal & Compact",
    height: 6,
    width: 7,
    lib: "pyfiglet",
    sample: [
      "|    | ",
      "|\\   | ",
      "| \\  | ",
      "|  \\ | ",
      "|   \\| ",
      "|    |",
    ]
  },
  "short": {
    category: "Minimal & Compact",
    height: 2,
    width: 10,
    lib: "pyfiglet",
    sample: [
      "|_| _ ||  ",
      "| |(/_||()",
    ]
  },
  "term": {
    category: "Minimal & Compact",
    height: 1,
    width: 5,
    lib: "pyfiglet",
    sample: [
      "Hello",
    ]
  },
  "thin": {
    category: "Minimal & Compact",
    height: 5,
    width: 25,
    lib: "pyfiglet",
    sample: [
      "                         ",
      "|   |     |    |         ",
      "|---|,---.|    |    ,---.",
      "|   ||---'|    |    |   |",
      "`   '`---'`---'`---'`---'",
    ]
  },
  // ── Tech & Hacker ──
  "ansi_regular": {
    category: "Tech & Hacker",
    height: 5,
    width: 41,
    lib: "pyfiglet",
    sample: [
      "██   ██ ███████ ██      ██       ██████  ",
      "██   ██ ██      ██      ██      ██    ██ ",
      "███████ █████   ██      ██      ██    ██ ",
      "██   ██ ██      ██      ██      ██    ██ ",
      "██   ██ ███████ ███████ ███████  ██████",
    ]
  },
  "ansi_shadow": {
    category: "Tech & Hacker",
    height: 6,
    width: 41,
    lib: "pyfiglet",
    sample: [
      "██╗  ██╗███████╗██╗     ██╗      ██████╗ ",
      "██║  ██║██╔════╝██║     ██║     ██╔═══██╗",
      "███████║█████╗  ██║     ██║     ██║   ██║",
      "██╔══██║██╔══╝  ██║     ██║     ██║   ██║",
      "██║  ██║███████╗███████╗███████╗╚██████╔╝",
      "╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ ╚═════╝",
    ]
  },
  "cyberlarge": {
    category: "Tech & Hacker",
    height: 3,
    width: 38,
    lib: "pyfiglet",
    sample: [
      " _     _ _______                _____ ",
      " |_____| |______ |      |      |     |",
      " |     | |______ |_____ |_____ |_____|",
    ]
  },
  "hex": {
    category: "Tech & Hacker",
    height: 1,
    width: 14,
    lib: "pyfiglet",
    sample: [
      "48 65 6C 6C 6F",
    ]
  },
  "lockergnome": {
    category: "Tech & Hacker",
    height: 3,
    width: 23,
    lib: "pyfiglet",
    sample: [
      "::| ::|     :| :|      ",
      "::::::|:~~/ :| :| ,::\\ ",
      "::| ::|:::, :| :| `::/",
    ]
  },
  "univers": {
    category: "Tech & Hacker",
    height: 9,
    width: 43,
    lib: "pyfiglet",
    sample: [
      "                                           ",
      "88        88            88 88              ",
      "88        88            88 88              ",
      "88        88            88 88              ",
      "88aaaaaaaa88  ,adPPYba, 88 88  ,adPPYba,   ",
      "88\"\"\"\"\"\"\"\"88 a8P_____88 88 88 a8\"     \"8a  ",
      "88        88 8PP\"\"\"\"\"\"\" 88 88 8b       d8  ",
      "88        88 \"8b,   ,aa 88 88 \"8a,   ,a8\"  ",
      "88        88  `\"Ybbd8\"' 88 88  `\"YbbdP\"'",
    ]
  },
  "js_stick_letters": {
    category: "Tech & Hacker",
    height: 3,
    width: 25,
    lib: "pyfiglet",
    sample: [
      "      ___            __  ",
      "|__| |__  |    |    /  \\ ",
      "|  | |___ |___ |___ \\__/",
    ]
  },
};
```

---

## 4. <a name='PythonCodeSnippets'></a>3. Python Code Snippets

### 4.1. <a name='Basicusage'></a>Basic usage

```python
import pyfiglet

# Default font (standard)
print(pyfiglet.figlet_format("Hello"))

# Specific font
print(pyfiglet.figlet_format("Hello", font="doom"))
```

### 4.2. <a name='UsingFigletclass'></a>Using Figlet class

```python
from pyfiglet import Figlet

f = Figlet(font="slant")
print(f.renderText("Hello"))
```

### 4.3. <a name='Listallfonts'></a>List all fonts

```python
import pyfiglet
fonts = sorted(pyfiglet.FigletFont.getFonts())
print(f'Total: {len(fonts)} fonts')  # 571
```

### 4.4. <a name='artlibraryalternative'></a>art library (alternative)

```python
from art import text2art
print(text2art("Hello", font="block"))
```

### 4.5. <a name='Richpyfigletcombo'></a>Rich + pyfiglet combo

```python
from rich.console import Console
from rich.text import Text
import pyfiglet

console = Console()
art = pyfiglet.figlet_format("Hello", font="slant")
console.print(Text(art, style="bold green"))
```

---

## 5. <a name='CatalogueUISpec'></a>4. Catalogue UI Spec

### 5.1. <a name='CardLayout'></a>Card Layout

```
┌─────────────────────────────────────┐
│  doom                    6h × 9w     │
│                                      │
│  _   _      _ _                      │
│ | | | | ___| | | ___                 │
│ | |_| |/ _ \ | |/ _ \                │
│ |  _  |  __/ | | (_) |               │
│ |_| |_|\___|_|_|\___/                │
│                                      │
│  [pyfiglet]        [Copy] [Code]     │
└─────────────────────────────────────┘
```

### 5.2. <a name='Features'></a>Features

* **Sample word input**: User can type custom text and see all fonts update live
* **Category filter**: Sidebar/top bar with category pills
* **Search**: Filter fonts by name
* **Sort**: By name, height, width
* **Click → Modal**: Shows full Python code + copy button + larger preview
* **Font size**: Pre-rendered at mono font, cards auto-size to content

### 5.3. <a name='RenderingStrategy'></a>Rendering Strategy

Since pyfiglet is Python-only, the catalogue must pre-render samples.
Two approaches:

1. **Static pre-render** (recommended): Generate all samples at build time,
   store as JS string arrays. Fast, zero-dependency at runtime.
2. **Dynamic via API**: If adding a text input field, make an API call
   to a Python backend that runs pyfiglet and returns the result.
   (Overkill for a static catalogue.)

---

## 6. <a name='CompleteFontIndex'></a>5. Complete Font Index

All 571 fonts in pyfiglet 1.0.4:

```
1943____            1row                3-d                 3d-ascii            3d_diagonal         3x5               
4max                4x4_offr            5lineoblique        5x7                 5x8                 64f1____          
6x10                6x9                 a_zooloo            acrobatic           advenger            alligator         
alligator2          alpha               alphabet            amc_3_line          amc_3_liv1          amc_aaa01         
amc_neko            amc_razor           amc_razor2          amc_slash           amc_slider          amc_thin          
amc_tubes           amc_untitled        ansi_regular        ansi_shadow         aquaplan            arrows            
asc_____            ascii12             ascii9              ascii___            ascii_new_roman     assalt_m          
asslt__m            atc_____            atc_gran            avatar              b1ff                b_m__200          
banner              banner3             banner3-D           banner4             barbwire            basic             
battle_s            battlesh            baz__bil            bear                beer_pub            bell              
benjamin            big                 big_money-ne        big_money-nw        big_money-se        big_money-sw      
bigascii12          bigascii9           bigchief            bigfig              bigmono12           bigmono9          
binary              block               blocks              blocky              bloody              bolger            
braced              bright              brite               briteb              britebi             britei            
broadway            broadway_kb         bubble              bubble__            bubble_b            bulbhead          
c1______            c2______            c_ascii_            c_consen            calgphy2            caligraphy        
calvin_s            cards               catwalk             caus_in_            char1___            char2___          
char3___            char4___            charact1            charact2            charact3            charact4          
charact5            charact6            characte            charset_            chartr              chartri           
chiseled            chunky              circle              clb6x10             clb8x10             clb8x8            
cli8x8              clr4x6              clr5x10             clr5x6              clr5x8              clr6x10           
clr6x6              clr6x8              clr7x10             clr7x8              clr8x10             clr8x8            
coil_cop            coinstak            cola                colossal            com_sen_            computer          
contessa            contrast            convoy__            cosmic              cosmike             cour              
courb               courbi              couri               crawford            crawford2           crazy             
cricket             cursive             cyberlarge          cybermedium         cybersmall          cygnet            
d_dragon            danc4               dancing_font        dcs_bfmo            decimal             deep_str          
def_leppard         defleppard          delta_corps_priest_1  demo_1__            demo_2__            demo_m__          
devilish            diamond             diet_cola           digital             doh                 doom              
dos_rebel           dotmatrix           double              double_blocky       double_shorts       drpepper          
druid___            dwhistled           e__fist_            ebbs_1__            ebbs_2__            eca_____          
efti_robot          eftichess           eftifont            eftipiti            eftirobot           eftitalic         
eftiwall            eftiwater           electronic          elite               emboss              emboss2           
epic                etcrvs__            f15_____            faces_of            fair_mea            fairligh          
fantasy_            fbr12___            fbr1____            fbr2____            fbr_stri            fbr_tilt          
fender              filter              finalass            fire_font-k         fire_font-s         fireing_          
flipped             flower_power        flyn_sh             fourtops            fp1_____            fp2_____          
fraktur             fun_face            fun_faces           funky_dr            future              future_1          
future_2            future_3            future_4            future_5            future_6            future_7          
future_8            fuzzy               gauntlet            georgi16            georgia11           ghost             
ghost_bo            ghoulish            glenyn              goofy               gothic              gothic__          
graceful            gradient            graffiti            grand_pr            greek               green_be          
hades___            heart_left          heart_right         heavy_me            helv                helvb             
helvbi              helvi               henry_3d            heroboti            hex                 hieroglyphs       
high_noo            hills___            hollywood           home_pak            horizontal_left     horizontal_right  
house_of            hypa_bal            hyper___            icl-1900            impossible          inc_raw_          
invita              isometric1          isometric2          isometric3          isometric4          italic            
italics_            ivrit               jacky               jazmine             jerusalem           joust___          
js_block_letters    js_bracket_letters  js_capital_curves   js_cursive          js_stick_letters    katakana          
kban                keyboard            kgames_i            kik_star            knob                konto             
konto_slant         krak_out            larry3d             lazy_jon            lcd                 lean              
letter              letter_w            letters             letterw3            lexible_            lil_devil         
line_blocks         linux               lockergnome         mad_nurs            madrid              magic_ma          
marquee             master_o            maxfour             mayhem_d            mcg_____            merlin1           
merlin2             mig_ally            mike                mini                mirror              mnemonic          
modern__            modular             mono12              mono9               morse               morse2            
moscow              mshebrew210         muzzle              nancyj              nancyj-fancy        nancyj-improved   
nancyj-underlined   new_asci            nfi1____            nipples             notie_ca            npn_____          
nscript             ntgreek             nvscript            o8                  octal               odel_lak          
ogre                ok_beer_            old_banner          os2                 outrun__            p_s_h_m_          
p_skateb            pacos_pe            pagga               panther_            patorjk's_cheese    patorjk-hex       
pawn_ins            pawp                peaks               pebbles             pepper              phonix__          
platoon2            platoon_            pod_____            poison              puffy               puzzle            
pyramid             r2-d2___            rad_____            rad_phan            radical_            rainbow_          
rally_s2            rally_sp            rammstein           rampage_            rastan__            raw_recu          
rci_____            rectangles          red_phoenix         relief              relief2             rev               
ripper!_            road_rai            rockbox_            rok_____            roman               roman___          
rot13               rotated             rounded             rowancap            rozzo               runic             
runyc               sans                sansb               sansbi              sansi               santa_clara       
sblood              sbook               sbookb              sbookbi             sbooki              script            
script__            serifcap            shadow              shimrod             short               skate_ro          
skateord            skateroc            sketch_s            sl_script           slant               slant_relief      
slide               slscript            sm______            small               small_caps          small_poison      
small_shadow        small_slant         smascii12           smascii9            smblock             smbraille         
smisome1            smkeyboard          smmono12            smmono9             smscript            smshadow          
smslant             smtengwar           soft                space_op            spc_demo            speed             
spliff              stacey              stampate            stampatello         standard            star_strips       
star_war            starwars            stealth_            stellar             stencil1            stencil2          
stforek             stick_letters       stop                straight            street_s            stronger_than_all 
sub-zero            subteran            super_te            swamp_land          swan                sweet             
t__of_ap            tanja               tav1____            taxi____            tec1____            tec_7000          
tecrvs__            tengwar             term                test1               the_edge            thick             
thin                this                thorned             threepoint          ti_pan__            ticks             
ticksslant          tiles               times               timesofl            tinker-toy          tomahawk          
tombstone           top_duck            train               trashman            trek                triad_st          
ts1_____            tsalagi             tsm_____            tsn_base            tty                 ttyb              
tubular             twin_cob            twisted             twopoint            type_set            ucf_fan_          
ugalympi            unarmed_            univers             usa_____            usa_pq__            usaflag           
utopia              utopiab             utopiabi            utopiai             varsity             vortron_          
war_of_w            wavy                weird               wet_letter          whimsy              wideterm          
wow                 xbrite              xbriteb             xbritebi            xbritei             xchartr           
xchartri            xcour               xcourb              xcourbi             xcouri              xhelv             
xhelvb              xhelvbi             xhelvi              xsans               xsansb              xsansbi           
xsansi              xsbook              xsbookb             xsbookbi            xsbooki             xtimes            
xtty                xttyb               yie-ar__            yie_ar_k            z-pilot_            zig_zag_          
zone7___          
```

---

## 7. <a name='v0.0.2IntegrationTasklist'></a>6. v0.0.2 Integration Tasklist

### 7.1. <a name='xReview'></a>[x] Review

* [x] Confirmed this module's design goals: curated pyfiglet catalogue, category filters, search, modal code, and live text rendering strategy.
* [x] Scoped implementation to static-first UI with live Python-backed upgrades where available.

### 7.2. <a name='xPlan'></a>[x] Plan

* [x] Add a top-level `ASCII / Figlet` tab beside Spinners and Progress Bars.
* [x] Integrate curated `FIGLET_FONTS` dataset with category metadata (`height`, `width`, `lib`, `sample`).
* [x] Reuse existing catalogue architecture: search, category tags, section folding, view modes (`Tile`, `Minimal`, `List`), and modal flow.
* [x] Add Figlet-only controls:
  * [x] Sample text input.
  * [x] Sort selector (`name`, `height`, `width`).
* [x] Add local API route (`/api/figlet`) in `serve_catlog.py` to render requested text/font with `pyfiglet`.

### 7.3. <a name='xAction'></a>[x] Action

* [x] Implemented `figlet` tab in `index.html` and wired it into shared tab/category state persistence.
* [x] Implemented `FIGLET_FONTS` curated dataset and rendering cards with readable ASCII previews.
* [x] Implemented figlet modal snippets and copy/code actions (`Copy`/`Code`).
* [x] Implemented strict dynamic rendering pipeline using `figlet.js` runtime.
* [x] Implemented fallback chain: `textSync` -> async `text` -> static sample -> unavailable message.
* [x] Implemented figlet-specific controls visibility and behavior (`#figlet-text`, `.char-count`, `#figlet-reset`, sorting).
* [x] Implemented view-mode readability polish for figlet cards in `tile`, `minimal`, and `list`.

### [x] Implementation Status Matrix

| Module | Scope | Status |
| --- | --- | --- |
| `ASCII-figlet.md` | Curated dataset (`FIGLET_FONTS`), category taxonomy, metadata contract | [x] |
| `ASCII-figlet-dynamic.md` | Runtime engine, preload/lazy render flow, UI contracts, dynamic copy behavior | [x] |
| `index.html` | Unified figlet integration (dataset + dynamic renderer) | [x] |
