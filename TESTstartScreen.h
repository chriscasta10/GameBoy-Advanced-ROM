
//{{BLOCK(TESTstartScreen)

//======================================================================
//
//	TESTstartScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 294 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 9408 + 2048 = 11968
//
//	Time-stamp: 2024-04-20, 20:12:00
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TESTSTARTSCREEN_H
#define GRIT_TESTSTARTSCREEN_H

#define TESTstartScreenTilesLen 9408
extern const unsigned short TESTstartScreenTiles[4704];

#define TESTstartScreenMapLen 2048
extern const unsigned short TESTstartScreenMap[1024];

#define TESTstartScreenPalLen 512
extern const unsigned short TESTstartScreenPal[256];

#endif // GRIT_TESTSTARTSCREEN_H

//}}BLOCK(TESTstartScreen)
