import ../standard/standard_types
import bopalgo_types
import ../ncollection/ncollection_types





##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2017 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## ! The **Splitter algorithm** is the algorithm for splitting a group of
## ! arbitrary shapes by the other group of arbitrary shapes.<br>
## ! The arguments of the operation are divided on two groups:<br>
## ! *Objects* - shapes that will be split;<br>
## ! *Tools*   - shapes by which the *Objects* will be split.<br>
## ! The result of the operation contains only the split parts
## ! of the shapes from the group of *Objects*.<br>
## ! The split parts of the shapes from the group of *Tools* are excluded
## ! from the result.<br>
## ! The shapes can be split by the other shapes from the same group
## ! (in case these shapes are interfering).
## !
## ! The class is a General Fuse based algorithm. Thus, all options
## ! of the General Fuse algorithm such as Fuzzy mode, safe processing mode,
## ! parallel processing mode, gluing mode and history support are also
## ! available in this algorithm.<br>
## ! There is no requirement on the existence of the *Tools* shapes.
## ! And if there are no *Tools* shapes, the result of the splitting
## ! operation will be equivalent to the General Fuse result.
## !
## ! The implementation of the algorithm is minimal - only the methods
## ! CheckData() and Perform() have been overridden.<br>
## ! The method BOPAlgo_Builder::BuildResult(), which adds the split parts of the arguments
## ! into result, does not have to be overridden, because its native implementation
## ! performs the necessary actions for the Splitter algorithm - it adds
## ! the split parts of only Objects into result, avoiding the split parts of Tools.



proc newBOPAlgoSplitter*(): BOPAlgoSplitter {.cdecl, constructor,
    importcpp: "BOPAlgo_Splitter(@)", header: "BOPAlgo_Splitter.hxx".}
proc destroyBOPAlgoSplitter*(this: var BOPAlgoSplitter) {.cdecl,
    importcpp: "#.~BOPAlgo_Splitter()", header: "BOPAlgo_Splitter.hxx".}
proc newBOPAlgoSplitter*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoSplitter {.
    cdecl, constructor, importcpp: "BOPAlgo_Splitter(@)", header: "BOPAlgo_Splitter.hxx".}
proc perform*(this: var BOPAlgoSplitter) {.cdecl, importcpp: "Perform", header: "BOPAlgo_Splitter.hxx".}


