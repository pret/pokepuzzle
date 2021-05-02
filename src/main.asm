INCLUDE "constants.asm"

INCLUDE "home.asm"

SECTION "Song Pointers", ROMX[$590e], BANK[$20]

INCLUDE "audio/song_pointers.asm"

SECTION "Panel de Pon 3", ROMX[$7689], BANK[$23]

INCLUDE "audio/music/paneldepon3.asm"

SECTION "Panel de Pon 1", ROMX[$5365], BANK[$24]

INCLUDE "audio/music/paneldepon1.asm"

SECTION "Panel de Pon 2", ROMX[$4000], BANK[$60]

INCLUDE "audio/music/paneldepon2.asm"

SECTION "Music 1", ROMX[$4000], BANK[$61]

INCLUDE "audio/music/none.asm"
INCLUDE "audio/music/goldenrodgym.asm"
INCLUDE "audio/music/unusedsong2.asm"
INCLUDE "audio/music/unusedsong1.asm"
INCLUDE "audio/music/azaleaandblackthorngym.asm"
INCLUDE "audio/music/violetandolivinegym.asm"
INCLUDE "audio/music/mainmenu.asm"
INCLUDE "audio/music/travellingtothegyms.asm"
INCLUDE "audio/music/roundcleared.asm"

SECTION "Music 2", ROMX[$4000], BANK[$62]

INCLUDE "audio/music/mahoganygym.asm"
INCLUDE "audio/music/gymvictory.asm"
INCLUDE "audio/music/ecruteakandcianwoodgym.asm"
INCLUDE "audio/music/elitefour.asm"
INCLUDE "audio/music/lance.asm"
INCLUDE "audio/music/gameover.asm"
INCLUDE "audio/music/intro.asm"

SECTION "Music 3", ROMX[$4000], BANK[$63]

INCLUDE "audio/music/titlescreen.asm"
INCLUDE "audio/music/herecomestheelitefour.asm"
INCLUDE "audio/music/cleffaandigglybuffstheme.asm"
INCLUDE "audio/music/elekidandmagbystheme.asm"
INCLUDE "audio/music/elitefourdanger.asm"
INCLUDE "audio/music/herecomeslance.asm"
INCLUDE "audio/music/gymbattledanger.asm"
INCLUDE "audio/music/secrettrainervictory.asm"
INCLUDE "audio/music/secrettrainer.asm"

SECTION "Music 4", ROMX[$4000], BANK[$64]

INCLUDE "audio/music/mainmenucopy.asm"
INCLUDE "audio/music/credits.asm"
INCLUDE "audio/music/lancedanger.asm"
INCLUDE "audio/music/unusedsong3.asm"
INCLUDE "audio/music/lineclearvictory.asm"
