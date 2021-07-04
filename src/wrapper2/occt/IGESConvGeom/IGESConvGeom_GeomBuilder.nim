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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColgp/TColgp_HSequenceOfXYZ, ../gp/gp_Trsf,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

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
  IGESConvGeom_GeomBuilder* {.importcpp: "IGESConvGeom_GeomBuilder",
                             header: "IGESConvGeom_GeomBuilder.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Creates
                                                                                  ## a
                                                                                  ## GeomBuilder
                                                                                  ## at
                                                                                  ## initial
                                                                                  ## state.


proc constructIGESConvGeom_GeomBuilder*(): IGESConvGeom_GeomBuilder {.constructor,
    importcpp: "IGESConvGeom_GeomBuilder(@)",
    header: "IGESConvGeom_GeomBuilder.hxx".}
proc Clear*(this: var IGESConvGeom_GeomBuilder) {.importcpp: "Clear",
    header: "IGESConvGeom_GeomBuilder.hxx".}
proc AddXY*(this: var IGESConvGeom_GeomBuilder; val: gp_XY) {.importcpp: "AddXY",
    header: "IGESConvGeom_GeomBuilder.hxx".}
proc AddXYZ*(this: var IGESConvGeom_GeomBuilder; val: gp_XYZ) {.importcpp: "AddXYZ",
    header: "IGESConvGeom_GeomBuilder.hxx".}
proc AddVec*(this: var IGESConvGeom_GeomBuilder; val: gp_XYZ) {.importcpp: "AddVec",
    header: "IGESConvGeom_GeomBuilder.hxx".}
proc NbPoints*(this: IGESConvGeom_GeomBuilder): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "IGESConvGeom_GeomBuilder.hxx".}
proc Point*(this: IGESConvGeom_GeomBuilder; num: Standard_Integer): gp_XYZ {.
    noSideEffect, importcpp: "Point", header: "IGESConvGeom_GeomBuilder.hxx".}
proc MakeCopiousData*(this: IGESConvGeom_GeomBuilder; datatype: Standard_Integer;
                     polyline: Standard_Boolean = Standard_False): handle[
    IGESGeom_CopiousData] {.noSideEffect, importcpp: "MakeCopiousData",
                           header: "IGESConvGeom_GeomBuilder.hxx".}
proc Position*(this: IGESConvGeom_GeomBuilder): gp_Trsf {.noSideEffect,
    importcpp: "Position", header: "IGESConvGeom_GeomBuilder.hxx".}
proc SetPosition*(this: var IGESConvGeom_GeomBuilder; pos: gp_Trsf) {.
    importcpp: "SetPosition", header: "IGESConvGeom_GeomBuilder.hxx".}
proc SetPosition*(this: var IGESConvGeom_GeomBuilder; pos: gp_Ax3) {.
    importcpp: "SetPosition", header: "IGESConvGeom_GeomBuilder.hxx".}
proc SetPosition*(this: var IGESConvGeom_GeomBuilder; pos: gp_Ax2) {.
    importcpp: "SetPosition", header: "IGESConvGeom_GeomBuilder.hxx".}
proc SetPosition*(this: var IGESConvGeom_GeomBuilder; pos: gp_Ax1) {.
    importcpp: "SetPosition", header: "IGESConvGeom_GeomBuilder.hxx".}
proc IsIdentity*(this: IGESConvGeom_GeomBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "IsIdentity", header: "IGESConvGeom_GeomBuilder.hxx".}
proc IsTranslation*(this: IGESConvGeom_GeomBuilder): Standard_Boolean {.
    noSideEffect, importcpp: "IsTranslation",
    header: "IGESConvGeom_GeomBuilder.hxx".}
proc IsZOnly*(this: IGESConvGeom_GeomBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "IsZOnly", header: "IGESConvGeom_GeomBuilder.hxx".}
proc EvalXYZ*(this: IGESConvGeom_GeomBuilder; val: gp_XYZ; X: var Standard_Real;
             Y: var Standard_Real; Z: var Standard_Real) {.noSideEffect,
    importcpp: "EvalXYZ", header: "IGESConvGeom_GeomBuilder.hxx".}
proc MakeTransformation*(this: IGESConvGeom_GeomBuilder; unit: Standard_Real = 1): handle[
    IGESGeom_TransformationMatrix] {.noSideEffect,
                                    importcpp: "MakeTransformation",
                                    header: "IGESConvGeom_GeomBuilder.hxx".}