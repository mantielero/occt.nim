##  Created on: 1994-10-28
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

discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of TopOpeBRepDS_EdgeVertexInterference"
discard "forward decl of TopOpeBRepDS_EdgeVertexInterference"
type
  HandleC1C1* = Handle[TopOpeBRepDS_EdgeVertexInterference]

## ! An interference with a parameter (ShapeShapeInterference).

type
  TopOpeBRepDS_EdgeVertexInterference* {.importcpp: "TopOpeBRepDS_EdgeVertexInterference", header: "TopOpeBRepDS_EdgeVertexInterference.hxx",
                                        bycopy.} = object of TopOpeBRepDS_ShapeShapeInterference ##
                                                                                            ## !
                                                                                            ## Create
                                                                                            ## an
                                                                                            ## interference
                                                                                            ## of
                                                                                            ## VERTEX
                                                                                            ## <G>
                                                                                            ## on
                                                                                            ## a
                                                                                            ## crossed
                                                                                            ## EDGE
                                                                                            ## E.
                                                                                            ##
                                                                                            ## !
                                                                                            ##
                                                                                            ## !
                                                                                            ## if
                                                                                            ## support
                                                                                            ## type
                                                                                            ## <ST>
                                                                                            ## ==
                                                                                            ## EDGE
                                                                                            ## :
                                                                                            ## <S>
                                                                                            ## is
                                                                                            ## edge
                                                                                            ## E
                                                                                            ##
                                                                                            ## !
                                                                                            ## FACE
                                                                                            ## :
                                                                                            ## <S>
                                                                                            ## is
                                                                                            ## the
                                                                                            ## face
                                                                                            ## with
                                                                                            ## bound
                                                                                            ## E.
                                                                                            ##
                                                                                            ## !
                                                                                            ## <T>
                                                                                            ## is
                                                                                            ## the
                                                                                            ## transition
                                                                                            ## along
                                                                                            ## the
                                                                                            ## edge,
                                                                                            ## crossing
                                                                                            ## the
                                                                                            ## crossed
                                                                                            ## edge.
                                                                                            ##
                                                                                            ## !
                                                                                            ## E
                                                                                            ## is
                                                                                            ## the
                                                                                            ## crossed
                                                                                            ## edge.
                                                                                            ##
                                                                                            ## !
                                                                                            ## <GIsBound>
                                                                                            ## indicates
                                                                                            ## if
                                                                                            ## <G>
                                                                                            ## is
                                                                                            ## a
                                                                                            ## bound
                                                                                            ## of
                                                                                            ## the
                                                                                            ## edge.
                                                                                            ##
                                                                                            ## !
                                                                                            ## <P>
                                                                                            ## is
                                                                                            ## the
                                                                                            ## parameter
                                                                                            ## of
                                                                                            ## <G>
                                                                                            ## on
                                                                                            ## the
                                                                                            ## edge.
                                                                                            ##
                                                                                            ## !
                                                                                            ##
                                                                                            ## !
                                                                                            ## interference
                                                                                            ## is
                                                                                            ## stored
                                                                                            ## in
                                                                                            ## the
                                                                                            ## list
                                                                                            ## of
                                                                                            ## interfs
                                                                                            ## of
                                                                                            ## the
                                                                                            ## edge.


proc constructTopOpeBRepDS_EdgeVertexInterference*(t: TopOpeBRepDS_Transition;
    st: TopOpeBRepDS_Kind; s: cint; g: cint; gIsBound: bool; c: TopOpeBRepDS_Config;
    p: cfloat): TopOpeBRepDS_EdgeVertexInterference {.constructor,
    importcpp: "TopOpeBRepDS_EdgeVertexInterference(@)",
    header: "TopOpeBRepDS_EdgeVertexInterference.hxx".}
proc constructTopOpeBRepDS_EdgeVertexInterference*(t: TopOpeBRepDS_Transition;
    s: cint; g: cint; gIsBound: bool; c: TopOpeBRepDS_Config; p: cfloat): TopOpeBRepDS_EdgeVertexInterference {.
    constructor, importcpp: "TopOpeBRepDS_EdgeVertexInterference(@)",
    header: "TopOpeBRepDS_EdgeVertexInterference.hxx".}
proc parameter*(this: TopOpeBRepDS_EdgeVertexInterference): cfloat {.noSideEffect,
    importcpp: "Parameter", header: "TopOpeBRepDS_EdgeVertexInterference.hxx".}
proc parameter*(this: var TopOpeBRepDS_EdgeVertexInterference; p: cfloat) {.
    importcpp: "Parameter", header: "TopOpeBRepDS_EdgeVertexInterference.hxx".}
type
  TopOpeBRepDS_EdgeVertexInterferencebaseType* = TopOpeBRepDS_ShapeShapeInterference

proc getTypeName*(): cstring {.importcpp: "TopOpeBRepDS_EdgeVertexInterference::get_type_name(@)",
                            header: "TopOpeBRepDS_EdgeVertexInterference.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopOpeBRepDS_EdgeVertexInterference::get_type_descriptor(@)",
    header: "TopOpeBRepDS_EdgeVertexInterference.hxx".}
proc dynamicType*(this: TopOpeBRepDS_EdgeVertexInterference): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TopOpeBRepDS_EdgeVertexInterference.hxx".}

























