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

discard "forward decl of Geom2d_Transformation"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Dir2d"
type
  GCE2dMakeMirror* {.importcpp: "GCE2d_MakeMirror", header: "GCE2d_MakeMirror.hxx",
                    bycopy.} = object


proc constructGCE2dMakeMirror*(point: Pnt2d): GCE2dMakeMirror {.constructor,
    importcpp: "GCE2d_MakeMirror(@)", header: "GCE2d_MakeMirror.hxx".}
proc constructGCE2dMakeMirror*(axis: Ax2d): GCE2dMakeMirror {.constructor,
    importcpp: "GCE2d_MakeMirror(@)", header: "GCE2d_MakeMirror.hxx".}
proc constructGCE2dMakeMirror*(line: Lin2d): GCE2dMakeMirror {.constructor,
    importcpp: "GCE2d_MakeMirror(@)", header: "GCE2d_MakeMirror.hxx".}
proc constructGCE2dMakeMirror*(point: Pnt2d; direc: Dir2d): GCE2dMakeMirror {.
    constructor, importcpp: "GCE2d_MakeMirror(@)", header: "GCE2d_MakeMirror.hxx".}
proc value*(this: GCE2dMakeMirror): Handle[Geom2dTransformation] {.noSideEffect,
    importcpp: "Value", header: "GCE2d_MakeMirror.hxx".}
converter `constopencascade`*(this: GCE2dMakeMirror): Handle[Geom2dTransformation] {.
    noSideEffect, importcpp: "GCE2d_MakeMirror::operator constopencascade",
    header: "GCE2d_MakeMirror.hxx".}
