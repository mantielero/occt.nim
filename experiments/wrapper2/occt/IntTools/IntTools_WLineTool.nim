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
  ../Standard/Standard_Boolean, ../Standard/Standard_Macro,
  ../IntPatch/IntPatch_WLine, ../IntPatch/IntPatch_SequenceOfLine

discard "forward decl of TopoDS_Face"
discard "forward decl of GeomAdaptor_HSurface"
discard "forward decl of GeomInt_LineConstructor"
discard "forward decl of IntTools_Context"
discard "forward decl of Adaptor3d_TopolTool"
type
  IntTools_WLineTool* {.importcpp: "IntTools_WLineTool",
                       header: "IntTools_WLineTool.hxx", bycopy.} = object


proc NotUseSurfacesForApprox*(aF1: TopoDS_Face; aF2: TopoDS_Face;
                             WL: handle[IntPatch_WLine]; ifprm: Standard_Integer;
                             ilprm: Standard_Integer): Standard_Boolean {.
    importcpp: "IntTools_WLineTool::NotUseSurfacesForApprox(@)",
    header: "IntTools_WLineTool.hxx".}
proc DecompositionOfWLine*(theWLine: handle[IntPatch_WLine];
                          theSurface1: handle[GeomAdaptor_HSurface];
                          theSurface2: handle[GeomAdaptor_HSurface];
                          theFace1: TopoDS_Face; theFace2: TopoDS_Face;
                          theLConstructor: GeomInt_LineConstructor;
                          theAvoidLConstructor: Standard_Boolean;
                          theTol: Standard_Real;
                          theNewLines: var IntPatch_SequenceOfLine;
                          theReachedTol3d: var Standard_Real;
                          a11: handle[IntTools_Context]): Standard_Boolean {.
    importcpp: "IntTools_WLineTool::DecompositionOfWLine(@)",
    header: "IntTools_WLineTool.hxx".}