##  Created on: 1994-08-30
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
discard "forward decl of TopOpeBRepDS_ShapeShapeInterference"
discard "forward decl of TopOpeBRepDS_ShapeShapeInterference"
type
  HandleTopOpeBRepDS_ShapeShapeInterference* = Handle[
      TopOpeBRepDS_ShapeShapeInterference]

## ! Interference

type
  TopOpeBRepDS_ShapeShapeInterference* {.importcpp: "TopOpeBRepDS_ShapeShapeInterference", header: "TopOpeBRepDS_ShapeShapeInterference.hxx",
                                        bycopy.} = object of TopOpeBRepDS_Interference ##
                                                                                  ## !
                                                                                  ## a
                                                                                  ## shape
                                                                                  ## interfers
                                                                                  ## on
                                                                                  ## shape
                                                                                  ## <G>
                                                                                  ## with
                                                                                  ## shape
                                                                                  ## <S>.
                                                                                  ##
                                                                                  ## !
                                                                                  ## examples
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## create
                                                                                  ## a
                                                                                  ## ShapeShapeInterference
                                                                                  ## describing
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## vertex
                                                                                  ## V
                                                                                  ## of
                                                                                  ## edge
                                                                                  ## E1
                                                                                  ## found
                                                                                  ## on
                                                                                  ## edge
                                                                                  ## E2
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## ST,S,GT,G
                                                                                  ## =
                                                                                  ## TopOpeBRepDS_EDGE,E2,TopOpeBRepDS_VERTEX,V
                                                                                  ##
                                                                                  ## !
                                                                                  ##
                                                                                  ## !
                                                                                  ## create
                                                                                  ## a
                                                                                  ## ShapeShapeInterference
                                                                                  ## describing
                                                                                  ##
                                                                                  ## !
                                                                                  ## vertex
                                                                                  ## V
                                                                                  ## of
                                                                                  ## edge
                                                                                  ## E
                                                                                  ## found
                                                                                  ## on
                                                                                  ## face
                                                                                  ## F
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## ST,S,GT,G
                                                                                  ## =
                                                                                  ## TopOpeBRepDS_FACE,F,TopOpeBRepDS_VERTEX,V
                                                                                  ##
                                                                                  ## !
                                                                                  ##
                                                                                  ## !
                                                                                  ## <GBound>
                                                                                  ## indicates
                                                                                  ## if
                                                                                  ## shape
                                                                                  ## <G>
                                                                                  ## is
                                                                                  ## a
                                                                                  ## bound
                                                                                  ## of
                                                                                  ## shape
                                                                                  ## <S>.
                                                                                  ##
                                                                                  ## !
                                                                                  ##
                                                                                  ## !
                                                                                  ## <SCC>
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## UNSH_GEOMETRY
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## <S>
                                                                                  ## and
                                                                                  ## <Ancestor>
                                                                                  ## have
                                                                                  ## any
                                                                                  ## types,
                                                                                  ##
                                                                                  ## !
                                                                                  ## <S>
                                                                                  ## and
                                                                                  ## <Ancestor>
                                                                                  ## don't
                                                                                  ## share
                                                                                  ## the
                                                                                  ## same
                                                                                  ## geometry
                                                                                  ##
                                                                                  ## !
                                                                                  ## SAME_ORIENTED
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## <S>
                                                                                  ## and
                                                                                  ## <Ancestor>
                                                                                  ## have
                                                                                  ## identical
                                                                                  ## types,
                                                                                  ##
                                                                                  ## !
                                                                                  ## <S>
                                                                                  ## and
                                                                                  ## <Ancestor>
                                                                                  ## orientations
                                                                                  ## are
                                                                                  ## IDENTICAL.
                                                                                  ##
                                                                                  ## !
                                                                                  ## DIFF_ORIENTED
                                                                                  ## :
                                                                                  ##
                                                                                  ## !
                                                                                  ## <S>
                                                                                  ## and
                                                                                  ## <Ancestor>
                                                                                  ## have
                                                                                  ## identical
                                                                                  ## types,
                                                                                  ##
                                                                                  ## !
                                                                                  ## <S>
                                                                                  ## and
                                                                                  ## <Ancestor>
                                                                                  ## orientations
                                                                                  ## are
                                                                                  ## DIFFERENT.


proc constructTopOpeBRepDS_ShapeShapeInterference*(t: TopOpeBRepDS_Transition;
    st: TopOpeBRepDS_Kind; s: int; gt: TopOpeBRepDS_Kind; g: int; gBound: bool;
    c: TopOpeBRepDS_Config): TopOpeBRepDS_ShapeShapeInterference {.constructor,
    importcpp: "TopOpeBRepDS_ShapeShapeInterference(@)",
    header: "TopOpeBRepDS_ShapeShapeInterference.hxx".}
proc config*(this: TopOpeBRepDS_ShapeShapeInterference): TopOpeBRepDS_Config {.
    noSideEffect, importcpp: "Config",
    header: "TopOpeBRepDS_ShapeShapeInterference.hxx".}
proc gBound*(this: TopOpeBRepDS_ShapeShapeInterference): bool {.noSideEffect,
    importcpp: "GBound", header: "TopOpeBRepDS_ShapeShapeInterference.hxx".}
proc setGBound*(this: var TopOpeBRepDS_ShapeShapeInterference; b: bool) {.
    importcpp: "SetGBound", header: "TopOpeBRepDS_ShapeShapeInterference.hxx".}
type
  TopOpeBRepDS_ShapeShapeInterferencebaseType* = TopOpeBRepDS_Interference

proc getTypeName*(): cstring {.importcpp: "TopOpeBRepDS_ShapeShapeInterference::get_type_name(@)",
                            header: "TopOpeBRepDS_ShapeShapeInterference.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopOpeBRepDS_ShapeShapeInterference::get_type_descriptor(@)",
    header: "TopOpeBRepDS_ShapeShapeInterference.hxx".}
proc dynamicType*(this: TopOpeBRepDS_ShapeShapeInterference): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TopOpeBRepDS_ShapeShapeInterference.hxx".}
