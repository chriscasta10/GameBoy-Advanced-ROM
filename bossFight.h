
//{{BLOCK(bossFight)

//======================================================================
//
//	bossFight, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 409 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 13088 + 8192 = 21792
//
//	Time-stamp: 2024-04-20, 14:03:38
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BOSSFIGHT_H
#define GRIT_BOSSFIGHT_H

#define bossFightTilesLen 13088
extern const unsigned short bossFightTiles[6544];

#define bossFightMapLen 8192
extern const unsigned short bossFightMap[4096];

#define bossFightPalLen 512
extern const unsigned short bossFightPal[256];

#endif // GRIT_BOSSFIGHT_H

//}}BLOCK(bossFight)
