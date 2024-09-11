
//{{BLOCK(startScreenMap)

//======================================================================
//
//	startScreenMap, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 316 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 10112 + 2048 = 12672
//
//	Time-stamp: 2024-04-01, 22:30:33
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARTSCREENMAP_H
#define GRIT_STARTSCREENMAP_H

#define startScreenMapTilesLen 10112
extern const unsigned short startScreenMapTiles[5056];

#define startScreenMapMapLen 2048
extern const unsigned short startScreenMapMap[1024];

#define startScreenMapPalLen 512
extern const unsigned short startScreenMapPal[256];

#endif // GRIT_STARTSCREENMAP_H

//}}BLOCK(startScreenMap)
