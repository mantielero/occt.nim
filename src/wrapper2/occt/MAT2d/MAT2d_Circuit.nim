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

discard "forward decl of Geom2d_Geometry"
discard "forward decl of MAT2d_Connexion"
discard "forward decl of MAT2d_BiInt"
discard "forward decl of MAT2d_MiniPath"
discard "forward decl of MAT2d_Circuit"
discard "forward decl of MAT2d_Circuit"
type
  HandleMAT2dCircuit* = Handle[MAT2dCircuit]

## ! Constructs a circuit on a set of lines.
## ! EquiCircuit gives a Circuit passing by all the lines
## ! in a set and all the connexions of the minipath associated.

type
  MAT2dCircuit* {.importcpp: "MAT2d_Circuit", header: "MAT2d_Circuit.hxx", bycopy.} = object of StandardTransient


proc constructMAT2dCircuit*(aJoinType: GeomAbsJoinType = geomAbsArc;
                           isOpenResult: StandardBoolean = standardFalse): MAT2dCircuit {.
    constructor, importcpp: "MAT2d_Circuit(@)", header: "MAT2d_Circuit.hxx".}
proc perform*(this: var MAT2dCircuit;
             aFigure: var MAT2dSequenceOfSequenceOfGeometry;
             isClosed: TColStdSequenceOfBoolean; indRefLine: StandardInteger;
             trigo: StandardBoolean) {.importcpp: "Perform",
                                     header: "MAT2d_Circuit.hxx".}
proc numberOfItems*(this: MAT2dCircuit): StandardInteger {.noSideEffect,
    importcpp: "NumberOfItems", header: "MAT2d_Circuit.hxx".}
proc value*(this: MAT2dCircuit; index: StandardInteger): Handle[Geom2dGeometry] {.
    noSideEffect, importcpp: "Value", header: "MAT2d_Circuit.hxx".}
proc lineLength*(this: MAT2dCircuit; indexLine: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "LineLength", header: "MAT2d_Circuit.hxx".}
proc refToEqui*(this: MAT2dCircuit; indLine: StandardInteger;
               indCurve: StandardInteger): TColStdSequenceOfInteger {.noSideEffect,
    importcpp: "RefToEqui", header: "MAT2d_Circuit.hxx".}
proc connexion*(this: MAT2dCircuit; index: StandardInteger): Handle[MAT2dConnexion] {.
    noSideEffect, importcpp: "Connexion", header: "MAT2d_Circuit.hxx".}
proc connexionOn*(this: MAT2dCircuit; index: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "ConnexionOn", header: "MAT2d_Circuit.hxx".}
type
  MAT2dCircuitbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MAT2d_Circuit::get_type_name(@)",
                            header: "MAT2d_Circuit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MAT2d_Circuit::get_type_descriptor(@)",
    header: "MAT2d_Circuit.hxx".}
proc dynamicType*(this: MAT2dCircuit): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT2d_Circuit.hxx".}

