##  Created on: 1994-11-16
##  Created by: Christian CAILLET
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

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_XY"
discard "forward decl of gp_XYZ"
discard "forward decl of IGESGeom_CopiousData"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of IGESGeom_TransformationMatrix"
type
  IGESConvGeomGeomBuilder* {.importcpp: "IGESConvGeom_GeomBuilder",
                            header: "IGESConvGeom_GeomBuilder.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Creates
                                                                                 ## a
                                                                                 ## GeomBuilder
                                                                                 ## at
                                                                                 ## initial
                                                                                 ## state.


proc constructIGESConvGeomGeomBuilder*(): IGESConvGeomGeomBuilder {.constructor,
    importcpp: "IGESConvGeom_GeomBuilder(@)",
    header: "IGESConvGeom_GeomBuilder.hxx".}
proc clear*(this: var IGESConvGeomGeomBuilder) {.importcpp: "Clear",
    header: "IGESConvGeom_GeomBuilder.hxx".}
proc addXY*(this: var IGESConvGeomGeomBuilder; val: GpXY) {.importcpp: "AddXY",
    header: "IGESConvGeom_GeomBuilder.hxx".}
proc addXYZ*(this: var IGESConvGeomGeomBuilder; val: GpXYZ) {.importcpp: "AddXYZ",
    header: "IGESConvGeom_GeomBuilder.hxx".}
proc addVec*(this: var IGESConvGeomGeomBuilder; val: GpXYZ) {.importcpp: "AddVec",
    header: "IGESConvGeom_GeomBuilder.hxx".}
proc nbPoints*(this: IGESConvGeomGeomBuilder): StandardInteger {.noSideEffect,
    importcpp: "NbPoints", header: "IGESConvGeom_GeomBuilder.hxx".}
proc point*(this: IGESConvGeomGeomBuilder; num: StandardInteger): GpXYZ {.
    noSideEffect, importcpp: "Point", header: "IGESConvGeom_GeomBuilder.hxx".}
proc makeCopiousData*(this: IGESConvGeomGeomBuilder; datatype: StandardInteger;
                     polyline: StandardBoolean = standardFalse): Handle[
    IGESGeomCopiousData] {.noSideEffect, importcpp: "MakeCopiousData",
                          header: "IGESConvGeom_GeomBuilder.hxx".}
proc position*(this: IGESConvGeomGeomBuilder): GpTrsf {.noSideEffect,
    importcpp: "Position", header: "IGESConvGeom_GeomBuilder.hxx".}
proc setPosition*(this: var IGESConvGeomGeomBuilder; pos: GpTrsf) {.
    importcpp: "SetPosition", header: "IGESConvGeom_GeomBuilder.hxx".}
proc setPosition*(this: var IGESConvGeomGeomBuilder; pos: GpAx3) {.
    importcpp: "SetPosition", header: "IGESConvGeom_GeomBuilder.hxx".}
proc setPosition*(this: var IGESConvGeomGeomBuilder; pos: GpAx2) {.
    importcpp: "SetPosition", header: "IGESConvGeom_GeomBuilder.hxx".}
proc setPosition*(this: var IGESConvGeomGeomBuilder; pos: GpAx1) {.
    importcpp: "SetPosition", header: "IGESConvGeom_GeomBuilder.hxx".}
proc isIdentity*(this: IGESConvGeomGeomBuilder): StandardBoolean {.noSideEffect,
    importcpp: "IsIdentity", header: "IGESConvGeom_GeomBuilder.hxx".}
proc isTranslation*(this: IGESConvGeomGeomBuilder): StandardBoolean {.noSideEffect,
    importcpp: "IsTranslation", header: "IGESConvGeom_GeomBuilder.hxx".}
proc isZOnly*(this: IGESConvGeomGeomBuilder): StandardBoolean {.noSideEffect,
    importcpp: "IsZOnly", header: "IGESConvGeom_GeomBuilder.hxx".}
proc evalXYZ*(this: IGESConvGeomGeomBuilder; val: GpXYZ; x: var StandardReal;
             y: var StandardReal; z: var StandardReal) {.noSideEffect,
    importcpp: "EvalXYZ", header: "IGESConvGeom_GeomBuilder.hxx".}
proc makeTransformation*(this: IGESConvGeomGeomBuilder; unit: StandardReal = 1): Handle[
    IGESGeomTransformationMatrix] {.noSideEffect, importcpp: "MakeTransformation",
                                   header: "IGESConvGeom_GeomBuilder.hxx".}

