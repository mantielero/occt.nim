##  Created on: 1993-06-23
##  Created by: Jean Yves LEBEY
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
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of TopoDS_Shape"
discard "forward decl of Contap_Contour"
discard "forward decl of HLRTopoBRep_Data"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of Contap_Point"
discard "forward decl of TopoDS_Edge"
type
  HLRTopoBRep_DSFiller* {.importcpp: "HLRTopoBRep_DSFiller",
                         header: "HLRTopoBRep_DSFiller.hxx", bycopy.} = object ## ! Stores in <DS> the
                                                                          ## outlines of  <S> using the
                                                                          ## current
                                                                          ## !
                                                                          ## outliner and stores the
                                                                          ## isolines in <DS> using a
                                                                          ## Hatcher.
                                                                          ## ! Stores in <DS> the
                                                                          ## outlines of  <F> using the
                                                                          ## current
                                                                          ## !
                                                                          ## outliner.


proc Insert*(S: TopoDS_Shape; FO: var Contap_Contour; DS: var HLRTopoBRep_Data;
            MST: var BRepTopAdaptor_MapOfShapeTool; nbIso: Standard_Integer) {.
    importcpp: "HLRTopoBRep_DSFiller::Insert(@)",
    header: "HLRTopoBRep_DSFiller.hxx".}