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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, GeomInt_LineConstructor,
  ../IntPatch/IntPatch_SequenceOfLine

discard "forward decl of IntPatch_Line"
discard "forward decl of IntPatch_Point"
discard "forward decl of IntPatch_WLine"
discard "forward decl of GeomAdaptor_HSurface"
type
  GeomInt_LineTool* {.importcpp: "GeomInt_LineTool",
                     header: "GeomInt_LineTool.hxx", bycopy.} = object


proc NbVertex*(L: handle[IntPatch_Line]): Standard_Integer {.
    importcpp: "GeomInt_LineTool::NbVertex(@)", header: "GeomInt_LineTool.hxx".}
proc Vertex*(L: handle[IntPatch_Line]; I: Standard_Integer): IntPatch_Point {.
    importcpp: "GeomInt_LineTool::Vertex(@)", header: "GeomInt_LineTool.hxx".}
proc FirstParameter*(L: handle[IntPatch_Line]): Standard_Real {.
    importcpp: "GeomInt_LineTool::FirstParameter(@)",
    header: "GeomInt_LineTool.hxx".}
proc LastParameter*(L: handle[IntPatch_Line]): Standard_Real {.
    importcpp: "GeomInt_LineTool::LastParameter(@)",
    header: "GeomInt_LineTool.hxx".}
proc DecompositionOfWLine*(theWLine: handle[IntPatch_WLine];
                          theSurface1: handle[GeomAdaptor_HSurface];
                          theSurface2: handle[GeomAdaptor_HSurface];
                          aTolSum: Standard_Real;
                          theLConstructor: GeomInt_LineConstructor;
                          theNewLines: var IntPatch_SequenceOfLine): Standard_Boolean {.
    importcpp: "GeomInt_LineTool::DecompositionOfWLine(@)",
    header: "GeomInt_LineTool.hxx".}