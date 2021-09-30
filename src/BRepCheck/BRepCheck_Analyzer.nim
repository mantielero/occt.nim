##  Created on: 1995-12-08
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

discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepCheck_Result"
type
  BRepCheckAnalyzer* {.importcpp: "BRepCheck_Analyzer",
                      header: "BRepCheck_Analyzer.hxx", bycopy.} = object


proc `new`*(this: var BRepCheckAnalyzer; theSize: csize_t): pointer {.
    importcpp: "BRepCheck_Analyzer::operator new",
    header: "BRepCheck_Analyzer.hxx".}
proc `delete`*(this: var BRepCheckAnalyzer; theAddress: pointer) {.
    importcpp: "BRepCheck_Analyzer::operator delete",
    header: "BRepCheck_Analyzer.hxx".}
proc `new[]`*(this: var BRepCheckAnalyzer; theSize: csize_t): pointer {.
    importcpp: "BRepCheck_Analyzer::operator new[]",
    header: "BRepCheck_Analyzer.hxx".}
proc `delete[]`*(this: var BRepCheckAnalyzer; theAddress: pointer) {.
    importcpp: "BRepCheck_Analyzer::operator delete[]",
    header: "BRepCheck_Analyzer.hxx".}
proc `new`*(this: var BRepCheckAnalyzer; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepCheck_Analyzer::operator new",
    header: "BRepCheck_Analyzer.hxx".}
proc `delete`*(this: var BRepCheckAnalyzer; a2: pointer; a3: pointer) {.
    importcpp: "BRepCheck_Analyzer::operator delete",
    header: "BRepCheck_Analyzer.hxx".}
proc constructBRepCheckAnalyzer*(s: TopoDS_Shape;
                                geomControls: StandardBoolean = true): BRepCheckAnalyzer {.
    constructor, importcpp: "BRepCheck_Analyzer(@)",
    header: "BRepCheck_Analyzer.hxx".}
proc init*(this: var BRepCheckAnalyzer; s: TopoDS_Shape;
          geomControls: StandardBoolean = true) {.importcpp: "Init",
    header: "BRepCheck_Analyzer.hxx".}
proc isValid*(this: BRepCheckAnalyzer; s: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "IsValid", header: "BRepCheck_Analyzer.hxx".}
proc isValid*(this: BRepCheckAnalyzer): StandardBoolean {.noSideEffect,
    importcpp: "IsValid", header: "BRepCheck_Analyzer.hxx".}
proc result*(this: BRepCheckAnalyzer; subS: TopoDS_Shape): Handle[BRepCheckResult] {.
    noSideEffect, importcpp: "Result", header: "BRepCheck_Analyzer.hxx".}