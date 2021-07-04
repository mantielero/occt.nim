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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Wire,
  ../Standard/Standard_Real, ../GeomFill/GeomFill_HArray1OfLocationLaw,
  ../TColStd/TColStd_HArray1OfReal, ../TopTools/TopTools_HArray1OfShape,
  ../TColStd/TColStd_HArray1OfInteger, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient, ../GeomFill/GeomFill_PipeError,
  ../TColStd/TColStd_Array1OfInteger, ../Standard/Standard_Boolean

discard "forward decl of Standard_OutOfRange"
discard "forward decl of TopoDS_Wire"
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepFill_LocationLaw"
discard "forward decl of BRepFill_LocationLaw"
type
  Handle_BRepFill_LocationLaw* = handle[BRepFill_LocationLaw]

## ! Location Law on a  Wire.

type
  BRepFill_LocationLaw* {.importcpp: "BRepFill_LocationLaw",
                         header: "BRepFill_LocationLaw.hxx", bycopy.} = object of Standard_Transient ##
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


proc GetStatus*(this: BRepFill_LocationLaw): GeomFill_PipeError {.noSideEffect,
    importcpp: "GetStatus", header: "BRepFill_LocationLaw.hxx".}
proc TransformInG0Law*(this: var BRepFill_LocationLaw) {.
    importcpp: "TransformInG0Law", header: "BRepFill_LocationLaw.hxx".}
proc TransformInCompatibleLaw*(this: var BRepFill_LocationLaw;
                              AngularTolerance: Standard_Real) {.
    importcpp: "TransformInCompatibleLaw", header: "BRepFill_LocationLaw.hxx".}
proc DeleteTransform*(this: var BRepFill_LocationLaw) {.
    importcpp: "DeleteTransform", header: "BRepFill_LocationLaw.hxx".}
proc NbHoles*(this: var BRepFill_LocationLaw; Tol: Standard_Real = 1.0e-7): Standard_Integer {.
    importcpp: "NbHoles", header: "BRepFill_LocationLaw.hxx".}
proc Holes*(this: BRepFill_LocationLaw; Interval: var TColStd_Array1OfInteger) {.
    noSideEffect, importcpp: "Holes", header: "BRepFill_LocationLaw.hxx".}
proc NbLaw*(this: BRepFill_LocationLaw): Standard_Integer {.noSideEffect,
    importcpp: "NbLaw", header: "BRepFill_LocationLaw.hxx".}
proc Law*(this: BRepFill_LocationLaw; Index: Standard_Integer): handle[
    GeomFill_LocationLaw] {.noSideEffect, importcpp: "Law",
                           header: "BRepFill_LocationLaw.hxx".}
proc Wire*(this: BRepFill_LocationLaw): TopoDS_Wire {.noSideEffect,
    importcpp: "Wire", header: "BRepFill_LocationLaw.hxx".}
proc Edge*(this: BRepFill_LocationLaw; Index: Standard_Integer): TopoDS_Edge {.
    noSideEffect, importcpp: "Edge", header: "BRepFill_LocationLaw.hxx".}
proc Vertex*(this: BRepFill_LocationLaw; Index: Standard_Integer): TopoDS_Vertex {.
    noSideEffect, importcpp: "Vertex", header: "BRepFill_LocationLaw.hxx".}
proc PerformVertex*(this: BRepFill_LocationLaw; Index: Standard_Integer;
                   InputVertex: TopoDS_Vertex; TolMin: Standard_Real;
                   OutputVertex: var TopoDS_Vertex; Location: Standard_Integer = 0) {.
    noSideEffect, importcpp: "PerformVertex", header: "BRepFill_LocationLaw.hxx".}
proc CurvilinearBounds*(this: BRepFill_LocationLaw; Index: Standard_Integer;
                       First: var Standard_Real; Last: var Standard_Real) {.
    noSideEffect, importcpp: "CurvilinearBounds",
    header: "BRepFill_LocationLaw.hxx".}
proc IsClosed*(this: BRepFill_LocationLaw): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "BRepFill_LocationLaw.hxx".}
proc IsG1*(this: BRepFill_LocationLaw; Index: Standard_Integer;
          SpatialTolerance: Standard_Real = 1.0e-7;
          AngularTolerance: Standard_Real = 1.0e-4): Standard_Integer {.noSideEffect,
    importcpp: "IsG1", header: "BRepFill_LocationLaw.hxx".}
proc D0*(this: var BRepFill_LocationLaw; Abscissa: Standard_Real;
        Section: var TopoDS_Shape) {.importcpp: "D0",
                                  header: "BRepFill_LocationLaw.hxx".}
proc Parameter*(this: var BRepFill_LocationLaw; Abscissa: Standard_Real;
               Index: var Standard_Integer; Param: var Standard_Real) {.
    importcpp: "Parameter", header: "BRepFill_LocationLaw.hxx".}
proc Abscissa*(this: var BRepFill_LocationLaw; Index: Standard_Integer;
              Param: Standard_Real): Standard_Real {.importcpp: "Abscissa",
    header: "BRepFill_LocationLaw.hxx".}
type
  BRepFill_LocationLawbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepFill_LocationLaw::get_type_name(@)",
                              header: "BRepFill_LocationLaw.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepFill_LocationLaw::get_type_descriptor(@)",
    header: "BRepFill_LocationLaw.hxx".}
proc DynamicType*(this: BRepFill_LocationLaw): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepFill_LocationLaw.hxx".}