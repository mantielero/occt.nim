##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Arun MENON )
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

discard "forward decl of IGESBasic_SubfigureDef"
discard "forward decl of gp_XYZ"
discard "forward decl of IGESBasic_SingularSubfigure"
discard "forward decl of IGESBasic_SingularSubfigure"
type
  HandleIGESBasicSingularSubfigure* = Handle[IGESBasicSingularSubfigure]

## ! defines SingularSubfigure, Type <408> Form <0>
## ! in package IGESBasic
## ! Defines the occurrence of a single instance of the
## ! defined Subfigure.

type
  IGESBasicSingularSubfigure* {.importcpp: "IGESBasic_SingularSubfigure",
                               header: "IGESBasic_SingularSubfigure.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESBasicSingularSubfigure*(): IGESBasicSingularSubfigure {.
    constructor, importcpp: "IGESBasic_SingularSubfigure(@)",
    header: "IGESBasic_SingularSubfigure.hxx".}
proc init*(this: var IGESBasicSingularSubfigure;
          aSubfigureDef: Handle[IGESBasicSubfigureDef]; aTranslation: GpXYZ;
          hasScale: StandardBoolean; aScale: StandardReal) {.importcpp: "Init",
    header: "IGESBasic_SingularSubfigure.hxx".}
proc subfigure*(this: IGESBasicSingularSubfigure): Handle[IGESBasicSubfigureDef] {.
    noSideEffect, importcpp: "Subfigure", header: "IGESBasic_SingularSubfigure.hxx".}
proc translation*(this: IGESBasicSingularSubfigure): GpXYZ {.noSideEffect,
    importcpp: "Translation", header: "IGESBasic_SingularSubfigure.hxx".}
proc scaleFactor*(this: IGESBasicSingularSubfigure): StandardReal {.noSideEffect,
    importcpp: "ScaleFactor", header: "IGESBasic_SingularSubfigure.hxx".}
proc hasScaleFactor*(this: IGESBasicSingularSubfigure): StandardBoolean {.
    noSideEffect, importcpp: "HasScaleFactor",
    header: "IGESBasic_SingularSubfigure.hxx".}
proc transformedTranslation*(this: IGESBasicSingularSubfigure): GpXYZ {.
    noSideEffect, importcpp: "TransformedTranslation",
    header: "IGESBasic_SingularSubfigure.hxx".}
type
  IGESBasicSingularSubfigurebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESBasic_SingularSubfigure::get_type_name(@)",
                            header: "IGESBasic_SingularSubfigure.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESBasic_SingularSubfigure::get_type_descriptor(@)",
    header: "IGESBasic_SingularSubfigure.hxx".}
proc dynamicType*(this: IGESBasicSingularSubfigure): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESBasic_SingularSubfigure.hxx".}

