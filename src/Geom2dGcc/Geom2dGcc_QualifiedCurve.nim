##  Created on: 1991-04-15
##  Created by: Philippe DAUTRY
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of Geom2dAdaptor_Curve"
type
  Geom2dGccQualifiedCurve* {.importcpp: "Geom2dGcc_QualifiedCurve",
                            header: "Geom2dGcc_QualifiedCurve.hxx", bycopy.} = object


proc `new`*(this: var Geom2dGccQualifiedCurve; theSize: csize_t): pointer {.
    importcpp: "Geom2dGcc_QualifiedCurve::operator new",
    header: "Geom2dGcc_QualifiedCurve.hxx".}
proc `delete`*(this: var Geom2dGccQualifiedCurve; theAddress: pointer) {.
    importcpp: "Geom2dGcc_QualifiedCurve::operator delete",
    header: "Geom2dGcc_QualifiedCurve.hxx".}
proc `new[]`*(this: var Geom2dGccQualifiedCurve; theSize: csize_t): pointer {.
    importcpp: "Geom2dGcc_QualifiedCurve::operator new[]",
    header: "Geom2dGcc_QualifiedCurve.hxx".}
proc `delete[]`*(this: var Geom2dGccQualifiedCurve; theAddress: pointer) {.
    importcpp: "Geom2dGcc_QualifiedCurve::operator delete[]",
    header: "Geom2dGcc_QualifiedCurve.hxx".}
proc `new`*(this: var Geom2dGccQualifiedCurve; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dGcc_QualifiedCurve::operator new",
    header: "Geom2dGcc_QualifiedCurve.hxx".}
proc `delete`*(this: var Geom2dGccQualifiedCurve; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dGcc_QualifiedCurve::operator delete",
    header: "Geom2dGcc_QualifiedCurve.hxx".}
proc constructGeom2dGccQualifiedCurve*(curve: Geom2dAdaptorCurve;
                                      qualifier: GccEntPosition): Geom2dGccQualifiedCurve {.
    constructor, importcpp: "Geom2dGcc_QualifiedCurve(@)",
    header: "Geom2dGcc_QualifiedCurve.hxx".}
proc qualified*(this: Geom2dGccQualifiedCurve): Geom2dAdaptorCurve {.noSideEffect,
    importcpp: "Qualified", header: "Geom2dGcc_QualifiedCurve.hxx".}
proc qualifier*(this: Geom2dGccQualifiedCurve): GccEntPosition {.noSideEffect,
    importcpp: "Qualifier", header: "Geom2dGcc_QualifiedCurve.hxx".}
proc isUnqualified*(this: Geom2dGccQualifiedCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsUnqualified", header: "Geom2dGcc_QualifiedCurve.hxx".}
proc isEnclosing*(this: Geom2dGccQualifiedCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsEnclosing", header: "Geom2dGcc_QualifiedCurve.hxx".}
proc isEnclosed*(this: Geom2dGccQualifiedCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsEnclosed", header: "Geom2dGcc_QualifiedCurve.hxx".}
proc isOutside*(this: Geom2dGccQualifiedCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsOutside", header: "Geom2dGcc_QualifiedCurve.hxx".}