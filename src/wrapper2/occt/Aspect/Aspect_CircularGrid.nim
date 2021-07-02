##  Created on: 1995-03-17
##  Created by: Mister rmi
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Standard_NegativeValue"
discard "forward decl of Standard_NullValue"
discard "forward decl of Standard_NumericError"
type
  AspectCircularGrid* {.importcpp: "Aspect_CircularGrid",
                       header: "Aspect_CircularGrid.hxx", bycopy.} = object of AspectGrid ##
                                                                                   ## !
                                                                                   ## creates
                                                                                   ## a
                                                                                   ## new
                                                                                   ## grid.
                                                                                   ## By
                                                                                   ## default
                                                                                   ## this
                                                                                   ## grid
                                                                                   ## is
                                                                                   ## not
                                                                                   ##
                                                                                   ## !
                                                                                   ## active.

  AspectCircularGridbaseType* = AspectGrid

proc getTypeName*(): cstring {.importcpp: "Aspect_CircularGrid::get_type_name(@)",
                            header: "Aspect_CircularGrid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Aspect_CircularGrid::get_type_descriptor(@)",
    header: "Aspect_CircularGrid.hxx".}
proc dynamicType*(this: AspectCircularGrid): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Aspect_CircularGrid.hxx".}
proc constructAspectCircularGrid*(aRadiusStep: StandardReal;
                                 aDivisionNumber: StandardInteger;
                                 xOrigin: StandardReal = 0;
                                 anYOrigin: StandardReal = 0;
                                 aRotationAngle: StandardReal = 0): AspectCircularGrid {.
    constructor, importcpp: "Aspect_CircularGrid(@)",
    header: "Aspect_CircularGrid.hxx".}
proc setRadiusStep*(this: var AspectCircularGrid; aStep: StandardReal) {.
    importcpp: "SetRadiusStep", header: "Aspect_CircularGrid.hxx".}
proc setDivisionNumber*(this: var AspectCircularGrid; aNumber: StandardInteger) {.
    importcpp: "SetDivisionNumber", header: "Aspect_CircularGrid.hxx".}
proc setGridValues*(this: var AspectCircularGrid; xOrigin: StandardReal;
                   yOrigin: StandardReal; radiusStep: StandardReal;
                   divisionNumber: StandardInteger; rotationAngle: StandardReal) {.
    importcpp: "SetGridValues", header: "Aspect_CircularGrid.hxx".}
proc compute*(this: AspectCircularGrid; x: StandardReal; y: StandardReal;
             gridX: var StandardReal; gridY: var StandardReal) {.noSideEffect,
    importcpp: "Compute", header: "Aspect_CircularGrid.hxx".}
proc radiusStep*(this: AspectCircularGrid): StandardReal {.noSideEffect,
    importcpp: "RadiusStep", header: "Aspect_CircularGrid.hxx".}
proc divisionNumber*(this: AspectCircularGrid): StandardInteger {.noSideEffect,
    importcpp: "DivisionNumber", header: "Aspect_CircularGrid.hxx".}
proc init*(this: var AspectCircularGrid) {.importcpp: "Init",
                                       header: "Aspect_CircularGrid.hxx".}
proc dumpJson*(this: AspectCircularGrid; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Aspect_CircularGrid.hxx".}
discard "forward decl of Aspect_CircularGrid"
type
  HandleAspectCircularGrid* = Handle[AspectCircularGrid]


