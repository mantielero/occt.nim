##  Created on: 1992-09-28
##  Created by: Remi GILET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
type
  GC_MakeEllipse* {.importcpp: "GC_MakeEllipse", header: "GC_MakeEllipse.hxx", bycopy.} = object of GC_Root ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## an
                                                                                                  ## ellipse
                                                                                                  ## from
                                                                                                  ## a
                                                                                                  ## non
                                                                                                  ## persistent
                                                                                                  ## ellipse
                                                                                                  ## E
                                                                                                  ## from
                                                                                                  ## package
                                                                                                  ## gp
                                                                                                  ## by
                                                                                                  ## its
                                                                                                  ## conversion.


proc newGC_MakeEllipse*(e: Elips): GC_MakeEllipse {.cdecl, constructor,
    importcpp: "GC_MakeEllipse(@)", dynlib: tkmath.}
proc newGC_MakeEllipse*(a2: Ax2; majorRadius: cfloat; minorRadius: cfloat): GC_MakeEllipse {.
    cdecl, constructor, importcpp: "GC_MakeEllipse(@)", dynlib: tkmath.}
proc newGC_MakeEllipse*(s1: Pnt; s2: Pnt; center: Pnt): GC_MakeEllipse {.cdecl,
    constructor, importcpp: "GC_MakeEllipse(@)", dynlib: tkmath.}
proc value*(this: GC_MakeEllipse): Handle[GeomEllipse] {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkmath.}
converter `constopencascade`*(this: GC_MakeEllipse): Handle[GeomEllipse] {.
    noSideEffect, cdecl, importcpp: "GC_MakeEllipse::operator constopencascade",
    dynlib: tkmath.}