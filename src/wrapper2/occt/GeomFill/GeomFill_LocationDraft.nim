##  Created on: 1998-04-21
##  Created by: Stephanie HUMEAU
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of GeomFill_DraftTrihedron"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Mat"
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_LocationDraft"
discard "forward decl of GeomFill_LocationDraft"
type
  HandleGeomFillLocationDraft* = Handle[GeomFillLocationDraft]
  GeomFillLocationDraft* {.importcpp: "GeomFill_LocationDraft",
                          header: "GeomFill_LocationDraft.hxx", bycopy.} = object of GeomFillLocationLaw


proc constructGeomFillLocationDraft*(direction: GpDir; angle: StandardReal): GeomFillLocationDraft {.
    constructor, importcpp: "GeomFill_LocationDraft(@)",
    header: "GeomFill_LocationDraft.hxx".}
proc setStopSurf*(this: var GeomFillLocationDraft; surf: Handle[Adaptor3dHSurface]) {.
    importcpp: "SetStopSurf", header: "GeomFill_LocationDraft.hxx".}
proc setAngle*(this: var GeomFillLocationDraft; angle: StandardReal) {.
    importcpp: "SetAngle", header: "GeomFill_LocationDraft.hxx".}
proc setCurve*(this: var GeomFillLocationDraft; c: Handle[Adaptor3dHCurve]) {.
    importcpp: "SetCurve", header: "GeomFill_LocationDraft.hxx".}
proc getCurve*(this: GeomFillLocationDraft): Handle[Adaptor3dHCurve] {.noSideEffect,
    importcpp: "GetCurve", header: "GeomFill_LocationDraft.hxx".}
proc setTrsf*(this: var GeomFillLocationDraft; transfo: GpMat) {.importcpp: "SetTrsf",
    header: "GeomFill_LocationDraft.hxx".}
proc copy*(this: GeomFillLocationDraft): Handle[GeomFillLocationLaw] {.noSideEffect,
    importcpp: "Copy", header: "GeomFill_LocationDraft.hxx".}
proc d0*(this: var GeomFillLocationDraft; param: StandardReal; m: var GpMat; v: var GpVec): StandardBoolean {.
    importcpp: "D0", header: "GeomFill_LocationDraft.hxx".}
proc d0*(this: var GeomFillLocationDraft; param: StandardReal; m: var GpMat;
        v: var GpVec; poles2d: var TColgpArray1OfPnt2d): StandardBoolean {.
    importcpp: "D0", header: "GeomFill_LocationDraft.hxx".}
proc d1*(this: var GeomFillLocationDraft; param: StandardReal; m: var GpMat;
        v: var GpVec; dm: var GpMat; dv: var GpVec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d): StandardBoolean {.importcpp: "D1",
    header: "GeomFill_LocationDraft.hxx".}
proc d2*(this: var GeomFillLocationDraft; param: StandardReal; m: var GpMat;
        v: var GpVec; dm: var GpMat; dv: var GpVec; d2m: var GpMat; d2v: var GpVec;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        d2Poles2d: var TColgpArray1OfVec2d): StandardBoolean {.importcpp: "D2",
    header: "GeomFill_LocationDraft.hxx".}
proc hasFirstRestriction*(this: GeomFillLocationDraft): StandardBoolean {.
    noSideEffect, importcpp: "HasFirstRestriction",
    header: "GeomFill_LocationDraft.hxx".}
proc hasLastRestriction*(this: GeomFillLocationDraft): StandardBoolean {.
    noSideEffect, importcpp: "HasLastRestriction",
    header: "GeomFill_LocationDraft.hxx".}
proc traceNumber*(this: GeomFillLocationDraft): StandardInteger {.noSideEffect,
    importcpp: "TraceNumber", header: "GeomFill_LocationDraft.hxx".}
proc nbIntervals*(this: GeomFillLocationDraft; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_LocationDraft.hxx".}
proc intervals*(this: GeomFillLocationDraft; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "GeomFill_LocationDraft.hxx".}
proc setInterval*(this: var GeomFillLocationDraft; first: StandardReal;
                 last: StandardReal) {.importcpp: "SetInterval",
                                     header: "GeomFill_LocationDraft.hxx".}
proc getInterval*(this: GeomFillLocationDraft; first: var StandardReal;
                 last: var StandardReal) {.noSideEffect, importcpp: "GetInterval",
                                        header: "GeomFill_LocationDraft.hxx".}
proc getDomain*(this: GeomFillLocationDraft; first: var StandardReal;
               last: var StandardReal) {.noSideEffect, importcpp: "GetDomain",
                                      header: "GeomFill_LocationDraft.hxx".}
proc resolution*(this: GeomFillLocationDraft; index: StandardInteger;
                tol: StandardReal; tolU: var StandardReal; tolV: var StandardReal) {.
    noSideEffect, importcpp: "Resolution", header: "GeomFill_LocationDraft.hxx".}
proc getMaximalNorm*(this: var GeomFillLocationDraft): StandardReal {.
    importcpp: "GetMaximalNorm", header: "GeomFill_LocationDraft.hxx".}
proc getAverageLaw*(this: var GeomFillLocationDraft; am: var GpMat; av: var GpVec) {.
    importcpp: "GetAverageLaw", header: "GeomFill_LocationDraft.hxx".}
proc isTranslation*(this: GeomFillLocationDraft; error: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsTranslation", header: "GeomFill_LocationDraft.hxx".}
proc isRotation*(this: GeomFillLocationDraft; error: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsRotation", header: "GeomFill_LocationDraft.hxx".}
proc rotation*(this: GeomFillLocationDraft; center: var GpPnt) {.noSideEffect,
    importcpp: "Rotation", header: "GeomFill_LocationDraft.hxx".}
proc isIntersec*(this: GeomFillLocationDraft): StandardBoolean {.noSideEffect,
    importcpp: "IsIntersec", header: "GeomFill_LocationDraft.hxx".}
proc direction*(this: GeomFillLocationDraft): GpDir {.noSideEffect,
    importcpp: "Direction", header: "GeomFill_LocationDraft.hxx".}
type
  GeomFillLocationDraftbaseType* = GeomFillLocationLaw

proc getTypeName*(): cstring {.importcpp: "GeomFill_LocationDraft::get_type_name(@)",
                            header: "GeomFill_LocationDraft.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_LocationDraft::get_type_descriptor(@)",
    header: "GeomFill_LocationDraft.hxx".}
proc dynamicType*(this: GeomFillLocationDraft): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_LocationDraft.hxx".}

