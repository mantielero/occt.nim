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
discard "forward decl of TopOpeBRepDS_FaceEdgeInterference"
type
  HandleTopOpeBRepDS_FaceEdgeInterference* = Handle[
      TopOpeBRepDS_FaceEdgeInterference]

## ! ShapeShapeInterference

type
  TopOpeBRepDS_FaceEdgeInterference* {.importcpp: "TopOpeBRepDS_FaceEdgeInterference", header: "TopOpeBRepDS_FaceEdgeInterference.hxx",
                                      bycopy.} = object of TopOpeBRepDS_ShapeShapeInterference ##
                                                                                          ## !
                                                                                          ## Create
                                                                                          ## an
                                                                                          ## interference
                                                                                          ## of
                                                                                          ## EDGE
                                                                                          ## <G>
                                                                                          ## on
                                                                                          ## FACE
                                                                                          ## <S>.


proc newTopOpeBRepDS_FaceEdgeInterference*(t: TopOpeBRepDS_Transition; s: cint;
    g: cint; gIsBound: bool; c: TopOpeBRepDS_Config): TopOpeBRepDS_FaceEdgeInterference {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_FaceEdgeInterference(@)",
    dynlib: tkbool.}