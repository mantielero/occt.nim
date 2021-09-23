##  Created on: 1993-11-18
##  Created by: Yves FRICAUD
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../TColGeom2d/TColGeom2d_SequenceOfGeometry, MAT2d_DataMapOfIntegerConnexion,
  MAT2d_DataMapOfBiIntSequenceOfInteger, ../TColStd/TColStd_SequenceOfInteger,
  ../GeomAbs/GeomAbs_JoinType, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient, MAT2d_SequenceOfSequenceOfGeometry,
  ../TColStd/TColStd_SequenceOfBoolean, ../Standard/Standard_Integer,
  MAT2d_SequenceOfConnexion

discard "forward decl of Geom2d_Geometry"
discard "forward decl of MAT2d_Connexion"
discard "forward decl of MAT2d_BiInt"
discard "forward decl of MAT2d_MiniPath"
discard "forward decl of MAT2d_Circuit"
discard "forward decl of MAT2d_Circuit"
type
  Handle_MAT2d_Circuit* = handle[MAT2d_Circuit]

## ! Constructs a circuit on a set of lines.
## ! EquiCircuit gives a Circuit passing by all the lines
## ! in a set and all the connexions of the minipath associated.

type
  MAT2d_Circuit* {.importcpp: "MAT2d_Circuit", header: "MAT2d_Circuit.hxx", bycopy.} = object of Standard_Transient


proc constructMAT2d_Circuit*(aJoinType: GeomAbs_JoinType = GeomAbs_Arc;
                            IsOpenResult: Standard_Boolean = Standard_False): MAT2d_Circuit {.
    constructor, importcpp: "MAT2d_Circuit(@)", header: "MAT2d_Circuit.hxx".}
proc Perform*(this: var MAT2d_Circuit;
             aFigure: var MAT2d_SequenceOfSequenceOfGeometry;
             IsClosed: TColStd_SequenceOfBoolean; IndRefLine: Standard_Integer;
             Trigo: Standard_Boolean) {.importcpp: "Perform",
                                      header: "MAT2d_Circuit.hxx".}
proc NumberOfItems*(this: MAT2d_Circuit): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfItems", header: "MAT2d_Circuit.hxx".}
proc Value*(this: MAT2d_Circuit; Index: Standard_Integer): handle[Geom2d_Geometry] {.
    noSideEffect, importcpp: "Value", header: "MAT2d_Circuit.hxx".}
proc LineLength*(this: MAT2d_Circuit; IndexLine: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "LineLength", header: "MAT2d_Circuit.hxx".}
proc RefToEqui*(this: MAT2d_Circuit; IndLine: Standard_Integer;
               IndCurve: Standard_Integer): TColStd_SequenceOfInteger {.
    noSideEffect, importcpp: "RefToEqui", header: "MAT2d_Circuit.hxx".}
proc Connexion*(this: MAT2d_Circuit; Index: Standard_Integer): handle[MAT2d_Connexion] {.
    noSideEffect, importcpp: "Connexion", header: "MAT2d_Circuit.hxx".}
proc ConnexionOn*(this: MAT2d_Circuit; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "ConnexionOn", header: "MAT2d_Circuit.hxx".}
type
  MAT2d_Circuitbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MAT2d_Circuit::get_type_name(@)",
                              header: "MAT2d_Circuit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MAT2d_Circuit::get_type_descriptor(@)",
    header: "MAT2d_Circuit.hxx".}
proc DynamicType*(this: MAT2d_Circuit): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT2d_Circuit.hxx".}