import ../standard/standard_types
import ../cdm/cdm_types
import ../tcollection/tcollection_types
import pcdm_types
#import ../storage/storage_types
import ../message/message_includes

##  Created on: 1997-12-18
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



proc write*(this: var PCDM_Writer; aDocument: Handle[CDM_Document];
           aFileName: TCollectionExtendedString;
           theRange: MessageProgressRange = newMessageProgressRange()) {.cdecl,
    importcpp: "Write", header: "PCDM_Writer.hxx".}
proc write*(this: var PCDM_Writer; theDocument: Handle[CDM_Document];
           theOStream: var StandardOStream;
           theRange: MessageProgressRange = newMessageProgressRange()) {.cdecl,
    importcpp: "Write", header: "PCDM_Writer.hxx".}

