
//{{BLOCK(level2)

//======================================================================
//
//	level2, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 344 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 11008 + 8192 = 19712
//
//	Time-stamp: 2024-04-15, 16:05:56
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL2_H
#define GRIT_LEVEL2_H

#define level2TilesLen 11008
extern const unsigned short level2Tiles[5504];

#define level2MapLen 8192
extern const unsigned short level2Map[4096];

#define level2PalLen 512
extern const unsigned short level2Pal[256];

#endif // GRIT_LEVEL2_H

//}}BLOCK(level2)
