{.passL:"-lTKernel".}
{.passC:"-I/usr/include/opencascade/" .}
#{.experimental: "codeReordering".}

import tcollection
import tcollection_asciistring
import tcollection_basesequence
import tcollection_basicmap
import tcollection_basicmapiterator
import tcollection_extendedstring
import tcollection_hasciistring
import tcollection_hextendedstring
import tcollection_mapnode
#import tcollection_mapnodeptr
import tcollection_seqnode
#import tcollection_seqnodeptr
import tcollection_side

export tcollection, tcollection_asciistring, tcollection_basesequence
export tcollection_basicmap, tcollection_basicmapiterator
export tcollection_extendedstring, tcollection_hasciistring
export tcollection_hextendedstring, tcollection_mapnode
export tcollection_seqnode  # tcollection_mapnodeptr, 
export tcollection_side # tcollection_seqnodeptr, 
