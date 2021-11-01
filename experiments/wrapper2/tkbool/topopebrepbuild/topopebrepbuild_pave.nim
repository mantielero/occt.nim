##  Created on: 1994-11-14
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepBuild_Pave"
type
  HandleTopOpeBRepBuildPave* = Handle[TopOpeBRepBuildPave]
  TopOpeBRepBuildPave* {.importcpp: "TopOpeBRepBuild_Pave",
                        header: "TopOpeBRepBuild_Pave.hxx", bycopy.} = object of TopOpeBRepBuildLoop ##
                                                                                              ## !
                                                                                              ## V
                                                                                              ## =
                                                                                              ## vertex,
                                                                                              ## P
                                                                                              ## =
                                                                                              ## parameter
                                                                                              ## of
                                                                                              ## vertex
                                                                                              ## <V>
                                                                                              ##
                                                                                              ## !
                                                                                              ## bound
                                                                                              ## =
                                                                                              ## True
                                                                                              ## if
                                                                                              ## <V>
                                                                                              ## is
                                                                                              ## an
                                                                                              ## old
                                                                                              ## vertex
                                                                                              ##
                                                                                              ## !
                                                                                              ## bound
                                                                                              ## =
                                                                                              ## False
                                                                                              ## if
                                                                                              ## <V>
                                                                                              ## is
                                                                                              ## a
                                                                                              ## new
                                                                                              ## vertex


proc newTopOpeBRepBuildPave*(v: TopoDS_Shape; p: cfloat; bound: bool): TopOpeBRepBuildPave {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_Pave(@)", dynlib: tkfillet.}
proc hasSameDomain*(this: var TopOpeBRepBuildPave; b: bool) {.cdecl,
    importcpp: "HasSameDomain", dynlib: tkfillet.}
proc sameDomain*(this: var TopOpeBRepBuildPave; vsd: TopoDS_Shape) {.cdecl,
    importcpp: "SameDomain", dynlib: tkfillet.}
proc hasSameDomain*(this: TopOpeBRepBuildPave): bool {.noSideEffect, cdecl,
    importcpp: "HasSameDomain", dynlib: tkfillet.}
proc sameDomain*(this: TopOpeBRepBuildPave): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "SameDomain", dynlib: tkfillet.}
proc vertex*(this: TopOpeBRepBuildPave): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Vertex", dynlib: tkfillet.}
proc changeVertex*(this: var TopOpeBRepBuildPave): var TopoDS_Shape {.cdecl,
    importcpp: "ChangeVertex", dynlib: tkfillet.}
proc parameter*(this: TopOpeBRepBuildPave): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", dynlib: tkfillet.}
proc parameter*(this: var TopOpeBRepBuildPave; par: cfloat) {.cdecl,
    importcpp: "Parameter", dynlib: tkfillet.}
proc interferenceType*(this: var TopOpeBRepBuildPave): var TopOpeBRepDS_Kind {.cdecl,
    importcpp: "InterferenceType", dynlib: tkfillet.}
proc isShape*(this: TopOpeBRepBuildPave): bool {.noSideEffect, cdecl,
    importcpp: "IsShape", dynlib: tkfillet.}
proc shape*(this: TopOpeBRepBuildPave): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape", dynlib: tkfillet.}
proc dump*(this: TopOpeBRepBuildPave) {.noSideEffect, cdecl, importcpp: "Dump",
                                     dynlib: tkfillet.}