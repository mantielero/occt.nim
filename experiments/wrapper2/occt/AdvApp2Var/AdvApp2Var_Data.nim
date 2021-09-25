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


type
  Mdnombr1* {.importcpp: "mdnombr_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    pi* {.importc: "pi".}: Doublereal
    deuxpi* {.importc: "deuxpi".}: Doublereal
    pisur2* {.importc: "pisur2".}: Doublereal
    pis180* {.importc: "pis180".}: Doublereal
    c180pi* {.importc: "c180pi".}: Doublereal
    zero* {.importc: "zero".}: Doublereal
    one* {.importc: "one".}: Doublereal
    a180* {.importc: "a180".}: Doublereal
    a360* {.importc: "a360".}: Doublereal
    a90* {.importc: "a90".}: Doublereal



type
  Minombr1* {.importcpp: "minombr_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    nbr* {.importc: "nbr".}: array[1001, integer]



type
  Maovpar1* {.importcpp: "maovpar_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    r8und* {.importc: "r8und".}: Doublereal
    r8ovr* {.importc: "r8ovr".}: Doublereal
    x4und* {.importc: "x4und".}: Doublereal
    x4ovr* {.importc: "x4ovr".}: Doublereal
    r4und* {.importc: "r4und".}: Real
    r4ovr* {.importc: "r4ovr".}: Real
    r4nbe* {.importc: "r4nbe".}: integer
    r8nbm* {.importc: "r8nbm".}: integer
    r8nbe* {.importc: "r8nbe".}: integer
    i4ovr* {.importc: "i4ovr".}: integer
    i4ovn* {.importc: "i4ovn".}: integer
    r4exp* {.importc: "r4exp".}: integer
    r8exp* {.importc: "r8exp".}: integer
    r4exn* {.importc: "r4exn".}: integer
    r8exn* {.importc: "r8exn".}: integer
    r4ncs* {.importc: "r4ncs".}: integer
    r8ncs* {.importc: "r8ncs".}: integer
    r4nbm* {.importc: "r4nbm".}: integer
    i2ovr* {.importc: "i2ovr".}: Shortint
    i2ovn* {.importc: "i2ovn".}: Shortint



type
  Maovpch1* {.importcpp: "maovpch_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    cnmmac* {.importc: "cnmmac".}: array[16, char]
    frmr4* {.importc: "frmr4".}: array[8, char]
    frmr8* {.importc: "frmr8".}: array[8, char]
    cdcode* {.importc: "cdcode".}: array[8, char]



type
  Mlgdrtl1* {.importcpp: "mlgdrtl_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    rootab* {.importc: "rootab".}: array[930, Doublereal] ##  was [465][2]
    hiltab* {.importc: "hiltab".}: array[930, Doublereal] ##  was [465][2]
    hi0tab* {.importc: "hi0tab".}: array[31, Doublereal]



type
  Mmjcobi1* {.importcpp: "mmjcobi_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    plgcan* {.importc: "plgcan".}: array[3968, Doublereal] ##  was [496][2][4]
    canjac* {.importc: "canjac".}: array[3968, Doublereal] ##  was [496][2][4]



type
  Mmcmcnp1* {.importcpp: "mmcmcnp_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    cnp* {.importc: "cnp".}: array[3721, Doublereal] ##  was [61][61] ;



type
  Mmapgss1* {.importcpp: "mmapgss_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    gslxjs* {.importc: "gslxjs".}: array[5017, Doublereal]
    gsl0js* {.importc: "gsl0js".}: array[52, Doublereal]



type
  Mmapgs01* {.importcpp: "mmapgs0_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    gslxj0* {.importc: "gslxj0".}: array[4761, Doublereal]
    gsl0j0* {.importc: "gsl0j0".}: array[49, Doublereal]



type
  Mmapgs11* {.importcpp: "mmapgs1_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    gslxj1* {.importc: "gslxj1".}: array[4505, Doublereal]
    gsl0j1* {.importc: "gsl0j1".}: array[46, Doublereal]



type
  Mmapgs21* {.importcpp: "mmapgs2_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    gslxj2* {.importc: "gslxj2".}: array[4249, Doublereal]
    gsl0j2* {.importc: "gsl0j2".}: array[43, Doublereal]


## //

type
  AdvApp2VarData* {.importcpp: "AdvApp2Var_Data", header: "AdvApp2Var_Data.hxx",
                   bycopy.} = object


proc getmdnombr*(): var Mdnombr1 {.importcpp: "AdvApp2Var_Data::Getmdnombr(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getminombr*(): var Minombr1 {.importcpp: "AdvApp2Var_Data::Getminombr(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getmaovpar*(): var Maovpar1 {.importcpp: "AdvApp2Var_Data::Getmaovpar(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getmaovpch*(): var Maovpch1 {.importcpp: "AdvApp2Var_Data::Getmaovpch(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getmlgdrtl*(): var Mlgdrtl1 {.importcpp: "AdvApp2Var_Data::Getmlgdrtl(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getmmjcobi*(): var Mmjcobi1 {.importcpp: "AdvApp2Var_Data::Getmmjcobi(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getmmcmcnp*(): var Mmcmcnp1 {.importcpp: "AdvApp2Var_Data::Getmmcmcnp(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getmmapgss*(): var Mmapgss1 {.importcpp: "AdvApp2Var_Data::Getmmapgss(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getmmapgs0*(): var Mmapgs01 {.importcpp: "AdvApp2Var_Data::Getmmapgs0(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getmmapgs1*(): var Mmapgs11 {.importcpp: "AdvApp2Var_Data::Getmmapgs1(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getmmapgs2*(): var Mmapgs21 {.importcpp: "AdvApp2Var_Data::Getmmapgs2(@)",
                               header: "AdvApp2Var_Data.hxx".}

const
  mdnombr* = getmdnombr()
  minombr* = getminombr()
  maovpar* = getmaovpar()
  maovpch* = getmaovpch()
  mlgdrtl* = getmlgdrtl()
  mmjcobi* = getmmjcobi()
  mmcmcnp* = getmmcmcnp()
  mmapgss* = getmmapgss()
  mmapgs0* = getmmapgs0()
  mmapgs1* = getmmapgs1()
  mmapgs2* = getmmapgs2()


