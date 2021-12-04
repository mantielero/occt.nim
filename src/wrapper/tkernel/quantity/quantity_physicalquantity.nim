##  Created on: 1994-02-08
##  Created by: Gilles DEBARBOUILLE
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

## ! List of all physical quantities(Afnor)

type
  quantityPhysicalquantity* {.size: sizeof(cint),
                             importcpp: "Quantity_Physicalquantity",
                             header: "Quantity_Physicalquantity.hxx".} = enum
    quantityMASS, quantityPLANEANGLE, quantitySOLIDANGLE, quantityLENGTH,
    quantityAREA, quantityVOLUME, quantitySPEED, quantityVELOCITY,
    quantityACCELERATION, quantityANGULARVELOCITY, quantityFREQUENCY,
    quantityTEMPERATURE, quantityAMOUNTOFSUBSTANCE, quantityDENSITY,
    quantityMASSFLOW, quantityVOLUMEFLOW, quantityCONSUMPTION, quantityMOMENTUM,
    quantityKINETICMOMENT, quantityMOMENTOFINERTIA, quantityFORCE,
    quantityMOMENTOFAFORCE, quantityTORQUE, quantityWEIGHT, quantityPRESSURE,
    quantityVISCOSITY, quantityKINEMATICVISCOSITY, quantityENERGY, quantityWORK,
    quantityPOWER, quantitySURFACETENSION, quantityCOEFFICIENTOFEXPANSION,
    quantityTHERMALCONDUCTIVITY, quantitySPECIFICHEATCAPACITY, quantityENTROPY,
    quantityENTHALPY, quantityLUMINOUSINTENSITY, quantityLUMINOUSFLUX,
    quantityLUMINANCE, quantityILLUMINANCE, quantityLUMINOUSEXPOSITION,
    quantityLUMINOUSEFFICACITY, quantityELECTRICCHARGE, quantityELECTRICCURRENT,
    quantityELECTRICFIELDSTRENGTH, quantityELECTRICPOTENTIAL,
    quantityELECTRICCAPACITANCE, quantityMAGNETICFLUX,
    quantityMAGNETICFLUXDENSITY, quantityMAGNETICFIELDSTRENGTH,
    quantityRELUCTANCE, quantityRESISTANCE, quantityINDUCTANCE,
    quantityCAPACITANCE, quantityIMPEDANCE, quantityADMITTANCE,
    quantityRESISTIVITY, quantityCONDUCTIVITY, quantityMOLARMASS,
    quantityMOLARVOLUME, quantityCONCENTRATION, quantityMOLARCONCENTRATION,
    quantityMOLARITY, quantitySOUNDINTENSITY, quantityACOUSTICINTENSITY,
    quantityACTIVITY, quantityABSORBEDDOSE, quantityDOSEEQUIVALENT

