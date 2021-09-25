##  Created on: 1993-03-31
##  Created by: NW,JPB,CAL
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

## ! List of named materials (predefined presets).
## ! Each preset defines either physical (having natural color) or generic (mutable color) material (@sa Graphic3d_TypeOfMaterial).

type
  Graphic3dNameOfMaterial* {.size: sizeof(cint),
                            importcpp: "Graphic3d_NameOfMaterial",
                            header: "Graphic3d_NameOfMaterial.hxx".} = enum
    Graphic3dNameOfMaterialBrass, ## !< Brass        (Physic)
    Graphic3dNameOfMaterialBronze, ## !< Bronze       (Physic)
    Graphic3dNameOfMaterialCopper, ## !< Copper       (Physic)
    Graphic3dNameOfMaterialGold, ## !< Gold         (Physic)
    Graphic3dNameOfMaterialPewter, ## !< Pewter       (Physic)
    Graphic3dNameOfMaterialPlastered, ## !< Plastered    (Generic)
    Graphic3dNameOfMaterialPlastified, ## !< Plastified   (Generic)
    Graphic3dNameOfMaterialSilver, ## !< Silver       (Physic)
    Graphic3dNameOfMaterialSteel, ## !< Steel        (Physic)
    Graphic3dNameOfMaterialStone, ## !< Stone        (Physic)
    Graphic3dNameOfMaterialShinyPlastified, ## !< Shiny Plastified (Generic)
    Graphic3dNameOfMaterialSatin, ## !< Satin        (Generic)
    Graphic3dNameOfMaterialMetalized, ## !< Metalized    (Generic)
    Graphic3dNameOfMaterialIonized, ## !< Ionized      (Generic)
    Graphic3dNameOfMaterialChrome, ## !< Chrome       (Physic)
    Graphic3dNameOfMaterialAluminum, ## !< Aluminum     (Physic)
    Graphic3dNameOfMaterialObsidian, ## !< Obsidian     (Physic)
    Graphic3dNameOfMaterialNeon, ## !< Neon         (Physic)
    Graphic3dNameOfMaterialJade, ## !< Jade         (Physic)
    Graphic3dNameOfMaterialCharcoal, ## !< Charcoal     (Physic)
    Graphic3dNameOfMaterialWater, ## !< Water        (Physic)
    Graphic3dNameOfMaterialGlass, ## !< Glass        (Physic)
    Graphic3dNameOfMaterialDiamond, ## !< Diamond      (Physic)
    Graphic3dNameOfMaterialTransparent, ## !< Transparent  (Physic)
    Graphic3dNameOfMaterialDEFAULT, ## !< Default      (Generic);
                                   ## !  normally used as out-of-range value pointing to some application default
    Graphic3dNameOfMaterialUserDefined, ## !< User-defined (Physic);
                                       ## !  used for any material with non-standard definition
                                       ##  old aliases
    Graphic3dNOM_BRASS = graphic3dNameOfMaterialBrass,
    Graphic3dNOM_BRONZE = graphic3dNameOfMaterialBronze,
    Graphic3dNOM_COPPER = graphic3dNameOfMaterialCopper,
    Graphic3dNOM_GOLD = graphic3dNameOfMaterialGold,
    Graphic3dNOM_PEWTER = graphic3dNameOfMaterialPewter,
    Graphic3dNOM_PLASTER = graphic3dNameOfMaterialPlastered,
    Graphic3dNOM_PLASTIC = graphic3dNameOfMaterialPlastified,
    Graphic3dNOM_SILVER = graphic3dNameOfMaterialSilver,
    Graphic3dNOM_STEEL = graphic3dNameOfMaterialSteel,
    Graphic3dNOM_STONE = graphic3dNameOfMaterialStone,
    Graphic3dNOM_SHINY_PLASTIC = graphic3dNameOfMaterialShinyPlastified,
    Graphic3dNOM_SATIN = graphic3dNameOfMaterialSatin,
    Graphic3dNOM_METALIZED = graphic3dNameOfMaterialMetalized,
    Graphic3dNOM_NEON_GNC = graphic3dNameOfMaterialIonized,
    Graphic3dNOM_CHROME = graphic3dNameOfMaterialChrome,
    Graphic3dNOM_ALUMINIUM = graphic3dNameOfMaterialAluminum,
    Graphic3dNOM_OBSIDIAN = graphic3dNameOfMaterialObsidian,
    Graphic3dNOM_NEON_PHC = graphic3dNameOfMaterialNeon,
    Graphic3dNOM_JADE = graphic3dNameOfMaterialJade,
    Graphic3dNOM_CHARCOAL = graphic3dNameOfMaterialCharcoal,
    Graphic3dNOM_WATER = graphic3dNameOfMaterialWater,
    Graphic3dNOM_GLASS = graphic3dNameOfMaterialGlass,
    Graphic3dNOM_DIAMOND = graphic3dNameOfMaterialDiamond,
    Graphic3dNOM_TRANSPARENT = graphic3dNameOfMaterialTransparent,
    Graphic3dNOM_DEFAULT = graphic3dNameOfMaterialDEFAULT,
    Graphic3dNOM_UserDefined = graphic3dNameOfMaterialUserDefined


