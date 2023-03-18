


##  Copyright (c) 2020 OPEN CASCADE SAS
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

## ! Storage format versions of OCAF documents in XML and binary file formats.
## !
## ! OCAF document file format evolves and a new version number indicates each improvement of the format.
## ! This enumeration lists all versions of an OCAF document. TDocStd_FormatVersion_CURRENT value refers to the last file format version.
## ! By default, Open CASCADE Technology writes new documents using the last file format version.
## ! The last version of Open CASCADE Technology is able to read old documents of any version.
## ! However, a previous version of Open CASCADE Technology may not be able to read a new document.
## ! In this case use the method ChangeStorageFormatVersion() from TDocStd_Document to change the file format version.
## ! Then, save the document by means of SaveAs() from TDocStd_Application.
## !
## ! If it is necessary to improve an XML or binary file format of OCAF document, follow please the next steps:
## ! - increment the file format version in this enumeration. Put a reference to the last file format version by means of TDocStd_FormatVersion_CURRENT.
## ! - introduce the improvement in OCAF attribute storage and retrieval drivers, if necessary.
## !   As an example, please consider the file XmlMDataStd_TreeNodeDriver.cxx.
## ! - test the improvement on current file format version and on the previous one.






