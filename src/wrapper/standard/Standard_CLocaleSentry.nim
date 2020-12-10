{.push header: "Standard_CLocaleSentry.hxx".}


# Constructors and methods
proc constructor_Standard_CLocaleSentry*(): Standard_CLocaleSentry {.constructor,importcpp: "Standard_CLocaleSentry".}
  ## Setup current C locale to "C".

proc constructor_Standard_CLocaleSentry*(Standard_CLocaleSentry): Standard_CLocaleSentry {.constructor,importcpp: "Standard_CLocaleSentry(@)".}
  ## Copying disallowed

proc GetCLocale*(this: var Standard_CLocaleSentry): Clocale_t[]  {.importcpp: "GetCLocale".}
  ## Returns locale "C" instance (locale_t within xlocale or _locale_t
  ## within Windows) to be used for _l functions with locale argument.

proc `=`*(this: var Standard_CLocaleSentry, Standard_CLocaleSentry): Standard_CLocaleSentry  {.importcpp: "`=`".}

{.pop.} # header: "Standard_CLocaleSentry.hxx
