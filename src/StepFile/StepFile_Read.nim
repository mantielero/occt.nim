##  Created on: 1991-08-30
##  Created by: Christian CAILLET
##  Copyright (c) 1991-1999 Matra Datavision
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
##    StepFile_Read.hxx
##    routine assurant l'enchainement des operations de lecture d'un fichier
##    STEP dans un StepModel, en fonction d'une cle de reconnaissance
##    Retour de la fonction :
##      0 si OK  (le StepModel a ete charge)
##     -1 si abandon car fichier pas pu etre ouvert
##      1 si erreur en cours de lecture

## # include <stepread.h>  : sauf recfile_modeprint, declare ici

proc stepFileReadTrace*(mode: cint) {.importcpp: "StepFile_ReadTrace(@)",
                                   header: "StepFile_Read.hxx".}
##  Modal : 0 pas de trace, 1 trace LoadModel, 2 & 3 + trace interne lex-yac
## ! Working function reading STEP file or stream.
## ! @param theName - name of the file or stream
## ! @param theIStream - pointer to stream to read; if null, file theName will be opened
## ! @param theModel - STEP model
## ! @param theProtocol - STEP protocol object
## ! @return 0 on success, -1 if stream fails, 1 in case of parsing error

proc stepFileRead*(theName: cstring; theIStream: ptr Istream;
                  theModel: Handle[StepDataStepModel];
                  theProtocol: Handle[StepDataProtocol]): cint {.
    importcpp: "StepFile_Read(@)", header: "StepFile_Read.hxx".}

























