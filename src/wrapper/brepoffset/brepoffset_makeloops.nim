import brepoffset_types
import ../tkbrep/toptools/toptools_types
import ../tkernel/standard/standard_types

##  Created on: 1996-09-05
##  Created by: Yves FRICAUD
##  Copyright (c) 1996-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of BRepAlgo_AsDes"
discard "forward decl of BRepAlgo_Image"
discard "forward decl of BRepOffset_Analyse"

proc newBRepOffset_MakeLoops*(): BRepOffset_MakeLoops {.cdecl, constructor,
    importcpp: "BRepOffset_MakeLoops(@)".}
# proc Build*(this: var BRepOffset_MakeLoops; LF: TopTools_ListOfShape;
#            AsDes: Handle[BRepAlgo_AsDes]; Image: var BRepAlgo_Image;
#            theImageVV: var BRepAlgo_Image; theRange: Message_ProgressRange) {.cdecl,
#     importcpp: "Build".}
# proc BuildOnContext*(this: var BRepOffset_MakeLoops; LContext: TopTools_ListOfShape;
#                     Analyse: BRepOffset_Analyse; AsDes: Handle[BRepAlgo_AsDes];
#                     Image: var BRepAlgo_Image; InSide: bool;
#                     theRange: Message_ProgressRange) {.cdecl,
#     importcpp: "BuildOnContext".}
# proc BuildFaces*(this: var BRepOffset_MakeLoops; LF: TopTools_ListOfShape;
#                 AsDes: Handle[BRepAlgo_AsDes]; Image: var BRepAlgo_Image;
#                 theRange: Message_ProgressRange) {.cdecl, importcpp: "BuildFaces",
#     .}