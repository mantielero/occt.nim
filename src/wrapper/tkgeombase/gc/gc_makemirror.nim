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

discard "forward decl of Geom_Transformation"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Ax2"
type
  MakeMirror* {.importcpp: "GC_MakeMirror", header: "GC_MakeMirror.hxx", bycopy.} = object


proc newMakeMirror*(point: Pnt): MakeMirror {.cdecl, constructor,
    importcpp: "GC_MakeMirror(@)", header: "GC_MakeMirror.hxx".}
proc newMakeMirror*(axis: Ax1): MakeMirror {.cdecl, constructor,
    importcpp: "GC_MakeMirror(@)", header: "GC_MakeMirror.hxx".}
proc newMakeMirror*(line: Lin): MakeMirror {.cdecl, constructor,
    importcpp: "GC_MakeMirror(@)", header: "GC_MakeMirror.hxx".}
proc newMakeMirror*(point: Pnt; direc: Dir): MakeMirror {.cdecl, constructor,
    importcpp: "GC_MakeMirror(@)", header: "GC_MakeMirror.hxx".}
proc newMakeMirror*(plane: Pln): MakeMirror {.cdecl, constructor,
    importcpp: "GC_MakeMirror(@)", header: "GC_MakeMirror.hxx".}
proc newMakeMirror*(plane: Ax2): MakeMirror {.cdecl, constructor,
    importcpp: "GC_MakeMirror(@)", header: "GC_MakeMirror.hxx".}
proc value*(this: MakeMirror): Handle[GeomTransformation] {.noSideEffect, cdecl,
    importcpp: "Value", header: "GC_MakeMirror.hxx".}
converter `constopencascade`*(this: MakeMirror): Handle[GeomTransformation] {.
    noSideEffect, cdecl, importcpp: "GC_MakeMirror::operator constopencascade",
    header: "GC_MakeMirror.hxx".}