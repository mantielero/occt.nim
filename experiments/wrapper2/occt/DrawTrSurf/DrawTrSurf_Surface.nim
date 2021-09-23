##  Created on: 1992-05-21
##  Created by: Jean Claude VAUTHIER
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Draw/Draw_Color,
  ../Standard/Standard_Integer, DrawTrSurf_Drawable, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_OStream,
  ../Draw/Draw_Interpretor

discard "forward decl of Geom_Surface"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_Surface"
discard "forward decl of DrawTrSurf_Surface"
type
  Handle_DrawTrSurf_Surface* = handle[DrawTrSurf_Surface]

## ! This class defines a drawable surface.
## ! With this class you can draw a general surface from
## ! package Geom.

type
  DrawTrSurf_Surface* {.importcpp: "DrawTrSurf_Surface",
                       header: "DrawTrSurf_Surface.hxx", bycopy.} = object of DrawTrSurf_Drawable ##
                                                                                           ## !
                                                                                           ## default
                                                                                           ## drawing
                                                                                           ## mode
                                                                                           ##
                                                                                           ## !
                                                                                           ## Just
                                                                                           ## the
                                                                                           ## middle
                                                                                           ## isoparametric
                                                                                           ## curves
                                                                                           ## are
                                                                                           ## drawn.
                                                                                           ##
                                                                                           ## !
                                                                                           ## The
                                                                                           ## boundaries
                                                                                           ## are
                                                                                           ## yellow,
                                                                                           ## the
                                                                                           ## isoparametric
                                                                                           ## curves
                                                                                           ## are
                                                                                           ## blues.
                                                                                           ##
                                                                                           ## !
                                                                                           ## For
                                                                                           ## the
                                                                                           ## discretisation
                                                                                           ## 50
                                                                                           ## points
                                                                                           ## are
                                                                                           ## computed
                                                                                           ## in
                                                                                           ## each
                                                                                           ## parametric
                                                                                           ##
                                                                                           ## !
                                                                                           ## direction.


proc constructDrawTrSurf_Surface*(S: handle[Geom_Surface]): DrawTrSurf_Surface {.
    constructor, importcpp: "DrawTrSurf_Surface(@)",
    header: "DrawTrSurf_Surface.hxx".}
proc constructDrawTrSurf_Surface*(S: handle[Geom_Surface]; Nu: Standard_Integer;
                                 Nv: Standard_Integer; BoundsColor: Draw_Color;
                                 IsosColor: Draw_Color; Discret: Standard_Integer;
                                 Deflection: Standard_Real;
                                 DrawMode: Standard_Integer): DrawTrSurf_Surface {.
    constructor, importcpp: "DrawTrSurf_Surface(@)",
    header: "DrawTrSurf_Surface.hxx".}
proc BoundsColor*(this: DrawTrSurf_Surface): Draw_Color {.noSideEffect,
    importcpp: "BoundsColor", header: "DrawTrSurf_Surface.hxx".}
proc ClearIsos*(this: var DrawTrSurf_Surface) {.importcpp: "ClearIsos",
    header: "DrawTrSurf_Surface.hxx".}
proc DrawOn*(this: DrawTrSurf_Surface; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_Surface.hxx".}
proc DrawOn*(this: DrawTrSurf_Surface; dis: var Draw_Display; Iso: Standard_Boolean) {.
    noSideEffect, importcpp: "DrawOn", header: "DrawTrSurf_Surface.hxx".}
proc GetSurface*(this: DrawTrSurf_Surface): handle[Geom_Surface] {.noSideEffect,
    importcpp: "GetSurface", header: "DrawTrSurf_Surface.hxx".}
proc IsosColor*(this: DrawTrSurf_Surface): Draw_Color {.noSideEffect,
    importcpp: "IsosColor", header: "DrawTrSurf_Surface.hxx".}
proc NbIsos*(this: DrawTrSurf_Surface; Nu: var Standard_Integer;
            Nb: var Standard_Integer) {.noSideEffect, importcpp: "NbIsos",
                                     header: "DrawTrSurf_Surface.hxx".}
proc SetBoundsColor*(this: var DrawTrSurf_Surface; aColor: Draw_Color) {.
    importcpp: "SetBoundsColor", header: "DrawTrSurf_Surface.hxx".}
proc SetIsosColor*(this: var DrawTrSurf_Surface; aColor: Draw_Color) {.
    importcpp: "SetIsosColor", header: "DrawTrSurf_Surface.hxx".}
proc ShowIsos*(this: var DrawTrSurf_Surface; Nu: Standard_Integer;
              Nv: Standard_Integer) {.importcpp: "ShowIsos",
                                    header: "DrawTrSurf_Surface.hxx".}
proc Copy*(this: DrawTrSurf_Surface): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_Surface.hxx".}
proc Dump*(this: DrawTrSurf_Surface; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "DrawTrSurf_Surface.hxx".}
proc Whatis*(this: DrawTrSurf_Surface; I: var Draw_Interpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DrawTrSurf_Surface.hxx".}
type
  DrawTrSurf_Surfacebase_type* = DrawTrSurf_Drawable

proc get_type_name*(): cstring {.importcpp: "DrawTrSurf_Surface::get_type_name(@)",
                              header: "DrawTrSurf_Surface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DrawTrSurf_Surface::get_type_descriptor(@)",
    header: "DrawTrSurf_Surface.hxx".}
proc DynamicType*(this: DrawTrSurf_Surface): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawTrSurf_Surface.hxx".}