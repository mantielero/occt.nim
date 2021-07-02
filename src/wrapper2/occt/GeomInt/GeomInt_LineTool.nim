##  Created on: 1995-02-08
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

discard "forward decl of IntPatch_Line"
discard "forward decl of IntPatch_Point"
discard "forward decl of IntPatch_WLine"
discard "forward decl of GeomAdaptor_HSurface"
type
  GeomIntLineTool* {.importcpp: "GeomInt_LineTool", header: "GeomInt_LineTool.hxx",
                    bycopy.} = object


proc nbVertex*(L: Handle[IntPatchLine]): StandardInteger {.
    importcpp: "GeomInt_LineTool::NbVertex(@)", header: "GeomInt_LineTool.hxx".}
proc vertex*(L: Handle[IntPatchLine]; i: StandardInteger): IntPatchPoint {.
    importcpp: "GeomInt_LineTool::Vertex(@)", header: "GeomInt_LineTool.hxx".}
proc firstParameter*(L: Handle[IntPatchLine]): StandardReal {.
    importcpp: "GeomInt_LineTool::FirstParameter(@)",
    header: "GeomInt_LineTool.hxx".}
proc lastParameter*(L: Handle[IntPatchLine]): StandardReal {.
    importcpp: "GeomInt_LineTool::LastParameter(@)",
    header: "GeomInt_LineTool.hxx".}
proc decompositionOfWLine*(theWLine: Handle[IntPatchWLine];
                          theSurface1: Handle[GeomAdaptorHSurface];
                          theSurface2: Handle[GeomAdaptorHSurface];
                          aTolSum: StandardReal;
                          theLConstructor: GeomIntLineConstructor;
                          theNewLines: var IntPatchSequenceOfLine): StandardBoolean {.
    importcpp: "GeomInt_LineTool::DecompositionOfWLine(@)",
    header: "GeomInt_LineTool.hxx".}

