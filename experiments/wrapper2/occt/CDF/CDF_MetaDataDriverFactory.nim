##  Created on: 1997-11-17
##  Created by: Jean-Louis Frenkel
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of CDF_MetaDataDriver"
discard "forward decl of CDF_MetaDataDriverFactory"
discard "forward decl of CDF_MetaDataDriverFactory"
type
  HandleCDF_MetaDataDriverFactory* = Handle[CDF_MetaDataDriverFactory]
  CDF_MetaDataDriverFactory* {.importcpp: "CDF_MetaDataDriverFactory",
                              header: "CDF_MetaDataDriverFactory.hxx", bycopy.} = object of StandardTransient


proc build*(this: CDF_MetaDataDriverFactory): Handle[CDF_MetaDataDriver] {.
    noSideEffect, importcpp: "Build", header: "CDF_MetaDataDriverFactory.hxx".}
type
  CDF_MetaDataDriverFactorybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "CDF_MetaDataDriverFactory::get_type_name(@)",
                            header: "CDF_MetaDataDriverFactory.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "CDF_MetaDataDriverFactory::get_type_descriptor(@)",
    header: "CDF_MetaDataDriverFactory.hxx".}
proc dynamicType*(this: CDF_MetaDataDriverFactory): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "CDF_MetaDataDriverFactory.hxx".}
