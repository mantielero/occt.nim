##  Created on: 1998-01-14
##  Created by: Philippe MANGIN
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of TopoDS_Wire"
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepFill_LocationLaw"
discard "forward decl of BRepFill_LocationLaw"
type
  HandleC1C1* = Handle[BRepFillLocationLaw]

## ! Location Law on a  Wire.

type
  BRepFillLocationLaw* {.importcpp: "BRepFill_LocationLaw",
                        header: "BRepFill_LocationLaw.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Return
                                                                                            ## a
                                                                                            ## error
                                                                                            ## status,
                                                                                            ## if
                                                                                            ## the
                                                                                            ## status
                                                                                            ## is
                                                                                            ## not
                                                                                            ## PipeOk
                                                                                            ## then
                                                                                            ##
                                                                                            ## !
                                                                                            ## it
                                                                                            ## exist
                                                                                            ## a
                                                                                            ## parameter
                                                                                            ## tlike
                                                                                            ## the
                                                                                            ## law
                                                                                            ## is
                                                                                            ## not
                                                                                            ## valuable
                                                                                            ## for
                                                                                            ## t.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Initialize
                                                                                            ## all
                                                                                            ## the
                                                                                            ## fields,
                                                                                            ## this
                                                                                            ## methode
                                                                                            ## have
                                                                                            ## to
                                                                                            ##
                                                                                            ## !
                                                                                            ## be
                                                                                            ## called
                                                                                            ## by
                                                                                            ## the
                                                                                            ## constructors
                                                                                            ## of
                                                                                            ## Inherited
                                                                                            ## class.


proc getStatus*(this: BRepFillLocationLaw): GeomFillPipeError {.noSideEffect,
    importcpp: "GetStatus", header: "BRepFill_LocationLaw.hxx".}
proc transformInG0Law*(this: var BRepFillLocationLaw) {.
    importcpp: "TransformInG0Law", header: "BRepFill_LocationLaw.hxx".}
proc transformInCompatibleLaw*(this: var BRepFillLocationLaw;
                              angularTolerance: StandardReal) {.
    importcpp: "TransformInCompatibleLaw", header: "BRepFill_LocationLaw.hxx".}
proc deleteTransform*(this: var BRepFillLocationLaw) {.importcpp: "DeleteTransform",
    header: "BRepFill_LocationLaw.hxx".}
proc nbHoles*(this: var BRepFillLocationLaw; tol: StandardReal = 1.0e-7): int {.
    importcpp: "NbHoles", header: "BRepFill_LocationLaw.hxx".}
proc holes*(this: BRepFillLocationLaw; interval: var TColStdArray1OfInteger) {.
    noSideEffect, importcpp: "Holes", header: "BRepFill_LocationLaw.hxx".}
proc nbLaw*(this: BRepFillLocationLaw): int {.noSideEffect, importcpp: "NbLaw",
    header: "BRepFill_LocationLaw.hxx".}
proc law*(this: BRepFillLocationLaw; index: int): Handle[GeomFillLocationLaw] {.
    noSideEffect, importcpp: "Law", header: "BRepFill_LocationLaw.hxx".}
proc wire*(this: BRepFillLocationLaw): TopoDS_Wire {.noSideEffect, importcpp: "Wire",
    header: "BRepFill_LocationLaw.hxx".}
proc edge*(this: BRepFillLocationLaw; index: int): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "BRepFill_LocationLaw.hxx".}
proc vertex*(this: BRepFillLocationLaw; index: int): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "BRepFill_LocationLaw.hxx".}
proc performVertex*(this: BRepFillLocationLaw; index: int;
                   inputVertex: TopoDS_Vertex; tolMin: StandardReal;
                   outputVertex: var TopoDS_Vertex; location: int = 0) {.noSideEffect,
    importcpp: "PerformVertex", header: "BRepFill_LocationLaw.hxx".}
proc curvilinearBounds*(this: BRepFillLocationLaw; index: int;
                       first: var StandardReal; last: var StandardReal) {.
    noSideEffect, importcpp: "CurvilinearBounds",
    header: "BRepFill_LocationLaw.hxx".}
proc isClosed*(this: BRepFillLocationLaw): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "BRepFill_LocationLaw.hxx".}
proc isG1*(this: BRepFillLocationLaw; index: int;
          spatialTolerance: StandardReal = 1.0e-7;
          angularTolerance: StandardReal = 1.0e-4): int {.noSideEffect,
    importcpp: "IsG1", header: "BRepFill_LocationLaw.hxx".}
proc d0*(this: var BRepFillLocationLaw; abscissa: StandardReal;
        section: var TopoDS_Shape) {.importcpp: "D0",
                                  header: "BRepFill_LocationLaw.hxx".}
proc parameter*(this: var BRepFillLocationLaw; abscissa: StandardReal; index: var int;
               param: var StandardReal) {.importcpp: "Parameter",
                                       header: "BRepFill_LocationLaw.hxx".}
proc abscissa*(this: var BRepFillLocationLaw; index: int; param: StandardReal): StandardReal {.
    importcpp: "Abscissa", header: "BRepFill_LocationLaw.hxx".}
type
  BRepFillLocationLawbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepFill_LocationLaw::get_type_name(@)",
                            header: "BRepFill_LocationLaw.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepFill_LocationLaw::get_type_descriptor(@)",
    header: "BRepFill_LocationLaw.hxx".}
proc dynamicType*(this: BRepFillLocationLaw): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepFill_LocationLaw.hxx".}