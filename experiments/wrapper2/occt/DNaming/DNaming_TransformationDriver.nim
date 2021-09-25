##  Created on: 2009-05-07
##  Created by: Sergey ZARITCHNY <sergey.zaritchny@opencascade.com>
##  Copyright (c) 2009-2014 OPEN CASCADE SAS
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

discard "forward decl of TFunction_Logbook"
discard "forward decl of TDF_Label"
discard "forward decl of TNaming_NamedShape"
discard "forward decl of gp_Trsf"
discard "forward decl of DNaming_TransformationDriver"
discard "forward decl of DNaming_TransformationDriver"
type
  HandleDNamingTransformationDriver* = Handle[DNamingTransformationDriver]
  DNamingTransformationDriver* {.importcpp: "DNaming_TransformationDriver",
                                header: "DNaming_TransformationDriver.hxx", bycopy.} = object of TFunctionDriver ##
                                                                                                          ## !
                                                                                                          ## Constructor
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## validation
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## ==========


proc constructDNamingTransformationDriver*(): DNamingTransformationDriver {.
    constructor, importcpp: "DNaming_TransformationDriver(@)",
    header: "DNaming_TransformationDriver.hxx".}
proc validate*(this: DNamingTransformationDriver;
              theLog: var Handle[TFunctionLogbook]) {.noSideEffect,
    importcpp: "Validate", header: "DNaming_TransformationDriver.hxx".}
proc mustExecute*(this: DNamingTransformationDriver;
                 theLog: Handle[TFunctionLogbook]): bool {.noSideEffect,
    importcpp: "MustExecute", header: "DNaming_TransformationDriver.hxx".}
proc execute*(this: DNamingTransformationDriver;
             theLog: var Handle[TFunctionLogbook]): int {.noSideEffect,
    importcpp: "Execute", header: "DNaming_TransformationDriver.hxx".}
type
  DNamingTransformationDriverbaseType* = TFunctionDriver

proc getTypeName*(): cstring {.importcpp: "DNaming_TransformationDriver::get_type_name(@)",
                            header: "DNaming_TransformationDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DNaming_TransformationDriver::get_type_descriptor(@)",
    header: "DNaming_TransformationDriver.hxx".}
proc dynamicType*(this: DNamingTransformationDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "DNaming_TransformationDriver.hxx".}
