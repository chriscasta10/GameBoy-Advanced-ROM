
//{{BLOCK(pausedScreen)

//======================================================================
//
//	pausedScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 435 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 13920 + 2048 = 16480
//
//	Time-stamp: 2024-04-20, 21:46:34
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSEDSCREEN_H
#define GRIT_PAUSEDSCREEN_H

#define pausedScreenTilesLen 13920
extern const unsigned short pausedScreenTiles[6960];

#define pausedScreenMapLen 2048
extern const unsigned short pausedScreenMap[1024];

#define pausedScreenPalLen 512
extern const unsigned short pausedScreenPal[256];

#endif // GRIT_PAUSEDSCREEN_H

//}}BLOCK(pausedScreen)
