##  Created on: 1993-05-04
##  Created by: Modelistation
##  Copyright (c) 1993-1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BRepTopAdaptor/BRepTopAdaptor_MapOfShapeTool,
  ../Standard/Standard_Integer, ../TopTools/TopTools_IndexedMapOfShape,
  ../Standard/Standard_Boolean

discard "forward decl of HLRBRep_Data"
discard "forward decl of HLRTopoBRep_OutLiner"
discard "forward decl of HLRAlgo_Projector"
discard "forward decl of TopoDS_Face"
type
  HLRBRep_ShapeToHLR* {.importcpp: "HLRBRep_ShapeToHLR",
                       header: "HLRBRep_ShapeToHLR.hxx", bycopy.} = object ## ! Creates  a
                                                                      ## DataStructure   containing the OutLiner
                                                                      ## ! <S> depending on the projector <P> and nbIso.


proc Load*(S: handle[HLRTopoBRep_OutLiner]; P: HLRAlgo_Projector;
          MST: var BRepTopAdaptor_MapOfShapeTool; nbIso: Standard_Integer = 0): handle[
    HLRBRep_Data] {.importcpp: "HLRBRep_ShapeToHLR::Load(@)",
                   header: "HLRBRep_ShapeToHLR.hxx".}