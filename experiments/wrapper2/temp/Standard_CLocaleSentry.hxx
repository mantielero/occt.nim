# 1 "/usr/include/opencascade/Standard_CLocaleSentry.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Standard_CLocaleSentry.hxx"
# 19 "/usr/include/opencascade/Standard_CLocaleSentry.hxx"
# 1 "/usr/include/opencascade/Standard_Macro.hxx" 1
# 20 "/usr/include/opencascade/Standard_CLocaleSentry.hxx" 2

# 1 "/usr/include/locale.h" 1 3 4
# 25 "/usr/include/locale.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 473 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 462 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 463 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 464 "/usr/include/sys/cdefs.h" 2 3 4
# 474 "/usr/include/features.h" 2 3 4
# 497 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4
# 10 "/usr/include/gnu/stubs.h" 3 4
# 1 "/usr/include/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/gnu/stubs.h" 2 3 4
# 498 "/usr/include/features.h" 2 3 4
# 26 "/usr/include/locale.h" 2 3 4


# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stddef.h" 1 3 4
# 29 "/usr/include/locale.h" 2 3 4
# 1 "/usr/include/bits/locale.h" 1 3 4
# 30 "/usr/include/locale.h" 2 3 4


# 31 "/usr/include/locale.h" 3 4
extern "C" {
# 51 "/usr/include/locale.h" 3 4
struct lconv
{


  char *decimal_point;
  char *thousands_sep;





  char *grouping;





  char *int_curr_symbol;
  char *currency_symbol;
  char *mon_decimal_point;
  char *mon_thousands_sep;
  char *mon_grouping;
  char *positive_sign;
  char *negative_sign;
  char int_frac_digits;
  char frac_digits;

  char p_cs_precedes;

  char p_sep_by_space;

  char n_cs_precedes;

  char n_sep_by_space;






  char p_sign_posn;
  char n_sign_posn;


  char int_p_cs_precedes;

  char int_p_sep_by_space;

  char int_n_cs_precedes;

  char int_n_sep_by_space;






  char int_p_sign_posn;
  char int_n_sign_posn;
# 118 "/usr/include/locale.h" 3 4
};



extern char *setlocale (int __category, const char *__locale) noexcept (true);


extern struct lconv *localeconv (void) noexcept (true);
# 135 "/usr/include/locale.h" 3 4
# 1 "/usr/include/bits/types/locale_t.h" 1 3 4
# 22 "/usr/include/bits/types/locale_t.h" 3 4
# 1 "/usr/include/bits/types/__locale_t.h" 1 3 4
# 28 "/usr/include/bits/types/__locale_t.h" 3 4
struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
};

typedef struct __locale_struct *__locale_t;
# 23 "/usr/include/bits/types/locale_t.h" 2 3 4

typedef __locale_t locale_t;
# 136 "/usr/include/locale.h" 2 3 4





extern locale_t newlocale (int __category_mask, const char *__locale,
      locale_t __base) noexcept (true);
# 176 "/usr/include/locale.h" 3 4
extern locale_t duplocale (locale_t __dataset) noexcept (true);



extern void freelocale (locale_t __dataset) noexcept (true);






extern locale_t uselocale (locale_t __dataset) noexcept (true);







}
# 22 "/usr/include/opencascade/Standard_CLocaleSentry.hxx" 2
# 56 "/usr/include/opencascade/Standard_CLocaleSentry.hxx"

# 56 "/usr/include/opencascade/Standard_CLocaleSentry.hxx"
class Standard_CLocaleSentry
{
public:


  Standard_CLocaleSentry();


  ~Standard_CLocaleSentry();

public:


  typedef locale_t clocale_t;
# 78 "/usr/include/opencascade/Standard_CLocaleSentry.hxx"
  static clocale_t GetCLocale();

private:

  void* myPrevLocale;




private:


  Standard_CLocaleSentry (const Standard_CLocaleSentry& );
  Standard_CLocaleSentry& operator= (const Standard_CLocaleSentry& );

};
