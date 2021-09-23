##  Created on: 1993-01-27
##  Created by: Isabelle GRIGNON
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
  ../Standard/Standard_Handle, ../TColgp/TColgp_Array1OfPnt2d,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, IntPatch_Polygo, ../Standard/Standard_Integer

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Bnd_Box2d"
discard "forward decl of gp_Pnt2d"
type
  IntPatch_PolyArc* {.importcpp: "IntPatch_PolyArc",
                     header: "IntPatch_PolyArc.hxx", bycopy.} = object of IntPatch_Polygo ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## the
                                                                                   ## polygon
                                                                                   ## of
                                                                                   ## the
                                                                                   ## arc
                                                                                   ## A
                                                                                   ## on
                                                                                   ## the
                                                                                   ## surface
                                                                                   ## S.
                                                                                   ##
                                                                                   ## !
                                                                                   ## The
                                                                                   ## arc
                                                                                   ## is
                                                                                   ## limited
                                                                                   ## by
                                                                                   ## the
                                                                                   ## parameters
                                                                                   ## Pfirst
                                                                                   ## and
                                                                                   ## Plast.
                                                                                   ##
                                                                                   ## !
                                                                                   ## None
                                                                                   ## of
                                                                                   ## these
                                                                                   ## parameters
                                                                                   ## can
                                                                                   ## be
                                                                                   ## infinite.


proc constructIntPatch_PolyArc*(A: handle[Adaptor2d_HCurve2d];
                               NbSample: Standard_Integer; Pfirst: Standard_Real;
                               Plast: Standard_Real; BoxOtherPolygon: Bnd_Box2d): IntPatch_PolyArc {.
    constructor, importcpp: "IntPatch_PolyArc(@)", header: "IntPatch_PolyArc.hxx".}
proc Closed*(this: IntPatch_PolyArc): Standard_Boolean {.noSideEffect,
    importcpp: "Closed", header: "IntPatch_PolyArc.hxx".}
proc NbPoints*(this: IntPatch_PolyArc): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "IntPatch_PolyArc.hxx".}
proc Point*(this: IntPatch_PolyArc; Index: Standard_Integer): gp_Pnt2d {.noSideEffect,
    importcpp: "Point", header: "IntPatch_PolyArc.hxx".}
proc Parameter*(this: IntPatch_PolyArc; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Parameter", header: "IntPatch_PolyArc.hxx".}
proc SetOffset*(this: var IntPatch_PolyArc; OffsetX: Standard_Real;
               OffsetY: Standard_Real) {.importcpp: "SetOffset",
                                       header: "IntPatch_PolyArc.hxx".}