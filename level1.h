
//{{BLOCK(level1)

//======================================================================
//
//	level1, 768x512@4, 
//	+ palette 256 entries, not compressed
//	+ 401 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 96x64 
//	Total size: 512 + 12832 + 12288 = 25632
//
//	Time-stamp: 2024-04-09, 12:12:06
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL1_H
#define GRIT_LEVEL1_H

#define level1TilesLen 12832
extern const unsigned short level1Tiles[6416];

#define level1MapLen 12288
extern const unsigned short level1Map[6144];
    
#define level1PalLen 512
extern const unsigned short level1Pal[256];

#endif // GRIT_LEVEL1_H

//}}BLOCK(level1)
