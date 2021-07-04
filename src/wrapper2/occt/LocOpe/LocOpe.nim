##  Created on: 1995-04-25
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TColgp/TColgp_SequenceOfPnt

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Shape"
discard "forward decl of LocOpe_SplitShape"
discard "forward decl of LocOpe_WiresOnShape"
discard "forward decl of LocOpe_Spliter"
discard "forward decl of LocOpe_Generator"
discard "forward decl of LocOpe_GeneratedShape"
discard "forward decl of LocOpe_GluedShape"
discard "forward decl of LocOpe_Prism"
discard "forward decl of LocOpe_Revol"
discard "forward decl of LocOpe_Pipe"
discard "forward decl of LocOpe_DPrism"
discard "forward decl of LocOpe_LinearForm"
discard "forward decl of LocOpe_RevolutionForm"
discard "forward decl of LocOpe_Gluer"
discard "forward decl of LocOpe_FindEdges"
discard "forward decl of LocOpe_FindEdgesInFace"
discard "forward decl of LocOpe_PntFace"
discard "forward decl of LocOpe_CurveShapeIntersector"
discard "forward decl of LocOpe_CSIntersector"
discard "forward decl of LocOpe_BuildShape"
discard "forward decl of LocOpe_SplitDrafts"
discard "forward decl of LocOpe_BuildWires"
type
  LocOpe* {.importcpp: "LocOpe", header: "LocOpe.hxx", bycopy.} = object ## ! Returns Standard_True  when the wire <W> is closed
                                                                 ## ! on the face <OnF>.


proc Closed*(W: TopoDS_Wire; OnF: TopoDS_Face): Standard_Boolean {.
    importcpp: "LocOpe::Closed(@)", header: "LocOpe.hxx".}
proc Closed*(E: TopoDS_Edge; OnF: TopoDS_Face): Standard_Boolean {.
    importcpp: "LocOpe::Closed(@)", header: "LocOpe.hxx".}
proc TgtFaces*(E: TopoDS_Edge; F1: TopoDS_Face; F2: TopoDS_Face): Standard_Boolean {.
    importcpp: "LocOpe::TgtFaces(@)", header: "LocOpe.hxx".}
proc SampleEdges*(S: TopoDS_Shape; Pt: var TColgp_SequenceOfPnt) {.
    importcpp: "LocOpe::SampleEdges(@)", header: "LocOpe.hxx".}