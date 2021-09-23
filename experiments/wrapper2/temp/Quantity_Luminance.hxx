# 1 "/usr/include/opencascade/Quantity_Luminance.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Quantity_Luminance.hxx"
# 20 "/usr/include/opencascade/Quantity_Luminance.hxx"
# 1 "/usr/include/opencascade/Standard_Real.hxx" 1
# 18 "/usr/include/opencascade/Standard_Real.hxx"
# 1 "/usr/include/c++/10.2.0/cmath" 1 3
# 39 "/usr/include/c++/10.2.0/cmath" 3
       
# 40 "/usr/include/c++/10.2.0/cmath" 3

# 1 "/usr/include/c++/10.2.0/x86_64-pc-linux-gnu/bits/c++config.h" 1 3
# 258 "/usr/include/c++/10.2.0/x86_64-pc-linux-gnu/bits/c++config.h" 3

# 258 "/usr/include/c++/10.2.0/x86_64-pc-linux-gnu/bits/c++config.h" 3
namespace std
{
  typedef long unsigned int size_t;
  typedef long int ptrdiff_t;


  typedef decltype(nullptr) nullptr_t;

}
# 280 "/usr/include/c++/10.2.0/x86_64-pc-linux-gnu/bits/c++config.h" 3
namespace std
{
  inline namespace __cxx11 __attribute__((__abi_tag__ ("cxx11"))) { }
}
namespace __gnu_cxx
{
  inline namespace __cxx11 __attribute__((__abi_tag__ ("cxx11"))) { }
}
# 518 "/usr/include/c++/10.2.0/x86_64-pc-linux-gnu/bits/c++config.h" 3
# 1 "/usr/include/c++/10.2.0/x86_64-pc-linux-gnu/bits/os_defines.h" 1 3
# 39 "/usr/include/c++/10.2.0/x86_64-pc-linux-gnu/bits/os_defines.h" 3
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
# 40 "/usr/include/c++/10.2.0/x86_64-pc-linux-gnu/bits/os_defines.h" 2 3
# 519 "/usr/include/c++/10.2.0/x86_64-pc-linux-gnu/bits/c++config.h" 2 3


# 1 "/usr/include/c++/10.2.0/x86_64-pc-linux-gnu/bits/cpu_defines.h" 1 3
# 522 "/usr/include/c++/10.2.0/x86_64-pc-linux-gnu/bits/c++config.h" 2 3
# 42 "/usr/include/c++/10.2.0/cmath" 2 3
# 1 "/usr/include/c++/10.2.0/bits/cpp_type_traits.h" 1 3
# 35 "/usr/include/c++/10.2.0/bits/cpp_type_traits.h" 3
       
# 36 "/usr/include/c++/10.2.0/bits/cpp_type_traits.h" 3
# 67 "/usr/include/c++/10.2.0/bits/cpp_type_traits.h" 3
extern "C++" {

namespace std __attribute__ ((__visibility__ ("default")))
{


  struct __true_type { };
  struct __false_type { };

  template<bool>
    struct __truth_type
    { typedef __false_type __type; };

  template<>
    struct __truth_type<true>
    { typedef __true_type __type; };



  template<class _Sp, class _Tp>
    struct __traitor
    {
      enum { __value = bool(_Sp::__value) || bool(_Tp::__value) };
      typedef typename __truth_type<__value>::__type __type;
    };


  template<typename, typename>
    struct __are_same
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };

  template<typename _Tp>
    struct __are_same<_Tp, _Tp>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };


  template<typename _Tp>
    struct __is_void
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };

  template<>
    struct __is_void<void>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };




  template<typename _Tp>
    struct __is_integer
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };





  template<>
    struct __is_integer<bool>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };

  template<>
    struct __is_integer<char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };

  template<>
    struct __is_integer<signed char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };

  template<>
    struct __is_integer<unsigned char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };


  template<>
    struct __is_integer<wchar_t>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
# 184 "/usr/include/c++/10.2.0/bits/cpp_type_traits.h" 3
  template<>
    struct __is_integer<char16_t>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };

  template<>
    struct __is_integer<char32_t>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };


  template<>
    struct __is_integer<short>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };

  template<>
    struct __is_integer<unsigned short>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };

  template<>
    struct __is_integer<int>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };

  template<>
    struct __is_integer<unsigned int>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };

  template<>
    struct __is_integer<long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };

  template<>
    struct __is_integer<unsigned long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };

  template<>
    struct __is_integer<long long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };

  template<>
    struct __is_integer<unsigned long long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
# 270 "/usr/include/c++/10.2.0/bits/cpp_type_traits.h" 3
template<> struct __is_integer<__int128> { enum { __value = 1 }; typedef __true_type __type; }; template<> struct __is_integer<unsigned __int128> { enum { __value = 1 }; typedef __true_type __type; };
# 287 "/usr/include/c++/10.2.0/bits/cpp_type_traits.h" 3
  template<typename _Tp>
    struct __is_floating
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };


  template<>
    struct __is_floating<float>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };

  template<>
    struct __is_floating<double>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };

  template<>
    struct __is_floating<long double>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };




  template<typename _Tp>
    struct __is_pointer
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };

  template<typename _Tp>
    struct __is_pointer<_Tp*>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };




  template<typename _Tp>
    struct __is_arithmetic
    : public __traitor<__is_integer<_Tp>, __is_floating<_Tp> >
    { };




  template<typename _Tp>
    struct __is_scalar
    : public __traitor<__is_arithmetic<_Tp>, __is_pointer<_Tp> >
    { };




  template<typename _Tp>
    struct __is_char
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };

  template<>
    struct __is_char<char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };


  template<>
    struct __is_char<wchar_t>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };


  template<typename _Tp>
    struct __is_byte
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };

  template<>
    struct __is_byte<char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };

  template<>
    struct __is_byte<signed char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };

  template<>
    struct __is_byte<unsigned char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
# 423 "/usr/include/c++/10.2.0/bits/cpp_type_traits.h" 3
  template<typename> struct iterator_traits;


  template<typename _Tp>
    struct __is_nonvolatile_trivially_copyable
    {
      enum { __value = __is_trivially_copyable(_Tp) };
    };




  template<typename _Tp>
    struct __is_nonvolatile_trivially_copyable<volatile _Tp>
    {
      enum { __value = 0 };
    };


  template<typename _OutputIter, typename _InputIter>
    struct __memcpyable
    {
      enum { __value = 0 };
    };

  template<typename _Tp>
    struct __memcpyable<_Tp*, _Tp*>
    : __is_nonvolatile_trivially_copyable<_Tp>
    { };

  template<typename _Tp>
    struct __memcpyable<_Tp*, const _Tp*>
    : __is_nonvolatile_trivially_copyable<_Tp>
    { };






  template<typename _Iter1, typename _Iter2>
    struct __memcmpable
    {
      enum { __value = 0 };
    };


  template<typename _Tp>
    struct __memcmpable<_Tp*, _Tp*>
    : __is_nonvolatile_trivially_copyable<_Tp>
    { };

  template<typename _Tp>
    struct __memcmpable<const _Tp*, _Tp*>
    : __is_nonvolatile_trivially_copyable<_Tp>
    { };

  template<typename _Tp>
    struct __memcmpable<_Tp*, const _Tp*>
    : __is_nonvolatile_trivially_copyable<_Tp>
    { };




  template<typename _Tp>
    struct __is_move_iterator
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };



  template<typename _Iterator>
   
    inline _Iterator
    __miter_base(_Iterator __it)
    { return __it; }


}
}
# 43 "/usr/include/c++/10.2.0/cmath" 2 3
# 1 "/usr/include/c++/10.2.0/ext/type_traits.h" 1 3
# 32 "/usr/include/c++/10.2.0/ext/type_traits.h" 3
       
# 33 "/usr/include/c++/10.2.0/ext/type_traits.h" 3




extern "C++" {

namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{



  template<bool, typename>
    struct __enable_if
    { };

  template<typename _Tp>
    struct __enable_if<true, _Tp>
    { typedef _Tp __type; };



  template<bool _Cond, typename _Iftrue, typename _Iffalse>
    struct __conditional_type
    { typedef _Iftrue __type; };

  template<typename _Iftrue, typename _Iffalse>
    struct __conditional_type<false, _Iftrue, _Iffalse>
    { typedef _Iffalse __type; };



  template<typename _Tp>
    struct __add_unsigned
    {
    private:
      typedef __enable_if<std::__is_integer<_Tp>::__value, _Tp> __if_type;

    public:
      typedef typename __if_type::__type __type;
    };

  template<>
    struct __add_unsigned<char>
    { typedef unsigned char __type; };

  template<>
    struct __add_unsigned<signed char>
    { typedef unsigned char __type; };

  template<>
    struct __add_unsigned<short>
    { typedef unsigned short __type; };

  template<>
    struct __add_unsigned<int>
    { typedef unsigned int __type; };

  template<>
    struct __add_unsigned<long>
    { typedef unsigned long __type; };

  template<>
    struct __add_unsigned<long long>
    { typedef unsigned long long __type; };


  template<>
    struct __add_unsigned<bool>;

  template<>
    struct __add_unsigned<wchar_t>;



  template<typename _Tp>
    struct __remove_unsigned
    {
    private:
      typedef __enable_if<std::__is_integer<_Tp>::__value, _Tp> __if_type;

    public:
      typedef typename __if_type::__type __type;
    };

  template<>
    struct __remove_unsigned<char>
    { typedef signed char __type; };

  template<>
    struct __remove_unsigned<unsigned char>
    { typedef signed char __type; };

  template<>
    struct __remove_unsigned<unsigned short>
    { typedef short __type; };

  template<>
    struct __remove_unsigned<unsigned int>
    { typedef int __type; };

  template<>
    struct __remove_unsigned<unsigned long>
    { typedef long __type; };

  template<>
    struct __remove_unsigned<unsigned long long>
    { typedef long long __type; };


  template<>
    struct __remove_unsigned<bool>;

  template<>
    struct __remove_unsigned<wchar_t>;



  template<typename _Type>
    inline bool
    __is_null_pointer(_Type* __ptr)
    { return __ptr == 0; }

  template<typename _Type>
    inline bool
    __is_null_pointer(_Type)
    { return false; }


  inline bool
  __is_null_pointer(std::nullptr_t)
  { return true; }



  template<typename _Tp, bool = std::__is_integer<_Tp>::__value>
    struct __promote
    { typedef double __type; };




  template<typename _Tp>
    struct __promote<_Tp, false>
    { };

  template<>
    struct __promote<long double>
    { typedef long double __type; };

  template<>
    struct __promote<double>
    { typedef double __type; };

  template<>
    struct __promote<float>
    { typedef float __type; };

  template<typename _Tp, typename _Up,
           typename _Tp2 = typename __promote<_Tp>::__type,
           typename _Up2 = typename __promote<_Up>::__type>
    struct __promote_2
    {
      typedef __typeof__(_Tp2() + _Up2()) __type;
    };

  template<typename _Tp, typename _Up, typename _Vp,
           typename _Tp2 = typename __promote<_Tp>::__type,
           typename _Up2 = typename __promote<_Up>::__type,
           typename _Vp2 = typename __promote<_Vp>::__type>
    struct __promote_3
    {
      typedef __typeof__(_Tp2() + _Up2() + _Vp2()) __type;
    };

  template<typename _Tp, typename _Up, typename _Vp, typename _Wp,
           typename _Tp2 = typename __promote<_Tp>::__type,
           typename _Up2 = typename __promote<_Up>::__type,
           typename _Vp2 = typename __promote<_Vp>::__type,
           typename _Wp2 = typename __promote<_Wp>::__type>
    struct __promote_4
    {
      typedef __typeof__(_Tp2() + _Up2() + _Vp2() + _Wp2()) __type;
    };


}
}
# 44 "/usr/include/c++/10.2.0/cmath" 2 3

# 1 "/usr/include/math.h" 1 3 4
# 27 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 28 "/usr/include/math.h" 2 3 4






extern "C" {


# 1 "/usr/include/bits/types.h" 1 3 4
# 27 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/bits/types.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 29 "/usr/include/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 141 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/typesizes.h" 1 3 4
# 142 "/usr/include/bits/types.h" 2 3 4
# 1 "/usr/include/bits/time64.h" 1 3 4
# 143 "/usr/include/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 38 "/usr/include/math.h" 2 3 4


# 1 "/usr/include/bits/math-vector.h" 1 3 4
# 25 "/usr/include/bits/math-vector.h" 3 4
# 1 "/usr/include/bits/libm-simd-decl-stubs.h" 1 3 4
# 26 "/usr/include/bits/math-vector.h" 2 3 4
# 41 "/usr/include/math.h" 2 3 4


# 1 "/usr/include/bits/floatn.h" 1 3 4
# 74 "/usr/include/bits/floatn.h" 3 4
typedef _Complex float __cfloat128 __attribute__ ((__mode__ (__TC__)));
# 86 "/usr/include/bits/floatn.h" 3 4
typedef __float128 _Float128;
# 119 "/usr/include/bits/floatn.h" 3 4
# 1 "/usr/include/bits/floatn-common.h" 1 3 4
# 24 "/usr/include/bits/floatn-common.h" 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 25 "/usr/include/bits/floatn-common.h" 2 3 4
# 214 "/usr/include/bits/floatn-common.h" 3 4
typedef float _Float32;
# 251 "/usr/include/bits/floatn-common.h" 3 4
typedef double _Float64;
# 268 "/usr/include/bits/floatn-common.h" 3 4
typedef double _Float32x;
# 285 "/usr/include/bits/floatn-common.h" 3 4
typedef long double _Float64x;
# 120 "/usr/include/bits/floatn.h" 2 3 4
# 44 "/usr/include/math.h" 2 3 4
# 138 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/flt-eval-method.h" 1 3 4
# 139 "/usr/include/math.h" 2 3 4
# 149 "/usr/include/math.h" 3 4
typedef float float_t;
typedef double double_t;
# 190 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/fp-logb.h" 1 3 4
# 191 "/usr/include/math.h" 2 3 4
# 233 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/fp-fast.h" 1 3 4
# 234 "/usr/include/math.h" 2 3 4



enum
  {
    FP_INT_UPWARD =

      0,
    FP_INT_DOWNWARD =

      1,
    FP_INT_TOWARDZERO =

      2,
    FP_INT_TONEARESTFROMZERO =

      3,
    FP_INT_TONEAREST =

      4,
  };
# 298 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls-helper-functions.h" 1 3 4
# 20 "/usr/include/bits/mathcalls-helper-functions.h" 3 4
extern int __fpclassify (double __value) noexcept (true)
     __attribute__ ((__const__));


extern int __signbit (double __value) noexcept (true)
     __attribute__ ((__const__));



extern int __isinf (double __value) noexcept (true)
  __attribute__ ((__const__));


extern int __finite (double __value) noexcept (true)
  __attribute__ ((__const__));


extern int __isnan (double __value) noexcept (true)
  __attribute__ ((__const__));


extern int __iseqsig (double __x, double __y) noexcept (true);


extern int __issignaling (double __value) noexcept (true)
     __attribute__ ((__const__));
# 299 "/usr/include/math.h" 2 3 4
# 1 "/usr/include/bits/mathcalls.h" 1 3 4
# 53 "/usr/include/bits/mathcalls.h" 3 4
extern double acos (double __x) noexcept (true); extern double __acos (double __x) noexcept (true);

extern double asin (double __x) noexcept (true); extern double __asin (double __x) noexcept (true);

extern double atan (double __x) noexcept (true); extern double __atan (double __x) noexcept (true);

extern double atan2 (double __y, double __x) noexcept (true); extern double __atan2 (double __y, double __x) noexcept (true);


 extern double cos (double __x) noexcept (true); extern double __cos (double __x) noexcept (true);

 extern double sin (double __x) noexcept (true); extern double __sin (double __x) noexcept (true);

extern double tan (double __x) noexcept (true); extern double __tan (double __x) noexcept (true);




extern double cosh (double __x) noexcept (true); extern double __cosh (double __x) noexcept (true);

extern double sinh (double __x) noexcept (true); extern double __sinh (double __x) noexcept (true);

extern double tanh (double __x) noexcept (true); extern double __tanh (double __x) noexcept (true);



 extern void sincos (double __x, double *__sinx, double *__cosx) noexcept (true); extern void __sincos (double __x, double *__sinx, double *__cosx) noexcept (true)
                                                        ;




extern double acosh (double __x) noexcept (true); extern double __acosh (double __x) noexcept (true);

extern double asinh (double __x) noexcept (true); extern double __asinh (double __x) noexcept (true);

extern double atanh (double __x) noexcept (true); extern double __atanh (double __x) noexcept (true);





 extern double exp (double __x) noexcept (true); extern double __exp (double __x) noexcept (true);


extern double frexp (double __x, int *__exponent) noexcept (true); extern double __frexp (double __x, int *__exponent) noexcept (true);


extern double ldexp (double __x, int __exponent) noexcept (true); extern double __ldexp (double __x, int __exponent) noexcept (true);


 extern double log (double __x) noexcept (true); extern double __log (double __x) noexcept (true);


extern double log10 (double __x) noexcept (true); extern double __log10 (double __x) noexcept (true);


extern double modf (double __x, double *__iptr) noexcept (true); extern double __modf (double __x, double *__iptr) noexcept (true) __attribute__ ((__nonnull__ (2)));



extern double exp10 (double __x) noexcept (true); extern double __exp10 (double __x) noexcept (true);




extern double expm1 (double __x) noexcept (true); extern double __expm1 (double __x) noexcept (true);


extern double log1p (double __x) noexcept (true); extern double __log1p (double __x) noexcept (true);


extern double logb (double __x) noexcept (true); extern double __logb (double __x) noexcept (true);




extern double exp2 (double __x) noexcept (true); extern double __exp2 (double __x) noexcept (true);


extern double log2 (double __x) noexcept (true); extern double __log2 (double __x) noexcept (true);






 extern double pow (double __x, double __y) noexcept (true); extern double __pow (double __x, double __y) noexcept (true);


extern double sqrt (double __x) noexcept (true); extern double __sqrt (double __x) noexcept (true);



extern double hypot (double __x, double __y) noexcept (true); extern double __hypot (double __x, double __y) noexcept (true);




extern double cbrt (double __x) noexcept (true); extern double __cbrt (double __x) noexcept (true);






extern double ceil (double __x) noexcept (true) __attribute__ ((__const__)); extern double __ceil (double __x) noexcept (true) __attribute__ ((__const__));


extern double fabs (double __x) noexcept (true) __attribute__ ((__const__)); extern double __fabs (double __x) noexcept (true) __attribute__ ((__const__));


extern double floor (double __x) noexcept (true) __attribute__ ((__const__)); extern double __floor (double __x) noexcept (true) __attribute__ ((__const__));


extern double fmod (double __x, double __y) noexcept (true); extern double __fmod (double __x, double __y) noexcept (true);
# 183 "/usr/include/bits/mathcalls.h" 3 4
extern int finite (double __value) noexcept (true)
  __attribute__ ((__const__));


extern double drem (double __x, double __y) noexcept (true); extern double __drem (double __x, double __y) noexcept (true);



extern double significand (double __x) noexcept (true); extern double __significand (double __x) noexcept (true);






extern double copysign (double __x, double __y) noexcept (true) __attribute__ ((__const__)); extern double __copysign (double __x, double __y) noexcept (true) __attribute__ ((__const__));




extern double nan (const char *__tagb) noexcept (true); extern double __nan (const char *__tagb) noexcept (true);
# 220 "/usr/include/bits/mathcalls.h" 3 4
extern double j0 (double) noexcept (true); extern double __j0 (double) noexcept (true);
extern double j1 (double) noexcept (true); extern double __j1 (double) noexcept (true);
extern double jn (int, double) noexcept (true); extern double __jn (int, double) noexcept (true);
extern double y0 (double) noexcept (true); extern double __y0 (double) noexcept (true);
extern double y1 (double) noexcept (true); extern double __y1 (double) noexcept (true);
extern double yn (int, double) noexcept (true); extern double __yn (int, double) noexcept (true);





extern double erf (double) noexcept (true); extern double __erf (double) noexcept (true);
extern double erfc (double) noexcept (true); extern double __erfc (double) noexcept (true);
extern double lgamma (double) noexcept (true); extern double __lgamma (double) noexcept (true);




extern double tgamma (double) noexcept (true); extern double __tgamma (double) noexcept (true);





extern double gamma (double) noexcept (true); extern double __gamma (double) noexcept (true);







extern double lgamma_r (double, int *__signgamp) noexcept (true); extern double __lgamma_r (double, int *__signgamp) noexcept (true);






extern double rint (double __x) noexcept (true); extern double __rint (double __x) noexcept (true);


extern double nextafter (double __x, double __y) noexcept (true); extern double __nextafter (double __x, double __y) noexcept (true);

extern double nexttoward (double __x, long double __y) noexcept (true); extern double __nexttoward (double __x, long double __y) noexcept (true);




extern double nextdown (double __x) noexcept (true); extern double __nextdown (double __x) noexcept (true);

extern double nextup (double __x) noexcept (true); extern double __nextup (double __x) noexcept (true);



extern double remainder (double __x, double __y) noexcept (true); extern double __remainder (double __x, double __y) noexcept (true);



extern double scalbn (double __x, int __n) noexcept (true); extern double __scalbn (double __x, int __n) noexcept (true);



extern int ilogb (double __x) noexcept (true); extern int __ilogb (double __x) noexcept (true);




extern long int llogb (double __x) noexcept (true); extern long int __llogb (double __x) noexcept (true);




extern double scalbln (double __x, long int __n) noexcept (true); extern double __scalbln (double __x, long int __n) noexcept (true);



extern double nearbyint (double __x) noexcept (true); extern double __nearbyint (double __x) noexcept (true);



extern double round (double __x) noexcept (true) __attribute__ ((__const__)); extern double __round (double __x) noexcept (true) __attribute__ ((__const__));



extern double trunc (double __x) noexcept (true) __attribute__ ((__const__)); extern double __trunc (double __x) noexcept (true) __attribute__ ((__const__));




extern double remquo (double __x, double __y, int *__quo) noexcept (true); extern double __remquo (double __x, double __y, int *__quo) noexcept (true);






extern long int lrint (double __x) noexcept (true); extern long int __lrint (double __x) noexcept (true);
__extension__
extern long long int llrint (double __x) noexcept (true); extern long long int __llrint (double __x) noexcept (true);



extern long int lround (double __x) noexcept (true); extern long int __lround (double __x) noexcept (true);
__extension__
extern long long int llround (double __x) noexcept (true); extern long long int __llround (double __x) noexcept (true);



extern double fdim (double __x, double __y) noexcept (true); extern double __fdim (double __x, double __y) noexcept (true);


extern double fmax (double __x, double __y) noexcept (true) __attribute__ ((__const__)); extern double __fmax (double __x, double __y) noexcept (true) __attribute__ ((__const__));


extern double fmin (double __x, double __y) noexcept (true) __attribute__ ((__const__)); extern double __fmin (double __x, double __y) noexcept (true) __attribute__ ((__const__));


extern double fma (double __x, double __y, double __z) noexcept (true); extern double __fma (double __x, double __y, double __z) noexcept (true);




extern double roundeven (double __x) noexcept (true) __attribute__ ((__const__)); extern double __roundeven (double __x) noexcept (true) __attribute__ ((__const__));



extern __intmax_t fromfp (double __x, int __round, unsigned int __width) noexcept (true); extern __intmax_t __fromfp (double __x, int __round, unsigned int __width) noexcept (true)
                            ;



extern __uintmax_t ufromfp (double __x, int __round, unsigned int __width) noexcept (true); extern __uintmax_t __ufromfp (double __x, int __round, unsigned int __width) noexcept (true)
                              ;




extern __intmax_t fromfpx (double __x, int __round, unsigned int __width) noexcept (true); extern __intmax_t __fromfpx (double __x, int __round, unsigned int __width) noexcept (true)
                             ;




extern __uintmax_t ufromfpx (double __x, int __round, unsigned int __width) noexcept (true); extern __uintmax_t __ufromfpx (double __x, int __round, unsigned int __width) noexcept (true)
                               ;


extern double fmaxmag (double __x, double __y) noexcept (true) __attribute__ ((__const__)); extern double __fmaxmag (double __x, double __y) noexcept (true) __attribute__ ((__const__));


extern double fminmag (double __x, double __y) noexcept (true) __attribute__ ((__const__)); extern double __fminmag (double __x, double __y) noexcept (true) __attribute__ ((__const__));


extern int canonicalize (double *__cx, const double *__x) noexcept (true);




extern int totalorder (const double *__x, const double *__y) noexcept (true)

     __attribute__ ((__pure__));


extern int totalordermag (const double *__x, const double *__y) noexcept (true)

     __attribute__ ((__pure__));


extern double getpayload (const double *__x) noexcept (true); extern double __getpayload (const double *__x) noexcept (true);


extern int setpayload (double *__x, double __payload) noexcept (true);


extern int setpayloadsig (double *__x, double __payload) noexcept (true);







extern double scalb (double __x, double __n) noexcept (true); extern double __scalb (double __x, double __n) noexcept (true);
# 300 "/usr/include/math.h" 2 3 4
# 315 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls-helper-functions.h" 1 3 4
# 20 "/usr/include/bits/mathcalls-helper-functions.h" 3 4
extern int __fpclassifyf (float __value) noexcept (true)
     __attribute__ ((__const__));


extern int __signbitf (float __value) noexcept (true)
     __attribute__ ((__const__));



extern int __isinff (float __value) noexcept (true)
  __attribute__ ((__const__));


extern int __finitef (float __value) noexcept (true)
  __attribute__ ((__const__));


extern int __isnanf (float __value) noexcept (true)
  __attribute__ ((__const__));


extern int __iseqsigf (float __x, float __y) noexcept (true);


extern int __issignalingf (float __value) noexcept (true)
     __attribute__ ((__const__));
# 316 "/usr/include/math.h" 2 3 4
# 1 "/usr/include/bits/mathcalls.h" 1 3 4
# 53 "/usr/include/bits/mathcalls.h" 3 4
extern float acosf (float __x) noexcept (true); extern float __acosf (float __x) noexcept (true);

extern float asinf (float __x) noexcept (true); extern float __asinf (float __x) noexcept (true);

extern float atanf (float __x) noexcept (true); extern float __atanf (float __x) noexcept (true);

extern float atan2f (float __y, float __x) noexcept (true); extern float __atan2f (float __y, float __x) noexcept (true);


 extern float cosf (float __x) noexcept (true); extern float __cosf (float __x) noexcept (true);

 extern float sinf (float __x) noexcept (true); extern float __sinf (float __x) noexcept (true);

extern float tanf (float __x) noexcept (true); extern float __tanf (float __x) noexcept (true);




extern float coshf (float __x) noexcept (true); extern float __coshf (float __x) noexcept (true);

extern float sinhf (float __x) noexcept (true); extern float __sinhf (float __x) noexcept (true);

extern float tanhf (float __x) noexcept (true); extern float __tanhf (float __x) noexcept (true);



 extern void sincosf (float __x, float *__sinx, float *__cosx) noexcept (true); extern void __sincosf (float __x, float *__sinx, float *__cosx) noexcept (true)
                                                        ;




extern float acoshf (float __x) noexcept (true); extern float __acoshf (float __x) noexcept (true);

extern float asinhf (float __x) noexcept (true); extern float __asinhf (float __x) noexcept (true);

extern float atanhf (float __x) noexcept (true); extern float __atanhf (float __x) noexcept (true);





 extern float expf (float __x) noexcept (true); extern float __expf (float __x) noexcept (true);


extern float frexpf (float __x, int *__exponent) noexcept (true); extern float __frexpf (float __x, int *__exponent) noexcept (true);


extern float ldexpf (float __x, int __exponent) noexcept (true); extern float __ldexpf (float __x, int __exponent) noexcept (true);


 extern float logf (float __x) noexcept (true); extern float __logf (float __x) noexcept (true);


extern float log10f (float __x) noexcept (true); extern float __log10f (float __x) noexcept (true);


extern float modff (float __x, float *__iptr) noexcept (true); extern float __modff (float __x, float *__iptr) noexcept (true) __attribute__ ((__nonnull__ (2)));



extern float exp10f (float __x) noexcept (true); extern float __exp10f (float __x) noexcept (true);




extern float expm1f (float __x) noexcept (true); extern float __expm1f (float __x) noexcept (true);


extern float log1pf (float __x) noexcept (true); extern float __log1pf (float __x) noexcept (true);


extern float logbf (float __x) noexcept (true); extern float __logbf (float __x) noexcept (true);




extern float exp2f (float __x) noexcept (true); extern float __exp2f (float __x) noexcept (true);


extern float log2f (float __x) noexcept (true); extern float __log2f (float __x) noexcept (true);






 extern float powf (float __x, float __y) noexcept (true); extern float __powf (float __x, float __y) noexcept (true);


extern float sqrtf (float __x) noexcept (true); extern float __sqrtf (float __x) noexcept (true);



extern float hypotf (float __x, float __y) noexcept (true); extern float __hypotf (float __x, float __y) noexcept (true);




extern float cbrtf (float __x) noexcept (true); extern float __cbrtf (float __x) noexcept (true);






extern float ceilf (float __x) noexcept (true) __attribute__ ((__const__)); extern float __ceilf (float __x) noexcept (true) __attribute__ ((__const__));


extern float fabsf (float __x) noexcept (true) __attribute__ ((__const__)); extern float __fabsf (float __x) noexcept (true) __attribute__ ((__const__));


extern float floorf (float __x) noexcept (true) __attribute__ ((__const__)); extern float __floorf (float __x) noexcept (true) __attribute__ ((__const__));


extern float fmodf (float __x, float __y) noexcept (true); extern float __fmodf (float __x, float __y) noexcept (true);
# 177 "/usr/include/bits/mathcalls.h" 3 4
extern int isinff (float __value) noexcept (true)
  __attribute__ ((__const__));




extern int finitef (float __value) noexcept (true)
  __attribute__ ((__const__));


extern float dremf (float __x, float __y) noexcept (true); extern float __dremf (float __x, float __y) noexcept (true);



extern float significandf (float __x) noexcept (true); extern float __significandf (float __x) noexcept (true);






extern float copysignf (float __x, float __y) noexcept (true) __attribute__ ((__const__)); extern float __copysignf (float __x, float __y) noexcept (true) __attribute__ ((__const__));




extern float nanf (const char *__tagb) noexcept (true); extern float __nanf (const char *__tagb) noexcept (true);
# 213 "/usr/include/bits/mathcalls.h" 3 4
extern int isnanf (float __value) noexcept (true)
  __attribute__ ((__const__));





extern float j0f (float) noexcept (true); extern float __j0f (float) noexcept (true);
extern float j1f (float) noexcept (true); extern float __j1f (float) noexcept (true);
extern float jnf (int, float) noexcept (true); extern float __jnf (int, float) noexcept (true);
extern float y0f (float) noexcept (true); extern float __y0f (float) noexcept (true);
extern float y1f (float) noexcept (true); extern float __y1f (float) noexcept (true);
extern float ynf (int, float) noexcept (true); extern float __ynf (int, float) noexcept (true);





extern float erff (float) noexcept (true); extern float __erff (float) noexcept (true);
extern float erfcf (float) noexcept (true); extern float __erfcf (float) noexcept (true);
extern float lgammaf (float) noexcept (true); extern float __lgammaf (float) noexcept (true);




extern float tgammaf (float) noexcept (true); extern float __tgammaf (float) noexcept (true);





extern float gammaf (float) noexcept (true); extern float __gammaf (float) noexcept (true);







extern float lgammaf_r (float, int *__signgamp) noexcept (true); extern float __lgammaf_r (float, int *__signgamp) noexcept (true);






extern float rintf (float __x) noexcept (true); extern float __rintf (float __x) noexcept (true);


extern float nextafterf (float __x, float __y) noexcept (true); extern float __nextafterf (float __x, float __y) noexcept (true);

extern float nexttowardf (float __x, long double __y) noexcept (true); extern float __nexttowardf (float __x, long double __y) noexcept (true);




extern float nextdownf (float __x) noexcept (true); extern float __nextdownf (float __x) noexcept (true);

extern float nextupf (float __x) noexcept (true); extern float __nextupf (float __x) noexcept (true);



extern float remainderf (float __x, float __y) noexcept (true); extern float __remainderf (float __x, float __y) noexcept (true);



extern float scalbnf (float __x, int __n) noexcept (true); extern float __scalbnf (float __x, int __n) noexcept (true);



extern int ilogbf (float __x) noexcept (true); extern int __ilogbf (float __x) noexcept (true);




extern long int llogbf (float __x) noexcept (true); extern long int __llogbf (float __x) noexcept (true);




extern float scalblnf (float __x, long int __n) noexcept (true); extern float __scalblnf (float __x, long int __n) noexcept (true);



extern float nearbyintf (float __x) noexcept (true); extern float __nearbyintf (float __x) noexcept (true);



extern float roundf (float __x) noexcept (true) __attribute__ ((__const__)); extern float __roundf (float __x) noexcept (true) __attribute__ ((__const__));



extern float truncf (float __x) noexcept (true) __attribute__ ((__const__)); extern float __truncf (float __x) noexcept (true) __attribute__ ((__const__));




extern float remquof (float __x, float __y, int *__quo) noexcept (true); extern float __remquof (float __x, float __y, int *__quo) noexcept (true);






extern long int lrintf (float __x) noexcept (true); extern long int __lrintf (float __x) noexcept (true);
__extension__
extern long long int llrintf (float __x) noexcept (true); extern long long int __llrintf (float __x) noexcept (true);



extern long int lroundf (float __x) noexcept (true); extern long int __lroundf (float __x) noexcept (true);
__extension__
extern long long int llroundf (float __x) noexcept (true); extern long long int __llroundf (float __x) noexcept (true);



extern float fdimf (float __x, float __y) noexcept (true); extern float __fdimf (float __x, float __y) noexcept (true);


extern float fmaxf (float __x, float __y) noexcept (true) __attribute__ ((__const__)); extern float __fmaxf (float __x, float __y) noexcept (true) __attribute__ ((__const__));


extern float fminf (float __x, float __y) noexcept (true) __attribute__ ((__const__)); extern float __fminf (float __x, float __y) noexcept (true) __attribute__ ((__const__));


extern float fmaf (float __x, float __y, float __z) noexcept (true); extern float __fmaf (float __x, float __y, float __z) noexcept (true);




extern float roundevenf (float __x) noexcept (true) __attribute__ ((__const__)); extern float __roundevenf (float __x) noexcept (true) __attribute__ ((__const__));



extern __intmax_t fromfpf (float __x, int __round, unsigned int __width) noexcept (true); extern __intmax_t __fromfpf (float __x, int __round, unsigned int __width) noexcept (true)
                            ;



extern __uintmax_t ufromfpf (float __x, int __round, unsigned int __width) noexcept (true); extern __uintmax_t __ufromfpf (float __x, int __round, unsigned int __width) noexcept (true)
                              ;




extern __intmax_t fromfpxf (float __x, int __round, unsigned int __width) noexcept (true); extern __intmax_t __fromfpxf (float __x, int __round, unsigned int __width) noexcept (true)
                             ;




extern __uintmax_t ufromfpxf (float __x, int __round, unsigned int __width) noexcept (true); extern __uintmax_t __ufromfpxf (float __x, int __round, unsigned int __width) noexcept (true)
                               ;


extern float fmaxmagf (float __x, float __y) noexcept (true) __attribute__ ((__const__)); extern float __fmaxmagf (float __x, float __y) noexcept (true) __attribute__ ((__const__));


extern float fminmagf (float __x, float __y) noexcept (true) __attribute__ ((__const__)); extern float __fminmagf (float __x, float __y) noexcept (true) __attribute__ ((__const__));


extern int canonicalizef (float *__cx, const float *__x) noexcept (true);




extern int totalorderf (const float *__x, const float *__y) noexcept (true)

     __attribute__ ((__pure__));


extern int totalordermagf (const float *__x, const float *__y) noexcept (true)

     __attribute__ ((__pure__));


extern float getpayloadf (const float *__x) noexcept (true); extern float __getpayloadf (const float *__x) noexcept (true);


extern int setpayloadf (float *__x, float __payload) noexcept (true);


extern int setpayloadsigf (float *__x, float __payload) noexcept (true);







extern float scalbf (float __x, float __n) noexcept (true); extern float __scalbf (float __x, float __n) noexcept (true);
# 317 "/usr/include/math.h" 2 3 4
# 384 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls-helper-functions.h" 1 3 4
# 20 "/usr/include/bits/mathcalls-helper-functions.h" 3 4
extern int __fpclassifyl (long double __value) noexcept (true)
     __attribute__ ((__const__));


extern int __signbitl (long double __value) noexcept (true)
     __attribute__ ((__const__));



extern int __isinfl (long double __value) noexcept (true)
  __attribute__ ((__const__));


extern int __finitel (long double __value) noexcept (true)
  __attribute__ ((__const__));


extern int __isnanl (long double __value) noexcept (true)
  __attribute__ ((__const__));


extern int __iseqsigl (long double __x, long double __y) noexcept (true);


extern int __issignalingl (long double __value) noexcept (true)
     __attribute__ ((__const__));
# 385 "/usr/include/math.h" 2 3 4
# 1 "/usr/include/bits/mathcalls.h" 1 3 4
# 53 "/usr/include/bits/mathcalls.h" 3 4
extern long double acosl (long double __x) noexcept (true); extern long double __acosl (long double __x) noexcept (true);

extern long double asinl (long double __x) noexcept (true); extern long double __asinl (long double __x) noexcept (true);

extern long double atanl (long double __x) noexcept (true); extern long double __atanl (long double __x) noexcept (true);

extern long double atan2l (long double __y, long double __x) noexcept (true); extern long double __atan2l (long double __y, long double __x) noexcept (true);


 extern long double cosl (long double __x) noexcept (true); extern long double __cosl (long double __x) noexcept (true);

 extern long double sinl (long double __x) noexcept (true); extern long double __sinl (long double __x) noexcept (true);

extern long double tanl (long double __x) noexcept (true); extern long double __tanl (long double __x) noexcept (true);




extern long double coshl (long double __x) noexcept (true); extern long double __coshl (long double __x) noexcept (true);

extern long double sinhl (long double __x) noexcept (true); extern long double __sinhl (long double __x) noexcept (true);

extern long double tanhl (long double __x) noexcept (true); extern long double __tanhl (long double __x) noexcept (true);



 extern void sincosl (long double __x, long double *__sinx, long double *__cosx) noexcept (true); extern void __sincosl (long double __x, long double *__sinx, long double *__cosx) noexcept (true)
                                                        ;




extern long double acoshl (long double __x) noexcept (true); extern long double __acoshl (long double __x) noexcept (true);

extern long double asinhl (long double __x) noexcept (true); extern long double __asinhl (long double __x) noexcept (true);

extern long double atanhl (long double __x) noexcept (true); extern long double __atanhl (long double __x) noexcept (true);





 extern long double expl (long double __x) noexcept (true); extern long double __expl (long double __x) noexcept (true);


extern long double frexpl (long double __x, int *__exponent) noexcept (true); extern long double __frexpl (long double __x, int *__exponent) noexcept (true);


extern long double ldexpl (long double __x, int __exponent) noexcept (true); extern long double __ldexpl (long double __x, int __exponent) noexcept (true);


 extern long double logl (long double __x) noexcept (true); extern long double __logl (long double __x) noexcept (true);


extern long double log10l (long double __x) noexcept (true); extern long double __log10l (long double __x) noexcept (true);


extern long double modfl (long double __x, long double *__iptr) noexcept (true); extern long double __modfl (long double __x, long double *__iptr) noexcept (true) __attribute__ ((__nonnull__ (2)));



extern long double exp10l (long double __x) noexcept (true); extern long double __exp10l (long double __x) noexcept (true);




extern long double expm1l (long double __x) noexcept (true); extern long double __expm1l (long double __x) noexcept (true);


extern long double log1pl (long double __x) noexcept (true); extern long double __log1pl (long double __x) noexcept (true);


extern long double logbl (long double __x) noexcept (true); extern long double __logbl (long double __x) noexcept (true);




extern long double exp2l (long double __x) noexcept (true); extern long double __exp2l (long double __x) noexcept (true);


extern long double log2l (long double __x) noexcept (true); extern long double __log2l (long double __x) noexcept (true);






 extern long double powl (long double __x, long double __y) noexcept (true); extern long double __powl (long double __x, long double __y) noexcept (true);


extern long double sqrtl (long double __x) noexcept (true); extern long double __sqrtl (long double __x) noexcept (true);



extern long double hypotl (long double __x, long double __y) noexcept (true); extern long double __hypotl (long double __x, long double __y) noexcept (true);




extern long double cbrtl (long double __x) noexcept (true); extern long double __cbrtl (long double __x) noexcept (true);






extern long double ceill (long double __x) noexcept (true) __attribute__ ((__const__)); extern long double __ceill (long double __x) noexcept (true) __attribute__ ((__const__));


extern long double fabsl (long double __x) noexcept (true) __attribute__ ((__const__)); extern long double __fabsl (long double __x) noexcept (true) __attribute__ ((__const__));


extern long double floorl (long double __x) noexcept (true) __attribute__ ((__const__)); extern long double __floorl (long double __x) noexcept (true) __attribute__ ((__const__));


extern long double fmodl (long double __x, long double __y) noexcept (true); extern long double __fmodl (long double __x, long double __y) noexcept (true);
# 177 "/usr/include/bits/mathcalls.h" 3 4
extern int isinfl (long double __value) noexcept (true)
  __attribute__ ((__const__));




extern int finitel (long double __value) noexcept (true)
  __attribute__ ((__const__));


extern long double dreml (long double __x, long double __y) noexcept (true); extern long double __dreml (long double __x, long double __y) noexcept (true);



extern long double significandl (long double __x) noexcept (true); extern long double __significandl (long double __x) noexcept (true);






extern long double copysignl (long double __x, long double __y) noexcept (true) __attribute__ ((__const__)); extern long double __copysignl (long double __x, long double __y) noexcept (true) __attribute__ ((__const__));




extern long double nanl (const char *__tagb) noexcept (true); extern long double __nanl (const char *__tagb) noexcept (true);
# 213 "/usr/include/bits/mathcalls.h" 3 4
extern int isnanl (long double __value) noexcept (true)
  __attribute__ ((__const__));





extern long double j0l (long double) noexcept (true); extern long double __j0l (long double) noexcept (true);
extern long double j1l (long double) noexcept (true); extern long double __j1l (long double) noexcept (true);
extern long double jnl (int, long double) noexcept (true); extern long double __jnl (int, long double) noexcept (true);
extern long double y0l (long double) noexcept (true); extern long double __y0l (long double) noexcept (true);
extern long double y1l (long double) noexcept (true); extern long double __y1l (long double) noexcept (true);
extern long double ynl (int, long double) noexcept (true); extern long double __ynl (int, long double) noexcept (true);





extern long double erfl (long double) noexcept (true); extern long double __erfl (long double) noexcept (true);
extern long double erfcl (long double) noexcept (true); extern long double __erfcl (long double) noexcept (true);
extern long double lgammal (long double) noexcept (true); extern long double __lgammal (long double) noexcept (true);




extern long double tgammal (long double) noexcept (true); extern long double __tgammal (long double) noexcept (true);





extern long double gammal (long double) noexcept (true); extern long double __gammal (long double) noexcept (true);







extern long double lgammal_r (long double, int *__signgamp) noexcept (true); extern long double __lgammal_r (long double, int *__signgamp) noexcept (true);






extern long double rintl (long double __x) noexcept (true); extern long double __rintl (long double __x) noexcept (true);


extern long double nextafterl (long double __x, long double __y) noexcept (true); extern long double __nextafterl (long double __x, long double __y) noexcept (true);

extern long double nexttowardl (long double __x, long double __y) noexcept (true); extern long double __nexttowardl (long double __x, long double __y) noexcept (true);




extern long double nextdownl (long double __x) noexcept (true); extern long double __nextdownl (long double __x) noexcept (true);

extern long double nextupl (long double __x) noexcept (true); extern long double __nextupl (long double __x) noexcept (true);



extern long double remainderl (long double __x, long double __y) noexcept (true); extern long double __remainderl (long double __x, long double __y) noexcept (true);



extern long double scalbnl (long double __x, int __n) noexcept (true); extern long double __scalbnl (long double __x, int __n) noexcept (true);



extern int ilogbl (long double __x) noexcept (true); extern int __ilogbl (long double __x) noexcept (true);




extern long int llogbl (long double __x) noexcept (true); extern long int __llogbl (long double __x) noexcept (true);




extern long double scalblnl (long double __x, long int __n) noexcept (true); extern long double __scalblnl (long double __x, long int __n) noexcept (true);



extern long double nearbyintl (long double __x) noexcept (true); extern long double __nearbyintl (long double __x) noexcept (true);



extern long double roundl (long double __x) noexcept (true) __attribute__ ((__const__)); extern long double __roundl (long double __x) noexcept (true) __attribute__ ((__const__));



extern long double truncl (long double __x) noexcept (true) __attribute__ ((__const__)); extern long double __truncl (long double __x) noexcept (true) __attribute__ ((__const__));




extern long double remquol (long double __x, long double __y, int *__quo) noexcept (true); extern long double __remquol (long double __x, long double __y, int *__quo) noexcept (true);






extern long int lrintl (long double __x) noexcept (true); extern long int __lrintl (long double __x) noexcept (true);
__extension__
extern long long int llrintl (long double __x) noexcept (true); extern long long int __llrintl (long double __x) noexcept (true);



extern long int lroundl (long double __x) noexcept (true); extern long int __lroundl (long double __x) noexcept (true);
__extension__
extern long long int llroundl (long double __x) noexcept (true); extern long long int __llroundl (long double __x) noexcept (true);



extern long double fdiml (long double __x, long double __y) noexcept (true); extern long double __fdiml (long double __x, long double __y) noexcept (true);


extern long double fmaxl (long double __x, long double __y) noexcept (true) __attribute__ ((__const__)); extern long double __fmaxl (long double __x, long double __y) noexcept (true) __attribute__ ((__const__));


extern long double fminl (long double __x, long double __y) noexcept (true) __attribute__ ((__const__)); extern long double __fminl (long double __x, long double __y) noexcept (true) __attribute__ ((__const__));


extern long double fmal (long double __x, long double __y, long double __z) noexcept (true); extern long double __fmal (long double __x, long double __y, long double __z) noexcept (true);




extern long double roundevenl (long double __x) noexcept (true) __attribute__ ((__const__)); extern long double __roundevenl (long double __x) noexcept (true) __attribute__ ((__const__));



extern __intmax_t fromfpl (long double __x, int __round, unsigned int __width) noexcept (true); extern __intmax_t __fromfpl (long double __x, int __round, unsigned int __width) noexcept (true)
                            ;



extern __uintmax_t ufromfpl (long double __x, int __round, unsigned int __width) noexcept (true); extern __uintmax_t __ufromfpl (long double __x, int __round, unsigned int __width) noexcept (true)
                              ;




extern __intmax_t fromfpxl (long double __x, int __round, unsigned int __width) noexcept (true); extern __intmax_t __fromfpxl (long double __x, int __round, unsigned int __width) noexcept (true)
                             ;




extern __uintmax_t ufromfpxl (long double __x, int __round, unsigned int __width) noexcept (true); extern __uintmax_t __ufromfpxl (long double __x, int __round, unsigned int __width) noexcept (true)
                               ;


extern long double fmaxmagl (long double __x, long double __y) noexcept (true) __attribute__ ((__const__)); extern long double __fmaxmagl (long double __x, long double __y) noexcept (true) __attribute__ ((__const__));


extern long double fminmagl (long double __x, long double __y) noexcept (true) __attribute__ ((__const__)); extern long double __fminmagl (long double __x, long double __y) noexcept (true) __attribute__ ((__const__));


extern int canonicalizel (long double *__cx, const long double *__x) noexcept (true);




extern int totalorderl (const long double *__x, const long double *__y) noexcept (true)

     __attribute__ ((__pure__));


extern int totalordermagl (const long double *__x, const long double *__y) noexcept (true)

     __attribute__ ((__pure__));


extern long double getpayloadl (const long double *__x) noexcept (true); extern long double __getpayloadl (const long double *__x) noexcept (true);


extern int setpayloadl (long double *__x, long double __payload) noexcept (true);


extern int setpayloadsigl (long double *__x, long double __payload) noexcept (true);







extern long double scalbl (long double __x, long double __n) noexcept (true); extern long double __scalbl (long double __x, long double __n) noexcept (true);
# 386 "/usr/include/math.h" 2 3 4
# 436 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls.h" 1 3 4
# 53 "/usr/include/bits/mathcalls.h" 3 4
extern _Float32 acosf32 (_Float32 __x) noexcept (true); extern _Float32 __acosf32 (_Float32 __x) noexcept (true);

extern _Float32 asinf32 (_Float32 __x) noexcept (true); extern _Float32 __asinf32 (_Float32 __x) noexcept (true);

extern _Float32 atanf32 (_Float32 __x) noexcept (true); extern _Float32 __atanf32 (_Float32 __x) noexcept (true);

extern _Float32 atan2f32 (_Float32 __y, _Float32 __x) noexcept (true); extern _Float32 __atan2f32 (_Float32 __y, _Float32 __x) noexcept (true);


 extern _Float32 cosf32 (_Float32 __x) noexcept (true); extern _Float32 __cosf32 (_Float32 __x) noexcept (true);

 extern _Float32 sinf32 (_Float32 __x) noexcept (true); extern _Float32 __sinf32 (_Float32 __x) noexcept (true);

extern _Float32 tanf32 (_Float32 __x) noexcept (true); extern _Float32 __tanf32 (_Float32 __x) noexcept (true);




extern _Float32 coshf32 (_Float32 __x) noexcept (true); extern _Float32 __coshf32 (_Float32 __x) noexcept (true);

extern _Float32 sinhf32 (_Float32 __x) noexcept (true); extern _Float32 __sinhf32 (_Float32 __x) noexcept (true);

extern _Float32 tanhf32 (_Float32 __x) noexcept (true); extern _Float32 __tanhf32 (_Float32 __x) noexcept (true);



 extern void sincosf32 (_Float32 __x, _Float32 *__sinx, _Float32 *__cosx) noexcept (true); extern void __sincosf32 (_Float32 __x, _Float32 *__sinx, _Float32 *__cosx) noexcept (true)
                                                        ;




extern _Float32 acoshf32 (_Float32 __x) noexcept (true); extern _Float32 __acoshf32 (_Float32 __x) noexcept (true);

extern _Float32 asinhf32 (_Float32 __x) noexcept (true); extern _Float32 __asinhf32 (_Float32 __x) noexcept (true);

extern _Float32 atanhf32 (_Float32 __x) noexcept (true); extern _Float32 __atanhf32 (_Float32 __x) noexcept (true);





 extern _Float32 expf32 (_Float32 __x) noexcept (true); extern _Float32 __expf32 (_Float32 __x) noexcept (true);


extern _Float32 frexpf32 (_Float32 __x, int *__exponent) noexcept (true); extern _Float32 __frexpf32 (_Float32 __x, int *__exponent) noexcept (true);


extern _Float32 ldexpf32 (_Float32 __x, int __exponent) noexcept (true); extern _Float32 __ldexpf32 (_Float32 __x, int __exponent) noexcept (true);


 extern _Float32 logf32 (_Float32 __x) noexcept (true); extern _Float32 __logf32 (_Float32 __x) noexcept (true);


extern _Float32 log10f32 (_Float32 __x) noexcept (true); extern _Float32 __log10f32 (_Float32 __x) noexcept (true);


extern _Float32 modff32 (_Float32 __x, _Float32 *__iptr) noexcept (true); extern _Float32 __modff32 (_Float32 __x, _Float32 *__iptr) noexcept (true) __attribute__ ((__nonnull__ (2)));



extern _Float32 exp10f32 (_Float32 __x) noexcept (true); extern _Float32 __exp10f32 (_Float32 __x) noexcept (true);




extern _Float32 expm1f32 (_Float32 __x) noexcept (true); extern _Float32 __expm1f32 (_Float32 __x) noexcept (true);


extern _Float32 log1pf32 (_Float32 __x) noexcept (true); extern _Float32 __log1pf32 (_Float32 __x) noexcept (true);


extern _Float32 logbf32 (_Float32 __x) noexcept (true); extern _Float32 __logbf32 (_Float32 __x) noexcept (true);




extern _Float32 exp2f32 (_Float32 __x) noexcept (true); extern _Float32 __exp2f32 (_Float32 __x) noexcept (true);


extern _Float32 log2f32 (_Float32 __x) noexcept (true); extern _Float32 __log2f32 (_Float32 __x) noexcept (true);






 extern _Float32 powf32 (_Float32 __x, _Float32 __y) noexcept (true); extern _Float32 __powf32 (_Float32 __x, _Float32 __y) noexcept (true);


extern _Float32 sqrtf32 (_Float32 __x) noexcept (true); extern _Float32 __sqrtf32 (_Float32 __x) noexcept (true);



extern _Float32 hypotf32 (_Float32 __x, _Float32 __y) noexcept (true); extern _Float32 __hypotf32 (_Float32 __x, _Float32 __y) noexcept (true);




extern _Float32 cbrtf32 (_Float32 __x) noexcept (true); extern _Float32 __cbrtf32 (_Float32 __x) noexcept (true);






extern _Float32 ceilf32 (_Float32 __x) noexcept (true) __attribute__ ((__const__)); extern _Float32 __ceilf32 (_Float32 __x) noexcept (true) __attribute__ ((__const__));


extern _Float32 fabsf32 (_Float32 __x) noexcept (true) __attribute__ ((__const__)); extern _Float32 __fabsf32 (_Float32 __x) noexcept (true) __attribute__ ((__const__));


extern _Float32 floorf32 (_Float32 __x) noexcept (true) __attribute__ ((__const__)); extern _Float32 __floorf32 (_Float32 __x) noexcept (true) __attribute__ ((__const__));


extern _Float32 fmodf32 (_Float32 __x, _Float32 __y) noexcept (true); extern _Float32 __fmodf32 (_Float32 __x, _Float32 __y) noexcept (true);
# 198 "/usr/include/bits/mathcalls.h" 3 4
extern _Float32 copysignf32 (_Float32 __x, _Float32 __y) noexcept (true) __attribute__ ((__const__)); extern _Float32 __copysignf32 (_Float32 __x, _Float32 __y) noexcept (true) __attribute__ ((__const__));




extern _Float32 nanf32 (const char *__tagb) noexcept (true); extern _Float32 __nanf32 (const char *__tagb) noexcept (true);
# 220 "/usr/include/bits/mathcalls.h" 3 4
extern _Float32 j0f32 (_Float32) noexcept (true); extern _Float32 __j0f32 (_Float32) noexcept (true);
extern _Float32 j1f32 (_Float32) noexcept (true); extern _Float32 __j1f32 (_Float32) noexcept (true);
extern _Float32 jnf32 (int, _Float32) noexcept (true); extern _Float32 __jnf32 (int, _Float32) noexcept (true);
extern _Float32 y0f32 (_Float32) noexcept (true); extern _Float32 __y0f32 (_Float32) noexcept (true);
extern _Float32 y1f32 (_Float32) noexcept (true); extern _Float32 __y1f32 (_Float32) noexcept (true);
extern _Float32 ynf32 (int, _Float32) noexcept (true); extern _Float32 __ynf32 (int, _Float32) noexcept (true);





extern _Float32 erff32 (_Float32) noexcept (true); extern _Float32 __erff32 (_Float32) noexcept (true);
extern _Float32 erfcf32 (_Float32) noexcept (true); extern _Float32 __erfcf32 (_Float32) noexcept (true);
extern _Float32 lgammaf32 (_Float32) noexcept (true); extern _Float32 __lgammaf32 (_Float32) noexcept (true);




extern _Float32 tgammaf32 (_Float32) noexcept (true); extern _Float32 __tgammaf32 (_Float32) noexcept (true);
# 252 "/usr/include/bits/mathcalls.h" 3 4
extern _Float32 lgammaf32_r (_Float32, int *__signgamp) noexcept (true); extern _Float32 __lgammaf32_r (_Float32, int *__signgamp) noexcept (true);






extern _Float32 rintf32 (_Float32 __x) noexcept (true); extern _Float32 __rintf32 (_Float32 __x) noexcept (true);


extern _Float32 nextafterf32 (_Float32 __x, _Float32 __y) noexcept (true); extern _Float32 __nextafterf32 (_Float32 __x, _Float32 __y) noexcept (true);






extern _Float32 nextdownf32 (_Float32 __x) noexcept (true); extern _Float32 __nextdownf32 (_Float32 __x) noexcept (true);

extern _Float32 nextupf32 (_Float32 __x) noexcept (true); extern _Float32 __nextupf32 (_Float32 __x) noexcept (true);



extern _Float32 remainderf32 (_Float32 __x, _Float32 __y) noexcept (true); extern _Float32 __remainderf32 (_Float32 __x, _Float32 __y) noexcept (true);



extern _Float32 scalbnf32 (_Float32 __x, int __n) noexcept (true); extern _Float32 __scalbnf32 (_Float32 __x, int __n) noexcept (true);



extern int ilogbf32 (_Float32 __x) noexcept (true); extern int __ilogbf32 (_Float32 __x) noexcept (true);




extern long int llogbf32 (_Float32 __x) noexcept (true); extern long int __llogbf32 (_Float32 __x) noexcept (true);




extern _Float32 scalblnf32 (_Float32 __x, long int __n) noexcept (true); extern _Float32 __scalblnf32 (_Float32 __x, long int __n) noexcept (true);



extern _Float32 nearbyintf32 (_Float32 __x) noexcept (true); extern _Float32 __nearbyintf32 (_Float32 __x) noexcept (true);



extern _Float32 roundf32 (_Float32 __x) noexcept (true) __attribute__ ((__const__)); extern _Float32 __roundf32 (_Float32 __x) noexcept (true) __attribute__ ((__const__));



extern _Float32 truncf32 (_Float32 __x) noexcept (true) __attribute__ ((__const__)); extern _Float32 __truncf32 (_Float32 __x) noexcept (true) __attribute__ ((__const__));




extern _Float32 remquof32 (_Float32 __x, _Float32 __y, int *__quo) noexcept (true); extern _Float32 __remquof32 (_Float32 __x, _Float32 __y, int *__quo) noexcept (true);






extern long int lrintf32 (_Float32 __x) noexcept (true); extern long int __lrintf32 (_Float32 __x) noexcept (true);
__extension__
extern long long int llrintf32 (_Float32 __x) noexcept (true); extern long long int __llrintf32 (_Float32 __x) noexcept (true);



extern long int lroundf32 (_Float32 __x) noexcept (true); extern long int __lroundf32 (_Float32 __x) noexcept (true);
__extension__
extern long long int llroundf32 (_Float32 __x) noexcept (true); extern long long int __llroundf32 (_Float32 __x) noexcept (true);



extern _Float32 fdimf32 (_Float32 __x, _Float32 __y) noexcept (true); extern _Float32 __fdimf32 (_Float32 __x, _Float32 __y) noexcept (true);


extern _Float32 fmaxf32 (_Float32 __x, _Float32 __y) noexcept (true) __attribute__ ((__const__)); extern _Float32 __fmaxf32 (_Float32 __x, _Float32 __y) noexcept (true) __attribute__ ((__const__));


extern _Float32 fminf32 (_Float32 __x, _Float32 __y) noexcept (true) __attribute__ ((__const__)); extern _Float32 __fminf32 (_Float32 __x, _Float32 __y) noexcept (true) __attribute__ ((__const__));


extern _Float32 fmaf32 (_Float32 __x, _Float32 __y, _Float32 __z) noexcept (true); extern _Float32 __fmaf32 (_Float32 __x, _Float32 __y, _Float32 __z) noexcept (true);




extern _Float32 roundevenf32 (_Float32 __x) noexcept (true) __attribute__ ((__const__)); extern _Float32 __roundevenf32 (_Float32 __x) noexcept (true) __attribute__ ((__const__));



extern __intmax_t fromfpf32 (_Float32 __x, int __round, unsigned int __width) noexcept (true); extern __intmax_t __fromfpf32 (_Float32 __x, int __round, unsigned int __width) noexcept (true)
                            ;



extern __uintmax_t ufromfpf32 (_Float32 __x, int __round, unsigned int __width) noexcept (true); extern __uintmax_t __ufromfpf32 (_Float32 __x, int __round, unsigned int __width) noexcept (true)
                              ;




extern __intmax_t fromfpxf32 (_Float32 __x, int __round, unsigned int __width) noexcept (true); extern __intmax_t __fromfpxf32 (_Float32 __x, int __round, unsigned int __width) noexcept (true)
                             ;




extern __uintmax_t ufromfpxf32 (_Float32 __x, int __round, unsigned int __width) noexcept (true); extern __uintmax_t __ufromfpxf32 (_Float32 __x, int __round, unsigned int __width) noexcept (true)
                               ;


extern _Float32 fmaxmagf32 (_Float32 __x, _Float32 __y) noexcept (true) __attribute__ ((__const__)); extern _Float32 __fmaxmagf32 (_Float32 __x, _Float32 __y) noexcept (true) __attribute__ ((__const__));


extern _Float32 fminmagf32 (_Float32 __x, _Float32 __y) noexcept (true) __attribute__ ((__const__)); extern _Float32 __fminmagf32 (_Float32 __x, _Float32 __y) noexcept (true) __attribute__ ((__const__));


extern int canonicalizef32 (_Float32 *__cx, const _Float32 *__x) noexcept (true);




extern int totalorderf32 (const _Float32 *__x, const _Float32 *__y) noexcept (true)

     __attribute__ ((__pure__));


extern int totalordermagf32 (const _Float32 *__x, const _Float32 *__y) noexcept (true)

     __attribute__ ((__pure__));


extern _Float32 getpayloadf32 (const _Float32 *__x) noexcept (true); extern _Float32 __getpayloadf32 (const _Float32 *__x) noexcept (true);


extern int setpayloadf32 (_Float32 *__x, _Float32 __payload) noexcept (true);


extern int setpayloadsigf32 (_Float32 *__x, _Float32 __payload) noexcept (true);
# 437 "/usr/include/math.h" 2 3 4
# 453 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls.h" 1 3 4
# 53 "/usr/include/bits/mathcalls.h" 3 4
extern _Float64 acosf64 (_Float64 __x) noexcept (true); extern _Float64 __acosf64 (_Float64 __x) noexcept (true);

extern _Float64 asinf64 (_Float64 __x) noexcept (true); extern _Float64 __asinf64 (_Float64 __x) noexcept (true);

extern _Float64 atanf64 (_Float64 __x) noexcept (true); extern _Float64 __atanf64 (_Float64 __x) noexcept (true);

extern _Float64 atan2f64 (_Float64 __y, _Float64 __x) noexcept (true); extern _Float64 __atan2f64 (_Float64 __y, _Float64 __x) noexcept (true);


 extern _Float64 cosf64 (_Float64 __x) noexcept (true); extern _Float64 __cosf64 (_Float64 __x) noexcept (true);

 extern _Float64 sinf64 (_Float64 __x) noexcept (true); extern _Float64 __sinf64 (_Float64 __x) noexcept (true);

extern _Float64 tanf64 (_Float64 __x) noexcept (true); extern _Float64 __tanf64 (_Float64 __x) noexcept (true);




extern _Float64 coshf64 (_Float64 __x) noexcept (true); extern _Float64 __coshf64 (_Float64 __x) noexcept (true);

extern _Float64 sinhf64 (_Float64 __x) noexcept (true); extern _Float64 __sinhf64 (_Float64 __x) noexcept (true);

extern _Float64 tanhf64 (_Float64 __x) noexcept (true); extern _Float64 __tanhf64 (_Float64 __x) noexcept (true);



 extern void sincosf64 (_Float64 __x, _Float64 *__sinx, _Float64 *__cosx) noexcept (true); extern void __sincosf64 (_Float64 __x, _Float64 *__sinx, _Float64 *__cosx) noexcept (true)
                                                        ;




extern _Float64 acoshf64 (_Float64 __x) noexcept (true); extern _Float64 __acoshf64 (_Float64 __x) noexcept (true);

extern _Float64 asinhf64 (_Float64 __x) noexcept (true); extern _Float64 __asinhf64 (_Float64 __x) noexcept (true);

extern _Float64 atanhf64 (_Float64 __x) noexcept (true); extern _Float64 __atanhf64 (_Float64 __x) noexcept (true);





 extern _Float64 expf64 (_Float64 __x) noexcept (true); extern _Float64 __expf64 (_Float64 __x) noexcept (true);


extern _Float64 frexpf64 (_Float64 __x, int *__exponent) noexcept (true); extern _Float64 __frexpf64 (_Float64 __x, int *__exponent) noexcept (true);


extern _Float64 ldexpf64 (_Float64 __x, int __exponent) noexcept (true); extern _Float64 __ldexpf64 (_Float64 __x, int __exponent) noexcept (true);


 extern _Float64 logf64 (_Float64 __x) noexcept (true); extern _Float64 __logf64 (_Float64 __x) noexcept (true);


extern _Float64 log10f64 (_Float64 __x) noexcept (true); extern _Float64 __log10f64 (_Float64 __x) noexcept (true);


extern _Float64 modff64 (_Float64 __x, _Float64 *__iptr) noexcept (true); extern _Float64 __modff64 (_Float64 __x, _Float64 *__iptr) noexcept (true) __attribute__ ((__nonnull__ (2)));



extern _Float64 exp10f64 (_Float64 __x) noexcept (true); extern _Float64 __exp10f64 (_Float64 __x) noexcept (true);




extern _Float64 expm1f64 (_Float64 __x) noexcept (true); extern _Float64 __expm1f64 (_Float64 __x) noexcept (true);


extern _Float64 log1pf64 (_Float64 __x) noexcept (true); extern _Float64 __log1pf64 (_Float64 __x) noexcept (true);


extern _Float64 logbf64 (_Float64 __x) noexcept (true); extern _Float64 __logbf64 (_Float64 __x) noexcept (true);




extern _Float64 exp2f64 (_Float64 __x) noexcept (true); extern _Float64 __exp2f64 (_Float64 __x) noexcept (true);


extern _Float64 log2f64 (_Float64 __x) noexcept (true); extern _Float64 __log2f64 (_Float64 __x) noexcept (true);






 extern _Float64 powf64 (_Float64 __x, _Float64 __y) noexcept (true); extern _Float64 __powf64 (_Float64 __x, _Float64 __y) noexcept (true);


extern _Float64 sqrtf64 (_Float64 __x) noexcept (true); extern _Float64 __sqrtf64 (_Float64 __x) noexcept (true);



extern _Float64 hypotf64 (_Float64 __x, _Float64 __y) noexcept (true); extern _Float64 __hypotf64 (_Float64 __x, _Float64 __y) noexcept (true);




extern _Float64 cbrtf64 (_Float64 __x) noexcept (true); extern _Float64 __cbrtf64 (_Float64 __x) noexcept (true);






extern _Float64 ceilf64 (_Float64 __x) noexcept (true) __attribute__ ((__const__)); extern _Float64 __ceilf64 (_Float64 __x) noexcept (true) __attribute__ ((__const__));


extern _Float64 fabsf64 (_Float64 __x) noexcept (true) __attribute__ ((__const__)); extern _Float64 __fabsf64 (_Float64 __x) noexcept (true) __attribute__ ((__const__));


extern _Float64 floorf64 (_Float64 __x) noexcept (true) __attribute__ ((__const__)); extern _Float64 __floorf64 (_Float64 __x) noexcept (true) __attribute__ ((__const__));


extern _Float64 fmodf64 (_Float64 __x, _Float64 __y) noexcept (true); extern _Float64 __fmodf64 (_Float64 __x, _Float64 __y) noexcept (true);
# 198 "/usr/include/bits/mathcalls.h" 3 4
extern _Float64 copysignf64 (_Float64 __x, _Float64 __y) noexcept (true) __attribute__ ((__const__)); extern _Float64 __copysignf64 (_Float64 __x, _Float64 __y) noexcept (true) __attribute__ ((__const__));




extern _Float64 nanf64 (const char *__tagb) noexcept (true); extern _Float64 __nanf64 (const char *__tagb) noexcept (true);
# 220 "/usr/include/bits/mathcalls.h" 3 4
extern _Float64 j0f64 (_Float64) noexcept (true); extern _Float64 __j0f64 (_Float64) noexcept (true);
extern _Float64 j1f64 (_Float64) noexcept (true); extern _Float64 __j1f64 (_Float64) noexcept (true);
extern _Float64 jnf64 (int, _Float64) noexcept (true); extern _Float64 __jnf64 (int, _Float64) noexcept (true);
extern _Float64 y0f64 (_Float64) noexcept (true); extern _Float64 __y0f64 (_Float64) noexcept (true);
extern _Float64 y1f64 (_Float64) noexcept (true); extern _Float64 __y1f64 (_Float64) noexcept (true);
extern _Float64 ynf64 (int, _Float64) noexcept (true); extern _Float64 __ynf64 (int, _Float64) noexcept (true);





extern _Float64 erff64 (_Float64) noexcept (true); extern _Float64 __erff64 (_Float64) noexcept (true);
extern _Float64 erfcf64 (_Float64) noexcept (true); extern _Float64 __erfcf64 (_Float64) noexcept (true);
extern _Float64 lgammaf64 (_Float64) noexcept (true); extern _Float64 __lgammaf64 (_Float64) noexcept (true);




extern _Float64 tgammaf64 (_Float64) noexcept (true); extern _Float64 __tgammaf64 (_Float64) noexcept (true);
# 252 "/usr/include/bits/mathcalls.h" 3 4
extern _Float64 lgammaf64_r (_Float64, int *__signgamp) noexcept (true); extern _Float64 __lgammaf64_r (_Float64, int *__signgamp) noexcept (true);






extern _Float64 rintf64 (_Float64 __x) noexcept (true); extern _Float64 __rintf64 (_Float64 __x) noexcept (true);


extern _Float64 nextafterf64 (_Float64 __x, _Float64 __y) noexcept (true); extern _Float64 __nextafterf64 (_Float64 __x, _Float64 __y) noexcept (true);






extern _Float64 nextdownf64 (_Float64 __x) noexcept (true); extern _Float64 __nextdownf64 (_Float64 __x) noexcept (true);

extern _Float64 nextupf64 (_Float64 __x) noexcept (true); extern _Float64 __nextupf64 (_Float64 __x) noexcept (true);



extern _Float64 remainderf64 (_Float64 __x, _Float64 __y) noexcept (true); extern _Float64 __remainderf64 (_Float64 __x, _Float64 __y) noexcept (true);



extern _Float64 scalbnf64 (_Float64 __x, int __n) noexcept (true); extern _Float64 __scalbnf64 (_Float64 __x, int __n) noexcept (true);



extern int ilogbf64 (_Float64 __x) noexcept (true); extern int __ilogbf64 (_Float64 __x) noexcept (true);




extern long int llogbf64 (_Float64 __x) noexcept (true); extern long int __llogbf64 (_Float64 __x) noexcept (true);




extern _Float64 scalblnf64 (_Float64 __x, long int __n) noexcept (true); extern _Float64 __scalblnf64 (_Float64 __x, long int __n) noexcept (true);



extern _Float64 nearbyintf64 (_Float64 __x) noexcept (true); extern _Float64 __nearbyintf64 (_Float64 __x) noexcept (true);



extern _Float64 roundf64 (_Float64 __x) noexcept (true) __attribute__ ((__const__)); extern _Float64 __roundf64 (_Float64 __x) noexcept (true) __attribute__ ((__const__));



extern _Float64 truncf64 (_Float64 __x) noexcept (true) __attribute__ ((__const__)); extern _Float64 __truncf64 (_Float64 __x) noexcept (true) __attribute__ ((__const__));




extern _Float64 remquof64 (_Float64 __x, _Float64 __y, int *__quo) noexcept (true); extern _Float64 __remquof64 (_Float64 __x, _Float64 __y, int *__quo) noexcept (true);






extern long int lrintf64 (_Float64 __x) noexcept (true); extern long int __lrintf64 (_Float64 __x) noexcept (true);
__extension__
extern long long int llrintf64 (_Float64 __x) noexcept (true); extern long long int __llrintf64 (_Float64 __x) noexcept (true);



extern long int lroundf64 (_Float64 __x) noexcept (true); extern long int __lroundf64 (_Float64 __x) noexcept (true);
__extension__
extern long long int llroundf64 (_Float64 __x) noexcept (true); extern long long int __llroundf64 (_Float64 __x) noexcept (true);



extern _Float64 fdimf64 (_Float64 __x, _Float64 __y) noexcept (true); extern _Float64 __fdimf64 (_Float64 __x, _Float64 __y) noexcept (true);


extern _Float64 fmaxf64 (_Float64 __x, _Float64 __y) noexcept (true) __attribute__ ((__const__)); extern _Float64 __fmaxf64 (_Float64 __x, _Float64 __y) noexcept (true) __attribute__ ((__const__));


extern _Float64 fminf64 (_Float64 __x, _Float64 __y) noexcept (true) __attribute__ ((__const__)); extern _Float64 __fminf64 (_Float64 __x, _Float64 __y) noexcept (true) __attribute__ ((__const__));


extern _Float64 fmaf64 (_Float64 __x, _Float64 __y, _Float64 __z) noexcept (true); extern _Float64 __fmaf64 (_Float64 __x, _Float64 __y, _Float64 __z) noexcept (true);




extern _Float64 roundevenf64 (_Float64 __x) noexcept (true) __attribute__ ((__const__)); extern _Float64 __roundevenf64 (_Float64 __x) noexcept (true) __attribute__ ((__const__));



extern __intmax_t fromfpf64 (_Float64 __x, int __round, unsigned int __width) noexcept (true); extern __intmax_t __fromfpf64 (_Float64 __x, int __round, unsigned int __width) noexcept (true)
                            ;



extern __uintmax_t ufromfpf64 (_Float64 __x, int __round, unsigned int __width) noexcept (true); extern __uintmax_t __ufromfpf64 (_Float64 __x, int __round, unsigned int __width) noexcept (true)
                              ;




extern __intmax_t fromfpxf64 (_Float64 __x, int __round, unsigned int __width) noexcept (true); extern __intmax_t __fromfpxf64 (_Float64 __x, int __round, unsigned int __width) noexcept (true)
                             ;




extern __uintmax_t ufromfpxf64 (_Float64 __x, int __round, unsigned int __width) noexcept (true); extern __uintmax_t __ufromfpxf64 (_Float64 __x, int __round, unsigned int __width) noexcept (true)
                               ;


extern _Float64 fmaxmagf64 (_Float64 __x, _Float64 __y) noexcept (true) __attribute__ ((__const__)); extern _Float64 __fmaxmagf64 (_Float64 __x, _Float64 __y) noexcept (true) __attribute__ ((__const__));


extern _Float64 fminmagf64 (_Float64 __x, _Float64 __y) noexcept (true) __attribute__ ((__const__)); extern _Float64 __fminmagf64 (_Float64 __x, _Float64 __y) noexcept (true) __attribute__ ((__const__));


extern int canonicalizef64 (_Float64 *__cx, const _Float64 *__x) noexcept (true);




extern int totalorderf64 (const _Float64 *__x, const _Float64 *__y) noexcept (true)

     __attribute__ ((__pure__));


extern int totalordermagf64 (const _Float64 *__x, const _Float64 *__y) noexcept (true)

     __attribute__ ((__pure__));


extern _Float64 getpayloadf64 (const _Float64 *__x) noexcept (true); extern _Float64 __getpayloadf64 (const _Float64 *__x) noexcept (true);


extern int setpayloadf64 (_Float64 *__x, _Float64 __payload) noexcept (true);


extern int setpayloadsigf64 (_Float64 *__x, _Float64 __payload) noexcept (true);
# 454 "/usr/include/math.h" 2 3 4
# 467 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls-helper-functions.h" 1 3 4
# 20 "/usr/include/bits/mathcalls-helper-functions.h" 3 4
extern int __fpclassifyf128 (_Float128 __value) noexcept (true)
     __attribute__ ((__const__));


extern int __signbitf128 (_Float128 __value) noexcept (true)
     __attribute__ ((__const__));



extern int __isinff128 (_Float128 __value) noexcept (true)
  __attribute__ ((__const__));


extern int __finitef128 (_Float128 __value) noexcept (true)
  __attribute__ ((__const__));


extern int __isnanf128 (_Float128 __value) noexcept (true)
  __attribute__ ((__const__));


extern int __iseqsigf128 (_Float128 __x, _Float128 __y) noexcept (true);


extern int __issignalingf128 (_Float128 __value) noexcept (true)
     __attribute__ ((__const__));
# 468 "/usr/include/math.h" 2 3 4


# 1 "/usr/include/bits/mathcalls.h" 1 3 4
# 53 "/usr/include/bits/mathcalls.h" 3 4
extern _Float128 acosf128 (_Float128 __x) noexcept (true); extern _Float128 __acosf128 (_Float128 __x) noexcept (true);

extern _Float128 asinf128 (_Float128 __x) noexcept (true); extern _Float128 __asinf128 (_Float128 __x) noexcept (true);

extern _Float128 atanf128 (_Float128 __x) noexcept (true); extern _Float128 __atanf128 (_Float128 __x) noexcept (true);

extern _Float128 atan2f128 (_Float128 __y, _Float128 __x) noexcept (true); extern _Float128 __atan2f128 (_Float128 __y, _Float128 __x) noexcept (true);


 extern _Float128 cosf128 (_Float128 __x) noexcept (true); extern _Float128 __cosf128 (_Float128 __x) noexcept (true);

 extern _Float128 sinf128 (_Float128 __x) noexcept (true); extern _Float128 __sinf128 (_Float128 __x) noexcept (true);

extern _Float128 tanf128 (_Float128 __x) noexcept (true); extern _Float128 __tanf128 (_Float128 __x) noexcept (true);




extern _Float128 coshf128 (_Float128 __x) noexcept (true); extern _Float128 __coshf128 (_Float128 __x) noexcept (true);

extern _Float128 sinhf128 (_Float128 __x) noexcept (true); extern _Float128 __sinhf128 (_Float128 __x) noexcept (true);

extern _Float128 tanhf128 (_Float128 __x) noexcept (true); extern _Float128 __tanhf128 (_Float128 __x) noexcept (true);



 extern void sincosf128 (_Float128 __x, _Float128 *__sinx, _Float128 *__cosx) noexcept (true); extern void __sincosf128 (_Float128 __x, _Float128 *__sinx, _Float128 *__cosx) noexcept (true)
                                                        ;




extern _Float128 acoshf128 (_Float128 __x) noexcept (true); extern _Float128 __acoshf128 (_Float128 __x) noexcept (true);

extern _Float128 asinhf128 (_Float128 __x) noexcept (true); extern _Float128 __asinhf128 (_Float128 __x) noexcept (true);

extern _Float128 atanhf128 (_Float128 __x) noexcept (true); extern _Float128 __atanhf128 (_Float128 __x) noexcept (true);





 extern _Float128 expf128 (_Float128 __x) noexcept (true); extern _Float128 __expf128 (_Float128 __x) noexcept (true);


extern _Float128 frexpf128 (_Float128 __x, int *__exponent) noexcept (true); extern _Float128 __frexpf128 (_Float128 __x, int *__exponent) noexcept (true);


extern _Float128 ldexpf128 (_Float128 __x, int __exponent) noexcept (true); extern _Float128 __ldexpf128 (_Float128 __x, int __exponent) noexcept (true);


 extern _Float128 logf128 (_Float128 __x) noexcept (true); extern _Float128 __logf128 (_Float128 __x) noexcept (true);


extern _Float128 log10f128 (_Float128 __x) noexcept (true); extern _Float128 __log10f128 (_Float128 __x) noexcept (true);


extern _Float128 modff128 (_Float128 __x, _Float128 *__iptr) noexcept (true); extern _Float128 __modff128 (_Float128 __x, _Float128 *__iptr) noexcept (true) __attribute__ ((__nonnull__ (2)));



extern _Float128 exp10f128 (_Float128 __x) noexcept (true); extern _Float128 __exp10f128 (_Float128 __x) noexcept (true);




extern _Float128 expm1f128 (_Float128 __x) noexcept (true); extern _Float128 __expm1f128 (_Float128 __x) noexcept (true);


extern _Float128 log1pf128 (_Float128 __x) noexcept (true); extern _Float128 __log1pf128 (_Float128 __x) noexcept (true);


extern _Float128 logbf128 (_Float128 __x) noexcept (true); extern _Float128 __logbf128 (_Float128 __x) noexcept (true);




extern _Float128 exp2f128 (_Float128 __x) noexcept (true); extern _Float128 __exp2f128 (_Float128 __x) noexcept (true);


extern _Float128 log2f128 (_Float128 __x) noexcept (true); extern _Float128 __log2f128 (_Float128 __x) noexcept (true);






 extern _Float128 powf128 (_Float128 __x, _Float128 __y) noexcept (true); extern _Float128 __powf128 (_Float128 __x, _Float128 __y) noexcept (true);


extern _Float128 sqrtf128 (_Float128 __x) noexcept (true); extern _Float128 __sqrtf128 (_Float128 __x) noexcept (true);



extern _Float128 hypotf128 (_Float128 __x, _Float128 __y) noexcept (true); extern _Float128 __hypotf128 (_Float128 __x, _Float128 __y) noexcept (true);




extern _Float128 cbrtf128 (_Float128 __x) noexcept (true); extern _Float128 __cbrtf128 (_Float128 __x) noexcept (true);






extern _Float128 ceilf128 (_Float128 __x) noexcept (true) __attribute__ ((__const__)); extern _Float128 __ceilf128 (_Float128 __x) noexcept (true) __attribute__ ((__const__));


extern _Float128 fabsf128 (_Float128 __x) noexcept (true) __attribute__ ((__const__)); extern _Float128 __fabsf128 (_Float128 __x) noexcept (true) __attribute__ ((__const__));


extern _Float128 floorf128 (_Float128 __x) noexcept (true) __attribute__ ((__const__)); extern _Float128 __floorf128 (_Float128 __x) noexcept (true) __attribute__ ((__const__));


extern _Float128 fmodf128 (_Float128 __x, _Float128 __y) noexcept (true); extern _Float128 __fmodf128 (_Float128 __x, _Float128 __y) noexcept (true);
# 198 "/usr/include/bits/mathcalls.h" 3 4
extern _Float128 copysignf128 (_Float128 __x, _Float128 __y) noexcept (true) __attribute__ ((__const__)); extern _Float128 __copysignf128 (_Float128 __x, _Float128 __y) noexcept (true) __attribute__ ((__const__));




extern _Float128 nanf128 (const char *__tagb) noexcept (true); extern _Float128 __nanf128 (const char *__tagb) noexcept (true);
# 220 "/usr/include/bits/mathcalls.h" 3 4
extern _Float128 j0f128 (_Float128) noexcept (true); extern _Float128 __j0f128 (_Float128) noexcept (true);
extern _Float128 j1f128 (_Float128) noexcept (true); extern _Float128 __j1f128 (_Float128) noexcept (true);
extern _Float128 jnf128 (int, _Float128) noexcept (true); extern _Float128 __jnf128 (int, _Float128) noexcept (true);
extern _Float128 y0f128 (_Float128) noexcept (true); extern _Float128 __y0f128 (_Float128) noexcept (true);
extern _Float128 y1f128 (_Float128) noexcept (true); extern _Float128 __y1f128 (_Float128) noexcept (true);
extern _Float128 ynf128 (int, _Float128) noexcept (true); extern _Float128 __ynf128 (int, _Float128) noexcept (true);





extern _Float128 erff128 (_Float128) noexcept (true); extern _Float128 __erff128 (_Float128) noexcept (true);
extern _Float128 erfcf128 (_Float128) noexcept (true); extern _Float128 __erfcf128 (_Float128) noexcept (true);
extern _Float128 lgammaf128 (_Float128) noexcept (true); extern _Float128 __lgammaf128 (_Float128) noexcept (true);




extern _Float128 tgammaf128 (_Float128) noexcept (true); extern _Float128 __tgammaf128 (_Float128) noexcept (true);
# 252 "/usr/include/bits/mathcalls.h" 3 4
extern _Float128 lgammaf128_r (_Float128, int *__signgamp) noexcept (true); extern _Float128 __lgammaf128_r (_Float128, int *__signgamp) noexcept (true);






extern _Float128 rintf128 (_Float128 __x) noexcept (true); extern _Float128 __rintf128 (_Float128 __x) noexcept (true);


extern _Float128 nextafterf128 (_Float128 __x, _Float128 __y) noexcept (true); extern _Float128 __nextafterf128 (_Float128 __x, _Float128 __y) noexcept (true);






extern _Float128 nextdownf128 (_Float128 __x) noexcept (true); extern _Float128 __nextdownf128 (_Float128 __x) noexcept (true);

extern _Float128 nextupf128 (_Float128 __x) noexcept (true); extern _Float128 __nextupf128 (_Float128 __x) noexcept (true);



extern _Float128 remainderf128 (_Float128 __x, _Float128 __y) noexcept (true); extern _Float128 __remainderf128 (_Float128 __x, _Float128 __y) noexcept (true);



extern _Float128 scalbnf128 (_Float128 __x, int __n) noexcept (true); extern _Float128 __scalbnf128 (_Float128 __x, int __n) noexcept (true);



extern int ilogbf128 (_Float128 __x) noexcept (true); extern int __ilogbf128 (_Float128 __x) noexcept (true);




extern long int llogbf128 (_Float128 __x) noexcept (true); extern long int __llogbf128 (_Float128 __x) noexcept (true);




extern _Float128 scalblnf128 (_Float128 __x, long int __n) noexcept (true); extern _Float128 __scalblnf128 (_Float128 __x, long int __n) noexcept (true);



extern _Float128 nearbyintf128 (_Float128 __x) noexcept (true); extern _Float128 __nearbyintf128 (_Float128 __x) noexcept (true);



extern _Float128 roundf128 (_Float128 __x) noexcept (true) __attribute__ ((__const__)); extern _Float128 __roundf128 (_Float128 __x) noexcept (true) __attribute__ ((__const__));



extern _Float128 truncf128 (_Float128 __x) noexcept (true) __attribute__ ((__const__)); extern _Float128 __truncf128 (_Float128 __x) noexcept (true) __attribute__ ((__const__));




extern _Float128 remquof128 (_Float128 __x, _Float128 __y, int *__quo) noexcept (true); extern _Float128 __remquof128 (_Float128 __x, _Float128 __y, int *__quo) noexcept (true);






extern long int lrintf128 (_Float128 __x) noexcept (true); extern long int __lrintf128 (_Float128 __x) noexcept (true);
__extension__
extern long long int llrintf128 (_Float128 __x) noexcept (true); extern long long int __llrintf128 (_Float128 __x) noexcept (true);



extern long int lroundf128 (_Float128 __x) noexcept (true); extern long int __lroundf128 (_Float128 __x) noexcept (true);
__extension__
extern long long int llroundf128 (_Float128 __x) noexcept (true); extern long long int __llroundf128 (_Float128 __x) noexcept (true);



extern _Float128 fdimf128 (_Float128 __x, _Float128 __y) noexcept (true); extern _Float128 __fdimf128 (_Float128 __x, _Float128 __y) noexcept (true);


extern _Float128 fmaxf128 (_Float128 __x, _Float128 __y) noexcept (true) __attribute__ ((__const__)); extern _Float128 __fmaxf128 (_Float128 __x, _Float128 __y) noexcept (true) __attribute__ ((__const__));


extern _Float128 fminf128 (_Float128 __x, _Float128 __y) noexcept (true) __attribute__ ((__const__)); extern _Float128 __fminf128 (_Float128 __x, _Float128 __y) noexcept (true) __attribute__ ((__const__));


extern _Float128 fmaf128 (_Float128 __x, _Float128 __y, _Float128 __z) noexcept (true); extern _Float128 __fmaf128 (_Float128 __x, _Float128 __y, _Float128 __z) noexcept (true);




extern _Float128 roundevenf128 (_Float128 __x) noexcept (true) __attribute__ ((__const__)); extern _Float128 __roundevenf128 (_Float128 __x) noexcept (true) __attribute__ ((__const__));



extern __intmax_t fromfpf128 (_Float128 __x, int __round, unsigned int __width) noexcept (true); extern __intmax_t __fromfpf128 (_Float128 __x, int __round, unsigned int __width) noexcept (true)
                            ;



extern __uintmax_t ufromfpf128 (_Float128 __x, int __round, unsigned int __width) noexcept (true); extern __uintmax_t __ufromfpf128 (_Float128 __x, int __round, unsigned int __width) noexcept (true)
                              ;




extern __intmax_t fromfpxf128 (_Float128 __x, int __round, unsigned int __width) noexcept (true); extern __intmax_t __fromfpxf128 (_Float128 __x, int __round, unsigned int __width) noexcept (true)
                             ;




extern __uintmax_t ufromfpxf128 (_Float128 __x, int __round, unsigned int __width) noexcept (true); extern __uintmax_t __ufromfpxf128 (_Float128 __x, int __round, unsigned int __width) noexcept (true)
                               ;


extern _Float128 fmaxmagf128 (_Float128 __x, _Float128 __y) noexcept (true) __attribute__ ((__const__)); extern _Float128 __fmaxmagf128 (_Float128 __x, _Float128 __y) noexcept (true) __attribute__ ((__const__));


extern _Float128 fminmagf128 (_Float128 __x, _Float128 __y) noexcept (true) __attribute__ ((__const__)); extern _Float128 __fminmagf128 (_Float128 __x, _Float128 __y) noexcept (true) __attribute__ ((__const__));


extern int canonicalizef128 (_Float128 *__cx, const _Float128 *__x) noexcept (true);




extern int totalorderf128 (const _Float128 *__x, const _Float128 *__y) noexcept (true)

     __attribute__ ((__pure__));


extern int totalordermagf128 (const _Float128 *__x, const _Float128 *__y) noexcept (true)

     __attribute__ ((__pure__));


extern _Float128 getpayloadf128 (const _Float128 *__x) noexcept (true); extern _Float128 __getpayloadf128 (const _Float128 *__x) noexcept (true);


extern int setpayloadf128 (_Float128 *__x, _Float128 __payload) noexcept (true);


extern int setpayloadsigf128 (_Float128 *__x, _Float128 __payload) noexcept (true);
# 471 "/usr/include/math.h" 2 3 4
# 487 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls.h" 1 3 4
# 53 "/usr/include/bits/mathcalls.h" 3 4
extern _Float32x acosf32x (_Float32x __x) noexcept (true); extern _Float32x __acosf32x (_Float32x __x) noexcept (true);

extern _Float32x asinf32x (_Float32x __x) noexcept (true); extern _Float32x __asinf32x (_Float32x __x) noexcept (true);

extern _Float32x atanf32x (_Float32x __x) noexcept (true); extern _Float32x __atanf32x (_Float32x __x) noexcept (true);

extern _Float32x atan2f32x (_Float32x __y, _Float32x __x) noexcept (true); extern _Float32x __atan2f32x (_Float32x __y, _Float32x __x) noexcept (true);


 extern _Float32x cosf32x (_Float32x __x) noexcept (true); extern _Float32x __cosf32x (_Float32x __x) noexcept (true);

 extern _Float32x sinf32x (_Float32x __x) noexcept (true); extern _Float32x __sinf32x (_Float32x __x) noexcept (true);

extern _Float32x tanf32x (_Float32x __x) noexcept (true); extern _Float32x __tanf32x (_Float32x __x) noexcept (true);




extern _Float32x coshf32x (_Float32x __x) noexcept (true); extern _Float32x __coshf32x (_Float32x __x) noexcept (true);

extern _Float32x sinhf32x (_Float32x __x) noexcept (true); extern _Float32x __sinhf32x (_Float32x __x) noexcept (true);

extern _Float32x tanhf32x (_Float32x __x) noexcept (true); extern _Float32x __tanhf32x (_Float32x __x) noexcept (true);



 extern void sincosf32x (_Float32x __x, _Float32x *__sinx, _Float32x *__cosx) noexcept (true); extern void __sincosf32x (_Float32x __x, _Float32x *__sinx, _Float32x *__cosx) noexcept (true)
                                                        ;




extern _Float32x acoshf32x (_Float32x __x) noexcept (true); extern _Float32x __acoshf32x (_Float32x __x) noexcept (true);

extern _Float32x asinhf32x (_Float32x __x) noexcept (true); extern _Float32x __asinhf32x (_Float32x __x) noexcept (true);

extern _Float32x atanhf32x (_Float32x __x) noexcept (true); extern _Float32x __atanhf32x (_Float32x __x) noexcept (true);





 extern _Float32x expf32x (_Float32x __x) noexcept (true); extern _Float32x __expf32x (_Float32x __x) noexcept (true);


extern _Float32x frexpf32x (_Float32x __x, int *__exponent) noexcept (true); extern _Float32x __frexpf32x (_Float32x __x, int *__exponent) noexcept (true);


extern _Float32x ldexpf32x (_Float32x __x, int __exponent) noexcept (true); extern _Float32x __ldexpf32x (_Float32x __x, int __exponent) noexcept (true);


 extern _Float32x logf32x (_Float32x __x) noexcept (true); extern _Float32x __logf32x (_Float32x __x) noexcept (true);


extern _Float32x log10f32x (_Float32x __x) noexcept (true); extern _Float32x __log10f32x (_Float32x __x) noexcept (true);


extern _Float32x modff32x (_Float32x __x, _Float32x *__iptr) noexcept (true); extern _Float32x __modff32x (_Float32x __x, _Float32x *__iptr) noexcept (true) __attribute__ ((__nonnull__ (2)));



extern _Float32x exp10f32x (_Float32x __x) noexcept (true); extern _Float32x __exp10f32x (_Float32x __x) noexcept (true);




extern _Float32x expm1f32x (_Float32x __x) noexcept (true); extern _Float32x __expm1f32x (_Float32x __x) noexcept (true);


extern _Float32x log1pf32x (_Float32x __x) noexcept (true); extern _Float32x __log1pf32x (_Float32x __x) noexcept (true);


extern _Float32x logbf32x (_Float32x __x) noexcept (true); extern _Float32x __logbf32x (_Float32x __x) noexcept (true);




extern _Float32x exp2f32x (_Float32x __x) noexcept (true); extern _Float32x __exp2f32x (_Float32x __x) noexcept (true);


extern _Float32x log2f32x (_Float32x __x) noexcept (true); extern _Float32x __log2f32x (_Float32x __x) noexcept (true);






 extern _Float32x powf32x (_Float32x __x, _Float32x __y) noexcept (true); extern _Float32x __powf32x (_Float32x __x, _Float32x __y) noexcept (true);


extern _Float32x sqrtf32x (_Float32x __x) noexcept (true); extern _Float32x __sqrtf32x (_Float32x __x) noexcept (true);



extern _Float32x hypotf32x (_Float32x __x, _Float32x __y) noexcept (true); extern _Float32x __hypotf32x (_Float32x __x, _Float32x __y) noexcept (true);




extern _Float32x cbrtf32x (_Float32x __x) noexcept (true); extern _Float32x __cbrtf32x (_Float32x __x) noexcept (true);






extern _Float32x ceilf32x (_Float32x __x) noexcept (true) __attribute__ ((__const__)); extern _Float32x __ceilf32x (_Float32x __x) noexcept (true) __attribute__ ((__const__));


extern _Float32x fabsf32x (_Float32x __x) noexcept (true) __attribute__ ((__const__)); extern _Float32x __fabsf32x (_Float32x __x) noexcept (true) __attribute__ ((__const__));


extern _Float32x floorf32x (_Float32x __x) noexcept (true) __attribute__ ((__const__)); extern _Float32x __floorf32x (_Float32x __x) noexcept (true) __attribute__ ((__const__));


extern _Float32x fmodf32x (_Float32x __x, _Float32x __y) noexcept (true); extern _Float32x __fmodf32x (_Float32x __x, _Float32x __y) noexcept (true);
# 198 "/usr/include/bits/mathcalls.h" 3 4
extern _Float32x copysignf32x (_Float32x __x, _Float32x __y) noexcept (true) __attribute__ ((__const__)); extern _Float32x __copysignf32x (_Float32x __x, _Float32x __y) noexcept (true) __attribute__ ((__const__));




extern _Float32x nanf32x (const char *__tagb) noexcept (true); extern _Float32x __nanf32x (const char *__tagb) noexcept (true);
# 220 "/usr/include/bits/mathcalls.h" 3 4
extern _Float32x j0f32x (_Float32x) noexcept (true); extern _Float32x __j0f32x (_Float32x) noexcept (true);
extern _Float32x j1f32x (_Float32x) noexcept (true); extern _Float32x __j1f32x (_Float32x) noexcept (true);
extern _Float32x jnf32x (int, _Float32x) noexcept (true); extern _Float32x __jnf32x (int, _Float32x) noexcept (true);
extern _Float32x y0f32x (_Float32x) noexcept (true); extern _Float32x __y0f32x (_Float32x) noexcept (true);
extern _Float32x y1f32x (_Float32x) noexcept (true); extern _Float32x __y1f32x (_Float32x) noexcept (true);
extern _Float32x ynf32x (int, _Float32x) noexcept (true); extern _Float32x __ynf32x (int, _Float32x) noexcept (true);





extern _Float32x erff32x (_Float32x) noexcept (true); extern _Float32x __erff32x (_Float32x) noexcept (true);
extern _Float32x erfcf32x (_Float32x) noexcept (true); extern _Float32x __erfcf32x (_Float32x) noexcept (true);
extern _Float32x lgammaf32x (_Float32x) noexcept (true); extern _Float32x __lgammaf32x (_Float32x) noexcept (true);




extern _Float32x tgammaf32x (_Float32x) noexcept (true); extern _Float32x __tgammaf32x (_Float32x) noexcept (true);
# 252 "/usr/include/bits/mathcalls.h" 3 4
extern _Float32x lgammaf32x_r (_Float32x, int *__signgamp) noexcept (true); extern _Float32x __lgammaf32x_r (_Float32x, int *__signgamp) noexcept (true);






extern _Float32x rintf32x (_Float32x __x) noexcept (true); extern _Float32x __rintf32x (_Float32x __x) noexcept (true);


extern _Float32x nextafterf32x (_Float32x __x, _Float32x __y) noexcept (true); extern _Float32x __nextafterf32x (_Float32x __x, _Float32x __y) noexcept (true);






extern _Float32x nextdownf32x (_Float32x __x) noexcept (true); extern _Float32x __nextdownf32x (_Float32x __x) noexcept (true);

extern _Float32x nextupf32x (_Float32x __x) noexcept (true); extern _Float32x __nextupf32x (_Float32x __x) noexcept (true);



extern _Float32x remainderf32x (_Float32x __x, _Float32x __y) noexcept (true); extern _Float32x __remainderf32x (_Float32x __x, _Float32x __y) noexcept (true);



extern _Float32x scalbnf32x (_Float32x __x, int __n) noexcept (true); extern _Float32x __scalbnf32x (_Float32x __x, int __n) noexcept (true);



extern int ilogbf32x (_Float32x __x) noexcept (true); extern int __ilogbf32x (_Float32x __x) noexcept (true);




extern long int llogbf32x (_Float32x __x) noexcept (true); extern long int __llogbf32x (_Float32x __x) noexcept (true);




extern _Float32x scalblnf32x (_Float32x __x, long int __n) noexcept (true); extern _Float32x __scalblnf32x (_Float32x __x, long int __n) noexcept (true);



extern _Float32x nearbyintf32x (_Float32x __x) noexcept (true); extern _Float32x __nearbyintf32x (_Float32x __x) noexcept (true);



extern _Float32x roundf32x (_Float32x __x) noexcept (true) __attribute__ ((__const__)); extern _Float32x __roundf32x (_Float32x __x) noexcept (true) __attribute__ ((__const__));



extern _Float32x truncf32x (_Float32x __x) noexcept (true) __attribute__ ((__const__)); extern _Float32x __truncf32x (_Float32x __x) noexcept (true) __attribute__ ((__const__));




extern _Float32x remquof32x (_Float32x __x, _Float32x __y, int *__quo) noexcept (true); extern _Float32x __remquof32x (_Float32x __x, _Float32x __y, int *__quo) noexcept (true);






extern long int lrintf32x (_Float32x __x) noexcept (true); extern long int __lrintf32x (_Float32x __x) noexcept (true);
__extension__
extern long long int llrintf32x (_Float32x __x) noexcept (true); extern long long int __llrintf32x (_Float32x __x) noexcept (true);



extern long int lroundf32x (_Float32x __x) noexcept (true); extern long int __lroundf32x (_Float32x __x) noexcept (true);
__extension__
extern long long int llroundf32x (_Float32x __x) noexcept (true); extern long long int __llroundf32x (_Float32x __x) noexcept (true);



extern _Float32x fdimf32x (_Float32x __x, _Float32x __y) noexcept (true); extern _Float32x __fdimf32x (_Float32x __x, _Float32x __y) noexcept (true);


extern _Float32x fmaxf32x (_Float32x __x, _Float32x __y) noexcept (true) __attribute__ ((__const__)); extern _Float32x __fmaxf32x (_Float32x __x, _Float32x __y) noexcept (true) __attribute__ ((__const__));


extern _Float32x fminf32x (_Float32x __x, _Float32x __y) noexcept (true) __attribute__ ((__const__)); extern _Float32x __fminf32x (_Float32x __x, _Float32x __y) noexcept (true) __attribute__ ((__const__));


extern _Float32x fmaf32x (_Float32x __x, _Float32x __y, _Float32x __z) noexcept (true); extern _Float32x __fmaf32x (_Float32x __x, _Float32x __y, _Float32x __z) noexcept (true);




extern _Float32x roundevenf32x (_Float32x __x) noexcept (true) __attribute__ ((__const__)); extern _Float32x __roundevenf32x (_Float32x __x) noexcept (true) __attribute__ ((__const__));



extern __intmax_t fromfpf32x (_Float32x __x, int __round, unsigned int __width) noexcept (true); extern __intmax_t __fromfpf32x (_Float32x __x, int __round, unsigned int __width) noexcept (true)
                            ;



extern __uintmax_t ufromfpf32x (_Float32x __x, int __round, unsigned int __width) noexcept (true); extern __uintmax_t __ufromfpf32x (_Float32x __x, int __round, unsigned int __width) noexcept (true)
                              ;




extern __intmax_t fromfpxf32x (_Float32x __x, int __round, unsigned int __width) noexcept (true); extern __intmax_t __fromfpxf32x (_Float32x __x, int __round, unsigned int __width) noexcept (true)
                             ;




extern __uintmax_t ufromfpxf32x (_Float32x __x, int __round, unsigned int __width) noexcept (true); extern __uintmax_t __ufromfpxf32x (_Float32x __x, int __round, unsigned int __width) noexcept (true)
                               ;


extern _Float32x fmaxmagf32x (_Float32x __x, _Float32x __y) noexcept (true) __attribute__ ((__const__)); extern _Float32x __fmaxmagf32x (_Float32x __x, _Float32x __y) noexcept (true) __attribute__ ((__const__));


extern _Float32x fminmagf32x (_Float32x __x, _Float32x __y) noexcept (true) __attribute__ ((__const__)); extern _Float32x __fminmagf32x (_Float32x __x, _Float32x __y) noexcept (true) __attribute__ ((__const__));


extern int canonicalizef32x (_Float32x *__cx, const _Float32x *__x) noexcept (true);




extern int totalorderf32x (const _Float32x *__x, const _Float32x *__y) noexcept (true)

     __attribute__ ((__pure__));


extern int totalordermagf32x (const _Float32x *__x, const _Float32x *__y) noexcept (true)

     __attribute__ ((__pure__));


extern _Float32x getpayloadf32x (const _Float32x *__x) noexcept (true); extern _Float32x __getpayloadf32x (const _Float32x *__x) noexcept (true);


extern int setpayloadf32x (_Float32x *__x, _Float32x __payload) noexcept (true);


extern int setpayloadsigf32x (_Float32x *__x, _Float32x __payload) noexcept (true);
# 488 "/usr/include/math.h" 2 3 4
# 504 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls.h" 1 3 4
# 53 "/usr/include/bits/mathcalls.h" 3 4
extern _Float64x acosf64x (_Float64x __x) noexcept (true); extern _Float64x __acosf64x (_Float64x __x) noexcept (true);

extern _Float64x asinf64x (_Float64x __x) noexcept (true); extern _Float64x __asinf64x (_Float64x __x) noexcept (true);

extern _Float64x atanf64x (_Float64x __x) noexcept (true); extern _Float64x __atanf64x (_Float64x __x) noexcept (true);

extern _Float64x atan2f64x (_Float64x __y, _Float64x __x) noexcept (true); extern _Float64x __atan2f64x (_Float64x __y, _Float64x __x) noexcept (true);


 extern _Float64x cosf64x (_Float64x __x) noexcept (true); extern _Float64x __cosf64x (_Float64x __x) noexcept (true);

 extern _Float64x sinf64x (_Float64x __x) noexcept (true); extern _Float64x __sinf64x (_Float64x __x) noexcept (true);

extern _Float64x tanf64x (_Float64x __x) noexcept (true); extern _Float64x __tanf64x (_Float64x __x) noexcept (true);




extern _Float64x coshf64x (_Float64x __x) noexcept (true); extern _Float64x __coshf64x (_Float64x __x) noexcept (true);

extern _Float64x sinhf64x (_Float64x __x) noexcept (true); extern _Float64x __sinhf64x (_Float64x __x) noexcept (true);

extern _Float64x tanhf64x (_Float64x __x) noexcept (true); extern _Float64x __tanhf64x (_Float64x __x) noexcept (true);



 extern void sincosf64x (_Float64x __x, _Float64x *__sinx, _Float64x *__cosx) noexcept (true); extern void __sincosf64x (_Float64x __x, _Float64x *__sinx, _Float64x *__cosx) noexcept (true)
                                                        ;




extern _Float64x acoshf64x (_Float64x __x) noexcept (true); extern _Float64x __acoshf64x (_Float64x __x) noexcept (true);

extern _Float64x asinhf64x (_Float64x __x) noexcept (true); extern _Float64x __asinhf64x (_Float64x __x) noexcept (true);

extern _Float64x atanhf64x (_Float64x __x) noexcept (true); extern _Float64x __atanhf64x (_Float64x __x) noexcept (true);





 extern _Float64x expf64x (_Float64x __x) noexcept (true); extern _Float64x __expf64x (_Float64x __x) noexcept (true);


extern _Float64x frexpf64x (_Float64x __x, int *__exponent) noexcept (true); extern _Float64x __frexpf64x (_Float64x __x, int *__exponent) noexcept (true);


extern _Float64x ldexpf64x (_Float64x __x, int __exponent) noexcept (true); extern _Float64x __ldexpf64x (_Float64x __x, int __exponent) noexcept (true);


 extern _Float64x logf64x (_Float64x __x) noexcept (true); extern _Float64x __logf64x (_Float64x __x) noexcept (true);


extern _Float64x log10f64x (_Float64x __x) noexcept (true); extern _Float64x __log10f64x (_Float64x __x) noexcept (true);


extern _Float64x modff64x (_Float64x __x, _Float64x *__iptr) noexcept (true); extern _Float64x __modff64x (_Float64x __x, _Float64x *__iptr) noexcept (true) __attribute__ ((__nonnull__ (2)));



extern _Float64x exp10f64x (_Float64x __x) noexcept (true); extern _Float64x __exp10f64x (_Float64x __x) noexcept (true);




extern _Float64x expm1f64x (_Float64x __x) noexcept (true); extern _Float64x __expm1f64x (_Float64x __x) noexcept (true);


extern _Float64x log1pf64x (_Float64x __x) noexcept (true); extern _Float64x __log1pf64x (_Float64x __x) noexcept (true);


extern _Float64x logbf64x (_Float64x __x) noexcept (true); extern _Float64x __logbf64x (_Float64x __x) noexcept (true);




extern _Float64x exp2f64x (_Float64x __x) noexcept (true); extern _Float64x __exp2f64x (_Float64x __x) noexcept (true);


extern _Float64x log2f64x (_Float64x __x) noexcept (true); extern _Float64x __log2f64x (_Float64x __x) noexcept (true);






 extern _Float64x powf64x (_Float64x __x, _Float64x __y) noexcept (true); extern _Float64x __powf64x (_Float64x __x, _Float64x __y) noexcept (true);


extern _Float64x sqrtf64x (_Float64x __x) noexcept (true); extern _Float64x __sqrtf64x (_Float64x __x) noexcept (true);



extern _Float64x hypotf64x (_Float64x __x, _Float64x __y) noexcept (true); extern _Float64x __hypotf64x (_Float64x __x, _Float64x __y) noexcept (true);




extern _Float64x cbrtf64x (_Float64x __x) noexcept (true); extern _Float64x __cbrtf64x (_Float64x __x) noexcept (true);






extern _Float64x ceilf64x (_Float64x __x) noexcept (true) __attribute__ ((__const__)); extern _Float64x __ceilf64x (_Float64x __x) noexcept (true) __attribute__ ((__const__));


extern _Float64x fabsf64x (_Float64x __x) noexcept (true) __attribute__ ((__const__)); extern _Float64x __fabsf64x (_Float64x __x) noexcept (true) __attribute__ ((__const__));


extern _Float64x floorf64x (_Float64x __x) noexcept (true) __attribute__ ((__const__)); extern _Float64x __floorf64x (_Float64x __x) noexcept (true) __attribute__ ((__const__));


extern _Float64x fmodf64x (_Float64x __x, _Float64x __y) noexcept (true); extern _Float64x __fmodf64x (_Float64x __x, _Float64x __y) noexcept (true);
# 198 "/usr/include/bits/mathcalls.h" 3 4
extern _Float64x copysignf64x (_Float64x __x, _Float64x __y) noexcept (true) __attribute__ ((__const__)); extern _Float64x __copysignf64x (_Float64x __x, _Float64x __y) noexcept (true) __attribute__ ((__const__));




extern _Float64x nanf64x (const char *__tagb) noexcept (true); extern _Float64x __nanf64x (const char *__tagb) noexcept (true);
# 220 "/usr/include/bits/mathcalls.h" 3 4
extern _Float64x j0f64x (_Float64x) noexcept (true); extern _Float64x __j0f64x (_Float64x) noexcept (true);
extern _Float64x j1f64x (_Float64x) noexcept (true); extern _Float64x __j1f64x (_Float64x) noexcept (true);
extern _Float64x jnf64x (int, _Float64x) noexcept (true); extern _Float64x __jnf64x (int, _Float64x) noexcept (true);
extern _Float64x y0f64x (_Float64x) noexcept (true); extern _Float64x __y0f64x (_Float64x) noexcept (true);
extern _Float64x y1f64x (_Float64x) noexcept (true); extern _Float64x __y1f64x (_Float64x) noexcept (true);
extern _Float64x ynf64x (int, _Float64x) noexcept (true); extern _Float64x __ynf64x (int, _Float64x) noexcept (true);





extern _Float64x erff64x (_Float64x) noexcept (true); extern _Float64x __erff64x (_Float64x) noexcept (true);
extern _Float64x erfcf64x (_Float64x) noexcept (true); extern _Float64x __erfcf64x (_Float64x) noexcept (true);
extern _Float64x lgammaf64x (_Float64x) noexcept (true); extern _Float64x __lgammaf64x (_Float64x) noexcept (true);




extern _Float64x tgammaf64x (_Float64x) noexcept (true); extern _Float64x __tgammaf64x (_Float64x) noexcept (true);
# 252 "/usr/include/bits/mathcalls.h" 3 4
extern _Float64x lgammaf64x_r (_Float64x, int *__signgamp) noexcept (true); extern _Float64x __lgammaf64x_r (_Float64x, int *__signgamp) noexcept (true);






extern _Float64x rintf64x (_Float64x __x) noexcept (true); extern _Float64x __rintf64x (_Float64x __x) noexcept (true);


extern _Float64x nextafterf64x (_Float64x __x, _Float64x __y) noexcept (true); extern _Float64x __nextafterf64x (_Float64x __x, _Float64x __y) noexcept (true);






extern _Float64x nextdownf64x (_Float64x __x) noexcept (true); extern _Float64x __nextdownf64x (_Float64x __x) noexcept (true);

extern _Float64x nextupf64x (_Float64x __x) noexcept (true); extern _Float64x __nextupf64x (_Float64x __x) noexcept (true);



extern _Float64x remainderf64x (_Float64x __x, _Float64x __y) noexcept (true); extern _Float64x __remainderf64x (_Float64x __x, _Float64x __y) noexcept (true);



extern _Float64x scalbnf64x (_Float64x __x, int __n) noexcept (true); extern _Float64x __scalbnf64x (_Float64x __x, int __n) noexcept (true);



extern int ilogbf64x (_Float64x __x) noexcept (true); extern int __ilogbf64x (_Float64x __x) noexcept (true);




extern long int llogbf64x (_Float64x __x) noexcept (true); extern long int __llogbf64x (_Float64x __x) noexcept (true);




extern _Float64x scalblnf64x (_Float64x __x, long int __n) noexcept (true); extern _Float64x __scalblnf64x (_Float64x __x, long int __n) noexcept (true);



extern _Float64x nearbyintf64x (_Float64x __x) noexcept (true); extern _Float64x __nearbyintf64x (_Float64x __x) noexcept (true);



extern _Float64x roundf64x (_Float64x __x) noexcept (true) __attribute__ ((__const__)); extern _Float64x __roundf64x (_Float64x __x) noexcept (true) __attribute__ ((__const__));



extern _Float64x truncf64x (_Float64x __x) noexcept (true) __attribute__ ((__const__)); extern _Float64x __truncf64x (_Float64x __x) noexcept (true) __attribute__ ((__const__));




extern _Float64x remquof64x (_Float64x __x, _Float64x __y, int *__quo) noexcept (true); extern _Float64x __remquof64x (_Float64x __x, _Float64x __y, int *__quo) noexcept (true);






extern long int lrintf64x (_Float64x __x) noexcept (true); extern long int __lrintf64x (_Float64x __x) noexcept (true);
__extension__
extern long long int llrintf64x (_Float64x __x) noexcept (true); extern long long int __llrintf64x (_Float64x __x) noexcept (true);



extern long int lroundf64x (_Float64x __x) noexcept (true); extern long int __lroundf64x (_Float64x __x) noexcept (true);
__extension__
extern long long int llroundf64x (_Float64x __x) noexcept (true); extern long long int __llroundf64x (_Float64x __x) noexcept (true);



extern _Float64x fdimf64x (_Float64x __x, _Float64x __y) noexcept (true); extern _Float64x __fdimf64x (_Float64x __x, _Float64x __y) noexcept (true);


extern _Float64x fmaxf64x (_Float64x __x, _Float64x __y) noexcept (true) __attribute__ ((__const__)); extern _Float64x __fmaxf64x (_Float64x __x, _Float64x __y) noexcept (true) __attribute__ ((__const__));


extern _Float64x fminf64x (_Float64x __x, _Float64x __y) noexcept (true) __attribute__ ((__const__)); extern _Float64x __fminf64x (_Float64x __x, _Float64x __y) noexcept (true) __attribute__ ((__const__));


extern _Float64x fmaf64x (_Float64x __x, _Float64x __y, _Float64x __z) noexcept (true); extern _Float64x __fmaf64x (_Float64x __x, _Float64x __y, _Float64x __z) noexcept (true);




extern _Float64x roundevenf64x (_Float64x __x) noexcept (true) __attribute__ ((__const__)); extern _Float64x __roundevenf64x (_Float64x __x) noexcept (true) __attribute__ ((__const__));



extern __intmax_t fromfpf64x (_Float64x __x, int __round, unsigned int __width) noexcept (true); extern __intmax_t __fromfpf64x (_Float64x __x, int __round, unsigned int __width) noexcept (true)
                            ;



extern __uintmax_t ufromfpf64x (_Float64x __x, int __round, unsigned int __width) noexcept (true); extern __uintmax_t __ufromfpf64x (_Float64x __x, int __round, unsigned int __width) noexcept (true)
                              ;




extern __intmax_t fromfpxf64x (_Float64x __x, int __round, unsigned int __width) noexcept (true); extern __intmax_t __fromfpxf64x (_Float64x __x, int __round, unsigned int __width) noexcept (true)
                             ;




extern __uintmax_t ufromfpxf64x (_Float64x __x, int __round, unsigned int __width) noexcept (true); extern __uintmax_t __ufromfpxf64x (_Float64x __x, int __round, unsigned int __width) noexcept (true)
                               ;


extern _Float64x fmaxmagf64x (_Float64x __x, _Float64x __y) noexcept (true) __attribute__ ((__const__)); extern _Float64x __fmaxmagf64x (_Float64x __x, _Float64x __y) noexcept (true) __attribute__ ((__const__));


extern _Float64x fminmagf64x (_Float64x __x, _Float64x __y) noexcept (true) __attribute__ ((__const__)); extern _Float64x __fminmagf64x (_Float64x __x, _Float64x __y) noexcept (true) __attribute__ ((__const__));


extern int canonicalizef64x (_Float64x *__cx, const _Float64x *__x) noexcept (true);




extern int totalorderf64x (const _Float64x *__x, const _Float64x *__y) noexcept (true)

     __attribute__ ((__pure__));


extern int totalordermagf64x (const _Float64x *__x, const _Float64x *__y) noexcept (true)

     __attribute__ ((__pure__));


extern _Float64x getpayloadf64x (const _Float64x *__x) noexcept (true); extern _Float64x __getpayloadf64x (const _Float64x *__x) noexcept (true);


extern int setpayloadf64x (_Float64x *__x, _Float64x __payload) noexcept (true);


extern int setpayloadsigf64x (_Float64x *__x, _Float64x __payload) noexcept (true);
# 505 "/usr/include/math.h" 2 3 4
# 552 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls-narrow.h" 1 3 4
# 24 "/usr/include/bits/mathcalls-narrow.h" 3 4
extern float fadd (double __x, double __y) noexcept (true);


extern float fdiv (double __x, double __y) noexcept (true);


extern float fmul (double __x, double __y) noexcept (true);


extern float fsub (double __x, double __y) noexcept (true);
# 553 "/usr/include/math.h" 2 3 4
# 571 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls-narrow.h" 1 3 4
# 24 "/usr/include/bits/mathcalls-narrow.h" 3 4
extern float faddl (long double __x, long double __y) noexcept (true);


extern float fdivl (long double __x, long double __y) noexcept (true);


extern float fmull (long double __x, long double __y) noexcept (true);


extern float fsubl (long double __x, long double __y) noexcept (true);
# 572 "/usr/include/math.h" 2 3 4
# 597 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls-narrow.h" 1 3 4
# 24 "/usr/include/bits/mathcalls-narrow.h" 3 4
extern double daddl (long double __x, long double __y) noexcept (true);


extern double ddivl (long double __x, long double __y) noexcept (true);


extern double dmull (long double __x, long double __y) noexcept (true);


extern double dsubl (long double __x, long double __y) noexcept (true);
# 598 "/usr/include/math.h" 2 3 4
# 677 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls-narrow.h" 1 3 4
# 24 "/usr/include/bits/mathcalls-narrow.h" 3 4
extern _Float32 f32addf32x (_Float32x __x, _Float32x __y) noexcept (true);


extern _Float32 f32divf32x (_Float32x __x, _Float32x __y) noexcept (true);


extern _Float32 f32mulf32x (_Float32x __x, _Float32x __y) noexcept (true);


extern _Float32 f32subf32x (_Float32x __x, _Float32x __y) noexcept (true);
# 678 "/usr/include/math.h" 2 3 4
# 687 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls-narrow.h" 1 3 4
# 24 "/usr/include/bits/mathcalls-narrow.h" 3 4
extern _Float32 f32addf64 (_Float64 __x, _Float64 __y) noexcept (true);


extern _Float32 f32divf64 (_Float64 __x, _Float64 __y) noexcept (true);


extern _Float32 f32mulf64 (_Float64 __x, _Float64 __y) noexcept (true);


extern _Float32 f32subf64 (_Float64 __x, _Float64 __y) noexcept (true);
# 688 "/usr/include/math.h" 2 3 4
# 697 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls-narrow.h" 1 3 4
# 24 "/usr/include/bits/mathcalls-narrow.h" 3 4
extern _Float32 f32addf64x (_Float64x __x, _Float64x __y) noexcept (true);


extern _Float32 f32divf64x (_Float64x __x, _Float64x __y) noexcept (true);


extern _Float32 f32mulf64x (_Float64x __x, _Float64x __y) noexcept (true);


extern _Float32 f32subf64x (_Float64x __x, _Float64x __y) noexcept (true);
# 698 "/usr/include/math.h" 2 3 4
# 707 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls-narrow.h" 1 3 4
# 24 "/usr/include/bits/mathcalls-narrow.h" 3 4
extern _Float32 f32addf128 (_Float128 __x, _Float128 __y) noexcept (true);


extern _Float32 f32divf128 (_Float128 __x, _Float128 __y) noexcept (true);


extern _Float32 f32mulf128 (_Float128 __x, _Float128 __y) noexcept (true);


extern _Float32 f32subf128 (_Float128 __x, _Float128 __y) noexcept (true);
# 708 "/usr/include/math.h" 2 3 4
# 727 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls-narrow.h" 1 3 4
# 24 "/usr/include/bits/mathcalls-narrow.h" 3 4
extern _Float32x f32xaddf64 (_Float64 __x, _Float64 __y) noexcept (true);


extern _Float32x f32xdivf64 (_Float64 __x, _Float64 __y) noexcept (true);


extern _Float32x f32xmulf64 (_Float64 __x, _Float64 __y) noexcept (true);


extern _Float32x f32xsubf64 (_Float64 __x, _Float64 __y) noexcept (true);
# 728 "/usr/include/math.h" 2 3 4
# 737 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls-narrow.h" 1 3 4
# 24 "/usr/include/bits/mathcalls-narrow.h" 3 4
extern _Float32x f32xaddf64x (_Float64x __x, _Float64x __y) noexcept (true);


extern _Float32x f32xdivf64x (_Float64x __x, _Float64x __y) noexcept (true);


extern _Float32x f32xmulf64x (_Float64x __x, _Float64x __y) noexcept (true);


extern _Float32x f32xsubf64x (_Float64x __x, _Float64x __y) noexcept (true);
# 738 "/usr/include/math.h" 2 3 4
# 747 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls-narrow.h" 1 3 4
# 24 "/usr/include/bits/mathcalls-narrow.h" 3 4
extern _Float32x f32xaddf128 (_Float128 __x, _Float128 __y) noexcept (true);


extern _Float32x f32xdivf128 (_Float128 __x, _Float128 __y) noexcept (true);


extern _Float32x f32xmulf128 (_Float128 __x, _Float128 __y) noexcept (true);


extern _Float32x f32xsubf128 (_Float128 __x, _Float128 __y) noexcept (true);
# 748 "/usr/include/math.h" 2 3 4
# 767 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls-narrow.h" 1 3 4
# 24 "/usr/include/bits/mathcalls-narrow.h" 3 4
extern _Float64 f64addf64x (_Float64x __x, _Float64x __y) noexcept (true);


extern _Float64 f64divf64x (_Float64x __x, _Float64x __y) noexcept (true);


extern _Float64 f64mulf64x (_Float64x __x, _Float64x __y) noexcept (true);


extern _Float64 f64subf64x (_Float64x __x, _Float64x __y) noexcept (true);
# 768 "/usr/include/math.h" 2 3 4
# 777 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls-narrow.h" 1 3 4
# 24 "/usr/include/bits/mathcalls-narrow.h" 3 4
extern _Float64 f64addf128 (_Float128 __x, _Float128 __y) noexcept (true);


extern _Float64 f64divf128 (_Float128 __x, _Float128 __y) noexcept (true);


extern _Float64 f64mulf128 (_Float128 __x, _Float128 __y) noexcept (true);


extern _Float64 f64subf128 (_Float128 __x, _Float128 __y) noexcept (true);
# 778 "/usr/include/math.h" 2 3 4
# 797 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/mathcalls-narrow.h" 1 3 4
# 24 "/usr/include/bits/mathcalls-narrow.h" 3 4
extern _Float64x f64xaddf128 (_Float128 __x, _Float128 __y) noexcept (true);


extern _Float64x f64xdivf128 (_Float128 __x, _Float128 __y) noexcept (true);


extern _Float64x f64xmulf128 (_Float128 __x, _Float128 __y) noexcept (true);


extern _Float64x f64xsubf128 (_Float128 __x, _Float128 __y) noexcept (true);
# 798 "/usr/include/math.h" 2 3 4
# 834 "/usr/include/math.h" 3 4
extern int signgam;
# 914 "/usr/include/math.h" 3 4
enum
  {
    FP_NAN =

      0,
    FP_INFINITE =

      1,
    FP_ZERO =

      2,
    FP_SUBNORMAL =

      3,
    FP_NORMAL =

      4
  };
# 1034 "/usr/include/math.h" 3 4
# 1 "/usr/include/bits/iscanonical.h" 1 3 4
# 23 "/usr/include/bits/iscanonical.h" 3 4
extern int __iscanonicall (long double __x)
     noexcept (true) __attribute__ ((__const__));
# 46 "/usr/include/bits/iscanonical.h" 3 4
extern "C++" {
inline int iscanonical (float __val) { return ((void) (__typeof (__val)) (__val), 1); }
inline int iscanonical (double __val) { return ((void) (__typeof (__val)) (__val), 1); }
inline int iscanonical (long double __val) { return __iscanonicall (__val); }

inline int iscanonical (_Float128 __val) { return ((void) (__typeof (__val)) (__val), 1); }

}
# 1035 "/usr/include/math.h" 2 3 4
# 1046 "/usr/include/math.h" 3 4
extern "C++" {
inline int issignaling (float __val) { return __issignalingf (__val); }
inline int issignaling (double __val) { return __issignaling (__val); }
inline int
issignaling (long double __val)
{



  return __issignalingl (__val);

}



inline int issignaling (_Float128 __val) { return __issignalingf128 (__val); }

}
# 1077 "/usr/include/math.h" 3 4
extern "C++" {
# 1108 "/usr/include/math.h" 3 4
template <class __T> inline bool
iszero (__T __val)
{
  return __val == 0;
}

}
# 1326 "/usr/include/math.h" 3 4
extern "C++" {
template<typename> struct __iseqsig_type;

template<> struct __iseqsig_type<float>
{
  static int __call (float __x, float __y) throw ()
  {
    return __iseqsigf (__x, __y);
  }
};

template<> struct __iseqsig_type<double>
{
  static int __call (double __x, double __y) throw ()
  {
    return __iseqsig (__x, __y);
  }
};

template<> struct __iseqsig_type<long double>
{
  static int __call (long double __x, long double __y) throw ()
  {

    return __iseqsigl (__x, __y);



  }
};




template<> struct __iseqsig_type<_Float128>
{
  static int __call (_Float128 __x, _Float128 __y) throw ()
  {
    return __iseqsigf128 (__x, __y);
  }
};


template<typename _T1, typename _T2>
inline int
iseqsig (_T1 __x, _T2 __y) throw ()
{

  typedef decltype (((__x) + (__y) + 0.0f)) _T3;



  return __iseqsig_type<_T3>::__call (__x, __y);
}

}




}
# 46 "/usr/include/c++/10.2.0/cmath" 2 3

# 1 "/usr/include/c++/10.2.0/bits/std_abs.h" 1 3
# 33 "/usr/include/c++/10.2.0/bits/std_abs.h" 3
       
# 34 "/usr/include/c++/10.2.0/bits/std_abs.h" 3




# 1 "/usr/include/stdlib.h" 1 3 4
# 25 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 26 "/usr/include/stdlib.h" 2 3 4





# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stddef.h" 1 3 4
# 209 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 32 "/usr/include/stdlib.h" 2 3 4

extern "C" {





# 1 "/usr/include/bits/waitflags.h" 1 3 4
# 40 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/bits/waitstatus.h" 1 3 4
# 41 "/usr/include/stdlib.h" 2 3 4
# 58 "/usr/include/stdlib.h" 3 4
typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;





__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;
# 97 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) noexcept (true) ;



extern double atof (const char *__nptr)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;



__extension__ extern long long int atoll (const char *__nptr)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;



extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     noexcept (true) __attribute__ ((__nonnull__ (1)));



extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) noexcept (true) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     noexcept (true) __attribute__ ((__nonnull__ (1)));
# 140 "/usr/include/stdlib.h" 3 4
extern _Float32 strtof32 (const char *__restrict __nptr,
     char **__restrict __endptr)
     noexcept (true) __attribute__ ((__nonnull__ (1)));



extern _Float64 strtof64 (const char *__restrict __nptr,
     char **__restrict __endptr)
     noexcept (true) __attribute__ ((__nonnull__ (1)));



extern _Float128 strtof128 (const char *__restrict __nptr,
       char **__restrict __endptr)
     noexcept (true) __attribute__ ((__nonnull__ (1)));



extern _Float32x strtof32x (const char *__restrict __nptr,
       char **__restrict __endptr)
     noexcept (true) __attribute__ ((__nonnull__ (1)));



extern _Float64x strtof64x (const char *__restrict __nptr,
       char **__restrict __endptr)
     noexcept (true) __attribute__ ((__nonnull__ (1)));
# 176 "/usr/include/stdlib.h" 3 4
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     noexcept (true) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     noexcept (true) __attribute__ ((__nonnull__ (1)));



__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     noexcept (true) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     noexcept (true) __attribute__ ((__nonnull__ (1)));




__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     noexcept (true) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     noexcept (true) __attribute__ ((__nonnull__ (1)));




extern int strfromd (char *__dest, size_t __size, const char *__format,
       double __f)
     noexcept (true) __attribute__ ((__nonnull__ (3)));

extern int strfromf (char *__dest, size_t __size, const char *__format,
       float __f)
     noexcept (true) __attribute__ ((__nonnull__ (3)));

extern int strfroml (char *__dest, size_t __size, const char *__format,
       long double __f)
     noexcept (true) __attribute__ ((__nonnull__ (3)));
# 232 "/usr/include/stdlib.h" 3 4
extern int strfromf32 (char *__dest, size_t __size, const char * __format,
         _Float32 __f)
     noexcept (true) __attribute__ ((__nonnull__ (3)));



extern int strfromf64 (char *__dest, size_t __size, const char * __format,
         _Float64 __f)
     noexcept (true) __attribute__ ((__nonnull__ (3)));



extern int strfromf128 (char *__dest, size_t __size, const char * __format,
   _Float128 __f)
     noexcept (true) __attribute__ ((__nonnull__ (3)));



extern int strfromf32x (char *__dest, size_t __size, const char * __format,
   _Float32x __f)
     noexcept (true) __attribute__ ((__nonnull__ (3)));



extern int strfromf64x (char *__dest, size_t __size, const char * __format,
   _Float64x __f)
     noexcept (true) __attribute__ ((__nonnull__ (3)));
# 272 "/usr/include/stdlib.h" 3 4
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
# 273 "/usr/include/stdlib.h" 2 3 4

extern long int strtol_l (const char *__restrict __nptr,
     char **__restrict __endptr, int __base,
     locale_t __loc) noexcept (true) __attribute__ ((__nonnull__ (1, 4)));

extern unsigned long int strtoul_l (const char *__restrict __nptr,
        char **__restrict __endptr,
        int __base, locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 4)));

__extension__
extern long long int strtoll_l (const char *__restrict __nptr,
    char **__restrict __endptr, int __base,
    locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 4)));

__extension__
extern unsigned long long int strtoull_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       int __base, locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 4)));

extern double strtod_l (const char *__restrict __nptr,
   char **__restrict __endptr, locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 3)));

extern float strtof_l (const char *__restrict __nptr,
         char **__restrict __endptr, locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 3)));

extern long double strtold_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 3)));
# 316 "/usr/include/stdlib.h" 3 4
extern _Float32 strtof32_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 3)));



extern _Float64 strtof64_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 3)));



extern _Float128 strtof128_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 3)));



extern _Float32x strtof32x_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 3)));



extern _Float64x strtof64x_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     noexcept (true) __attribute__ ((__nonnull__ (1, 3)));
# 385 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) noexcept (true) ;


extern long int a64l (const char *__s)
     noexcept (true) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;




# 1 "/usr/include/sys/types.h" 1 3 4
# 27 "/usr/include/sys/types.h" 3 4
extern "C" {





typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;


typedef __loff_t loff_t;




typedef __ino_t ino_t;






typedef __ino64_t ino64_t;




typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;





typedef __off_t off_t;






typedef __off64_t off64_t;




typedef __pid_t pid_t;





typedef __id_t id_t;




typedef __ssize_t ssize_t;





typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;




# 1 "/usr/include/bits/types/clock_t.h" 1 3 4






typedef __clock_t clock_t;
# 127 "/usr/include/sys/types.h" 2 3 4

# 1 "/usr/include/bits/types/clockid_t.h" 1 3 4






typedef __clockid_t clockid_t;
# 129 "/usr/include/sys/types.h" 2 3 4
# 1 "/usr/include/bits/types/time_t.h" 1 3 4






typedef __time_t time_t;
# 130 "/usr/include/sys/types.h" 2 3 4
# 1 "/usr/include/bits/types/timer_t.h" 1 3 4






typedef __timer_t timer_t;
# 131 "/usr/include/sys/types.h" 2 3 4



typedef __useconds_t useconds_t;



typedef __suseconds_t suseconds_t;





# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stddef.h" 1 3 4
# 145 "/usr/include/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;




# 1 "/usr/include/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/bits/stdint-intn.h" 3 4
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 156 "/usr/include/sys/types.h" 2 3 4


typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;


typedef int register_t __attribute__ ((__mode__ (__word__)));
# 176 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 24 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/endian.h" 1 3 4
# 35 "/usr/include/bits/endian.h" 3 4
# 1 "/usr/include/bits/endianness.h" 1 3 4
# 36 "/usr/include/bits/endian.h" 2 3 4
# 25 "/usr/include/endian.h" 2 3 4
# 35 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/byteswap.h" 1 3 4
# 33 "/usr/include/bits/byteswap.h" 3 4
static __inline __uint16_t
__bswap_16 (__uint16_t __bsx)
{

  return __builtin_bswap16 (__bsx);



}






static __inline __uint32_t
__bswap_32 (__uint32_t __bsx)
{

  return __builtin_bswap32 (__bsx);



}
# 69 "/usr/include/bits/byteswap.h" 3 4
__extension__ static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{

  return __builtin_bswap64 (__bsx);



}
# 36 "/usr/include/endian.h" 2 3 4
# 1 "/usr/include/bits/uintn-identity.h" 1 3 4
# 32 "/usr/include/bits/uintn-identity.h" 3 4
static __inline __uint16_t
__uint16_identity (__uint16_t __x)
{
  return __x;
}

static __inline __uint32_t
__uint32_identity (__uint32_t __x)
{
  return __x;
}

static __inline __uint64_t
__uint64_identity (__uint64_t __x)
{
  return __x;
}
# 37 "/usr/include/endian.h" 2 3 4
# 177 "/usr/include/sys/types.h" 2 3 4


# 1 "/usr/include/sys/select.h" 1 3 4
# 30 "/usr/include/sys/select.h" 3 4
# 1 "/usr/include/bits/select.h" 1 3 4
# 31 "/usr/include/sys/select.h" 2 3 4


# 1 "/usr/include/bits/types/sigset_t.h" 1 3 4



# 1 "/usr/include/bits/types/__sigset_t.h" 1 3 4




typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
# 5 "/usr/include/bits/types/sigset_t.h" 2 3 4


typedef __sigset_t sigset_t;
# 34 "/usr/include/sys/select.h" 2 3 4



# 1 "/usr/include/bits/types/struct_timeval.h" 1 3 4







struct timeval
{
  __time_t tv_sec;
  __suseconds_t tv_usec;
};
# 38 "/usr/include/sys/select.h" 2 3 4

# 1 "/usr/include/bits/types/struct_timespec.h" 1 3 4
# 10 "/usr/include/bits/types/struct_timespec.h" 3 4
struct timespec
{
  __time_t tv_sec;



  __syscall_slong_t tv_nsec;
# 26 "/usr/include/bits/types/struct_timespec.h" 3 4
};
# 40 "/usr/include/sys/select.h" 2 3 4
# 49 "/usr/include/sys/select.h" 3 4
typedef long int __fd_mask;
# 59 "/usr/include/sys/select.h" 3 4
typedef struct
  {



    __fd_mask fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];





  } fd_set;






typedef __fd_mask fd_mask;
# 91 "/usr/include/sys/select.h" 3 4
extern "C" {
# 101 "/usr/include/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 113 "/usr/include/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
# 126 "/usr/include/sys/select.h" 3 4
}
# 180 "/usr/include/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 219 "/usr/include/sys/types.h" 3 4
typedef __blkcnt64_t blkcnt64_t;
typedef __fsblkcnt64_t fsblkcnt64_t;
typedef __fsfilcnt64_t fsfilcnt64_t;





# 1 "/usr/include/bits/pthreadtypes.h" 1 3 4
# 23 "/usr/include/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/bits/thread-shared-types.h" 1 3 4
# 44 "/usr/include/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/bits/pthreadtypes-arch.h" 1 3 4
# 21 "/usr/include/bits/pthreadtypes-arch.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 22 "/usr/include/bits/pthreadtypes-arch.h" 2 3 4
# 45 "/usr/include/bits/thread-shared-types.h" 2 3 4




typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;

typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;
# 74 "/usr/include/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/bits/struct_mutex.h" 1 3 4
# 22 "/usr/include/bits/struct_mutex.h" 3 4
struct __pthread_mutex_s
{
  int __lock;
  unsigned int __count;
  int __owner;

  unsigned int __nusers;



  int __kind;

  short __spins;
  short __elision;
  __pthread_list_t __list;
# 53 "/usr/include/bits/struct_mutex.h" 3 4
};
# 75 "/usr/include/bits/thread-shared-types.h" 2 3 4
# 87 "/usr/include/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/bits/struct_rwlock.h" 1 3 4
# 23 "/usr/include/bits/struct_rwlock.h" 3 4
struct __pthread_rwlock_arch_t
{
  unsigned int __readers;
  unsigned int __writers;
  unsigned int __wrphase_futex;
  unsigned int __writers_futex;
  unsigned int __pad3;
  unsigned int __pad4;

  int __cur_writer;
  int __shared;
  signed char __rwelision;




  unsigned char __pad1[7];


  unsigned long int __pad2;


  unsigned int __flags;
# 55 "/usr/include/bits/struct_rwlock.h" 3 4
};
# 88 "/usr/include/bits/thread-shared-types.h" 2 3 4




struct __pthread_cond_s
{
  __extension__ union
  {
    __extension__ unsigned long long int __wseq;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __wseq32;
  };
  __extension__ union
  {
    __extension__ unsigned long long int __g1_start;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __g1_start32;
  };
  unsigned int __g_refs[2] ;
  unsigned int __g_size[2];
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
};

typedef unsigned int __tss_t;
typedef unsigned long int __thrd_t;

typedef struct
{
  int __data ;
} __once_flag;
# 24 "/usr/include/bits/pthreadtypes.h" 2 3 4



typedef unsigned long int pthread_t;




typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;


union pthread_attr_t
{
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;




typedef union
{
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;


typedef union
{
  struct __pthread_cond_s __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;





typedef union
{
  struct __pthread_rwlock_arch_t __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 228 "/usr/include/sys/types.h" 2 3 4


}
# 395 "/usr/include/stdlib.h" 2 3 4






extern long int random (void) noexcept (true);


extern void srandom (unsigned int __seed) noexcept (true);





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) noexcept (true) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) noexcept (true) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) noexcept (true) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     noexcept (true) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     noexcept (true) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));





extern int rand (void) noexcept (true);

extern void srand (unsigned int __seed) noexcept (true);



extern int rand_r (unsigned int *__seed) noexcept (true);







extern double drand48 (void) noexcept (true);
extern double erand48 (unsigned short int __xsubi[3]) noexcept (true) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) noexcept (true);
extern long int nrand48 (unsigned short int __xsubi[3])
     noexcept (true) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) noexcept (true);
extern long int jrand48 (unsigned short int __xsubi[3])
     noexcept (true) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) noexcept (true);
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     noexcept (true) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) noexcept (true) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;

  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) noexcept (true) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) noexcept (true) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     noexcept (true) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) noexcept (true) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2)));




extern void *malloc (size_t __size) noexcept (true) __attribute__ ((__malloc__))
     __attribute__ ((__alloc_size__ (1))) ;

extern void *calloc (size_t __nmemb, size_t __size)
     noexcept (true) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (1, 2))) ;






extern void *realloc (void *__ptr, size_t __size)
     noexcept (true) __attribute__ ((__warn_unused_result__)) __attribute__ ((__alloc_size__ (2)));







extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     noexcept (true) __attribute__ ((__warn_unused_result__))
     __attribute__ ((__alloc_size__ (2, 3)));



extern void free (void *__ptr) noexcept (true);


# 1 "/usr/include/alloca.h" 1 3 4
# 24 "/usr/include/alloca.h" 3 4
# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stddef.h" 1 3 4
# 25 "/usr/include/alloca.h" 2 3 4

extern "C" {





extern void *alloca (size_t __size) noexcept (true);





}
# 569 "/usr/include/stdlib.h" 2 3 4





extern void *valloc (size_t __size) noexcept (true) __attribute__ ((__malloc__))
     __attribute__ ((__alloc_size__ (1))) ;




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     noexcept (true) __attribute__ ((__nonnull__ (1))) ;




extern void *aligned_alloc (size_t __alignment, size_t __size)
     noexcept (true) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (2))) ;



extern void abort (void) noexcept (true) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) noexcept (true) __attribute__ ((__nonnull__ (1)));




extern "C++" int at_quick_exit (void (*__func) (void))
     noexcept (true) __asm ("at_quick_exit") __attribute__ ((__nonnull__ (1)));
# 610 "/usr/include/stdlib.h" 3 4
extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     noexcept (true) __attribute__ ((__nonnull__ (1)));





extern void exit (int __status) noexcept (true) __attribute__ ((__noreturn__));





extern void quick_exit (int __status) noexcept (true) __attribute__ ((__noreturn__));





extern void _Exit (int __status) noexcept (true) __attribute__ ((__noreturn__));




extern char *getenv (const char *__name) noexcept (true) __attribute__ ((__nonnull__ (1))) ;




extern char *secure_getenv (const char *__name)
     noexcept (true) __attribute__ ((__nonnull__ (1))) ;






extern int putenv (char *__string) noexcept (true) __attribute__ ((__nonnull__ (1)));





extern int setenv (const char *__name, const char *__value, int __replace)
     noexcept (true) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (const char *__name) noexcept (true) __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) noexcept (true);
# 675 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) noexcept (true) __attribute__ ((__nonnull__ (1)));
# 688 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 698 "/usr/include/stdlib.h" 3 4
extern int mkstemp64 (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 710 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
# 720 "/usr/include/stdlib.h" 3 4
extern int mkstemps64 (char *__template, int __suffixlen)
     __attribute__ ((__nonnull__ (1))) ;
# 731 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) noexcept (true) __attribute__ ((__nonnull__ (1))) ;
# 742 "/usr/include/stdlib.h" 3 4
extern int mkostemp (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) ;
# 752 "/usr/include/stdlib.h" 3 4
extern int mkostemp64 (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) ;
# 762 "/usr/include/stdlib.h" 3 4
extern int mkostemps (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) ;
# 774 "/usr/include/stdlib.h" 3 4
extern int mkostemps64 (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) ;
# 784 "/usr/include/stdlib.h" 3 4
extern int system (const char *__command) ;





extern char *canonicalize_file_name (const char *__name)
     noexcept (true) __attribute__ ((__nonnull__ (1))) ;
# 800 "/usr/include/stdlib.h" 3 4
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) noexcept (true) ;






typedef int (*__compar_fn_t) (const void *, const void *);


typedef __compar_fn_t comparison_fn_t;



typedef int (*__compar_d_fn_t) (const void *, const void *, void *);




extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;







extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));

extern void qsort_r (void *__base, size_t __nmemb, size_t __size,
       __compar_d_fn_t __compar, void *__arg)
  __attribute__ ((__nonnull__ (1, 4)));




extern int abs (int __x) noexcept (true) __attribute__ ((__const__)) ;
extern long int labs (long int __x) noexcept (true) __attribute__ ((__const__)) ;


__extension__ extern long long int llabs (long long int __x)
     noexcept (true) __attribute__ ((__const__)) ;






extern div_t div (int __numer, int __denom)
     noexcept (true) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     noexcept (true) __attribute__ ((__const__)) ;


__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     noexcept (true) __attribute__ ((__const__)) ;
# 872 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) noexcept (true) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) noexcept (true) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *gcvt (double __value, int __ndigit, char *__buf)
     noexcept (true) __attribute__ ((__nonnull__ (3))) ;




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     noexcept (true) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     noexcept (true) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     noexcept (true) __attribute__ ((__nonnull__ (3))) ;




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) noexcept (true) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) noexcept (true) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     noexcept (true) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     noexcept (true) __attribute__ ((__nonnull__ (3, 4, 5)));





extern int mblen (const char *__s, size_t __n) noexcept (true);


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) noexcept (true);


extern int wctomb (char *__s, wchar_t __wchar) noexcept (true);



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) noexcept (true)
    __attribute__ ((__access__ (__read_only__, 2)));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     noexcept (true)
  __attribute__ ((__access__ (__write_only__, 1, 3))) __attribute__ ((__access__ (__read_only__, 2)));






extern int rpmatch (const char *__response) noexcept (true) __attribute__ ((__nonnull__ (1))) ;
# 958 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     noexcept (true) __attribute__ ((__nonnull__ (1, 2, 3))) ;







extern int posix_openpt (int __oflag) ;







extern int grantpt (int __fd) noexcept (true);



extern int unlockpt (int __fd) noexcept (true);




extern char *ptsname (int __fd) noexcept (true) ;






extern int ptsname_r (int __fd, char *__buf, size_t __buflen)
     noexcept (true) __attribute__ ((__nonnull__ (2))) __attribute__ ((__access__ (__write_only__, 2, 3)));


extern int getpt (void);






extern int getloadavg (double __loadavg[], int __nelem)
     noexcept (true) __attribute__ ((__nonnull__ (1)));
# 1014 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/bits/stdlib-float.h" 1 3 4
# 1015 "/usr/include/stdlib.h" 2 3 4
# 1026 "/usr/include/stdlib.h" 3 4
}
# 39 "/usr/include/c++/10.2.0/bits/std_abs.h" 2 3







extern "C++"
{
namespace std __attribute__ ((__visibility__ ("default")))
{


  using ::abs;


  inline long
  abs(long __i) { return __builtin_labs(__i); }



  inline long long
  abs(long long __x) { return __builtin_llabs (__x); }
# 70 "/usr/include/c++/10.2.0/bits/std_abs.h" 3
  inline constexpr double
  abs(double __x)
  { return __builtin_fabs(__x); }

  inline constexpr float
  abs(float __x)
  { return __builtin_fabsf(__x); }

  inline constexpr long double
  abs(long double __x)
  { return __builtin_fabsl(__x); }



  inline constexpr __int128
  abs(__int128 __x) { return __x >= 0 ? __x : -__x; }
# 101 "/usr/include/c++/10.2.0/bits/std_abs.h" 3
  inline constexpr
  __float128
  abs(__float128 __x)
  { return __x < 0 ? -__x : __x; }



}
}
# 48 "/usr/include/c++/10.2.0/cmath" 2 3
# 77 "/usr/include/c++/10.2.0/cmath" 3
extern "C++"
{
namespace std __attribute__ ((__visibility__ ("default")))
{


  using ::acos;


  inline constexpr float
  acos(float __x)
  { return __builtin_acosf(__x); }

  inline constexpr long double
  acos(long double __x)
  { return __builtin_acosl(__x); }


  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    acos(_Tp __x)
    { return __builtin_acos(__x); }

  using ::asin;


  inline constexpr float
  asin(float __x)
  { return __builtin_asinf(__x); }

  inline constexpr long double
  asin(long double __x)
  { return __builtin_asinl(__x); }


  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    asin(_Tp __x)
    { return __builtin_asin(__x); }

  using ::atan;


  inline constexpr float
  atan(float __x)
  { return __builtin_atanf(__x); }

  inline constexpr long double
  atan(long double __x)
  { return __builtin_atanl(__x); }


  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    atan(_Tp __x)
    { return __builtin_atan(__x); }

  using ::atan2;


  inline constexpr float
  atan2(float __y, float __x)
  { return __builtin_atan2f(__y, __x); }

  inline constexpr long double
  atan2(long double __y, long double __x)
  { return __builtin_atan2l(__y, __x); }


  template<typename _Tp, typename _Up>
    inline constexpr
    typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    atan2(_Tp __y, _Up __x)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return atan2(__type(__y), __type(__x));
    }

  using ::ceil;


  inline constexpr float
  ceil(float __x)
  { return __builtin_ceilf(__x); }

  inline constexpr long double
  ceil(long double __x)
  { return __builtin_ceill(__x); }


  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    ceil(_Tp __x)
    { return __builtin_ceil(__x); }

  using ::cos;


  inline constexpr float
  cos(float __x)
  { return __builtin_cosf(__x); }

  inline constexpr long double
  cos(long double __x)
  { return __builtin_cosl(__x); }


  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    cos(_Tp __x)
    { return __builtin_cos(__x); }

  using ::cosh;


  inline constexpr float
  cosh(float __x)
  { return __builtin_coshf(__x); }

  inline constexpr long double
  cosh(long double __x)
  { return __builtin_coshl(__x); }


  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    cosh(_Tp __x)
    { return __builtin_cosh(__x); }

  using ::exp;


  inline constexpr float
  exp(float __x)
  { return __builtin_expf(__x); }

  inline constexpr long double
  exp(long double __x)
  { return __builtin_expl(__x); }


  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    exp(_Tp __x)
    { return __builtin_exp(__x); }

  using ::fabs;


  inline constexpr float
  fabs(float __x)
  { return __builtin_fabsf(__x); }

  inline constexpr long double
  fabs(long double __x)
  { return __builtin_fabsl(__x); }


  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    fabs(_Tp __x)
    { return __builtin_fabs(__x); }

  using ::floor;


  inline constexpr float
  floor(float __x)
  { return __builtin_floorf(__x); }

  inline constexpr long double
  floor(long double __x)
  { return __builtin_floorl(__x); }


  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    floor(_Tp __x)
    { return __builtin_floor(__x); }

  using ::fmod;


  inline constexpr float
  fmod(float __x, float __y)
  { return __builtin_fmodf(__x, __y); }

  inline constexpr long double
  fmod(long double __x, long double __y)
  { return __builtin_fmodl(__x, __y); }


  template<typename _Tp, typename _Up>
    inline constexpr
    typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    fmod(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return fmod(__type(__x), __type(__y));
    }

  using ::frexp;


  inline float
  frexp(float __x, int* __exp)
  { return __builtin_frexpf(__x, __exp); }

  inline long double
  frexp(long double __x, int* __exp)
  { return __builtin_frexpl(__x, __exp); }


  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    frexp(_Tp __x, int* __exp)
    { return __builtin_frexp(__x, __exp); }

  using ::ldexp;


  inline constexpr float
  ldexp(float __x, int __exp)
  { return __builtin_ldexpf(__x, __exp); }

  inline constexpr long double
  ldexp(long double __x, int __exp)
  { return __builtin_ldexpl(__x, __exp); }


  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    ldexp(_Tp __x, int __exp)
    { return __builtin_ldexp(__x, __exp); }

  using ::log;


  inline constexpr float
  log(float __x)
  { return __builtin_logf(__x); }

  inline constexpr long double
  log(long double __x)
  { return __builtin_logl(__x); }


  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    log(_Tp __x)
    { return __builtin_log(__x); }

  using ::log10;


  inline constexpr float
  log10(float __x)
  { return __builtin_log10f(__x); }

  inline constexpr long double
  log10(long double __x)
  { return __builtin_log10l(__x); }


  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    log10(_Tp __x)
    { return __builtin_log10(__x); }

  using ::modf;


  inline float
  modf(float __x, float* __iptr)
  { return __builtin_modff(__x, __iptr); }

  inline long double
  modf(long double __x, long double* __iptr)
  { return __builtin_modfl(__x, __iptr); }


  using ::pow;


  inline constexpr float
  pow(float __x, float __y)
  { return __builtin_powf(__x, __y); }

  inline constexpr long double
  pow(long double __x, long double __y)
  { return __builtin_powl(__x, __y); }
# 412 "/usr/include/c++/10.2.0/cmath" 3
  template<typename _Tp, typename _Up>
    inline constexpr
    typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    pow(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return pow(__type(__x), __type(__y));
    }

  using ::sin;


  inline constexpr float
  sin(float __x)
  { return __builtin_sinf(__x); }

  inline constexpr long double
  sin(long double __x)
  { return __builtin_sinl(__x); }


  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    sin(_Tp __x)
    { return __builtin_sin(__x); }

  using ::sinh;


  inline constexpr float
  sinh(float __x)
  { return __builtin_sinhf(__x); }

  inline constexpr long double
  sinh(long double __x)
  { return __builtin_sinhl(__x); }


  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    sinh(_Tp __x)
    { return __builtin_sinh(__x); }

  using ::sqrt;


  inline constexpr float
  sqrt(float __x)
  { return __builtin_sqrtf(__x); }

  inline constexpr long double
  sqrt(long double __x)
  { return __builtin_sqrtl(__x); }


  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    sqrt(_Tp __x)
    { return __builtin_sqrt(__x); }

  using ::tan;


  inline constexpr float
  tan(float __x)
  { return __builtin_tanf(__x); }

  inline constexpr long double
  tan(long double __x)
  { return __builtin_tanl(__x); }


  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    tan(_Tp __x)
    { return __builtin_tan(__x); }

  using ::tanh;


  inline constexpr float
  tanh(float __x)
  { return __builtin_tanhf(__x); }

  inline constexpr long double
  tanh(long double __x)
  { return __builtin_tanhl(__x); }


  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    tanh(_Tp __x)
    { return __builtin_tanh(__x); }
# 536 "/usr/include/c++/10.2.0/cmath" 3
  constexpr int
  fpclassify(float __x)
  { return __builtin_fpclassify(0, 1, 4,
    3, 2, __x); }

  constexpr int
  fpclassify(double __x)
  { return __builtin_fpclassify(0, 1, 4,
    3, 2, __x); }

  constexpr int
  fpclassify(long double __x)
  { return __builtin_fpclassify(0, 1, 4,
    3, 2, __x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              int>::__type
    fpclassify(_Tp __x)
    { return __x != 0 ? 4 : 2; }



  constexpr bool
  isfinite(float __x)
  { return __builtin_isfinite(__x); }

  constexpr bool
  isfinite(double __x)
  { return __builtin_isfinite(__x); }

  constexpr bool
  isfinite(long double __x)
  { return __builtin_isfinite(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              bool>::__type
    isfinite(_Tp __x)
    { return true; }



  constexpr bool
  isinf(float __x)
  { return __builtin_isinf(__x); }





  constexpr bool
  isinf(double __x)
  { return __builtin_isinf(__x); }


  constexpr bool
  isinf(long double __x)
  { return __builtin_isinf(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              bool>::__type
    isinf(_Tp __x)
    { return false; }



  constexpr bool
  isnan(float __x)
  { return __builtin_isnan(__x); }





  constexpr bool
  isnan(double __x)
  { return __builtin_isnan(__x); }


  constexpr bool
  isnan(long double __x)
  { return __builtin_isnan(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              bool>::__type
    isnan(_Tp __x)
    { return false; }



  constexpr bool
  isnormal(float __x)
  { return __builtin_isnormal(__x); }

  constexpr bool
  isnormal(double __x)
  { return __builtin_isnormal(__x); }

  constexpr bool
  isnormal(long double __x)
  { return __builtin_isnormal(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              bool>::__type
    isnormal(_Tp __x)
    { return __x != 0 ? true : false; }




  constexpr bool
  signbit(float __x)
  { return __builtin_signbit(__x); }

  constexpr bool
  signbit(double __x)
  { return __builtin_signbit(__x); }

  constexpr bool
  signbit(long double __x)
  { return __builtin_signbit(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              bool>::__type
    signbit(_Tp __x)
    { return __x < 0 ? true : false; }



  constexpr bool
  isgreater(float __x, float __y)
  { return __builtin_isgreater(__x, __y); }

  constexpr bool
  isgreater(double __x, double __y)
  { return __builtin_isgreater(__x, __y); }

  constexpr bool
  isgreater(long double __x, long double __y)
  { return __builtin_isgreater(__x, __y); }



  template<typename _Tp, typename _Up>
    constexpr typename
    __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
       && __is_arithmetic<_Up>::__value), bool>::__type
    isgreater(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return __builtin_isgreater(__type(__x), __type(__y));
    }



  constexpr bool
  isgreaterequal(float __x, float __y)
  { return __builtin_isgreaterequal(__x, __y); }

  constexpr bool
  isgreaterequal(double __x, double __y)
  { return __builtin_isgreaterequal(__x, __y); }

  constexpr bool
  isgreaterequal(long double __x, long double __y)
  { return __builtin_isgreaterequal(__x, __y); }



  template<typename _Tp, typename _Up>
    constexpr typename
    __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
       && __is_arithmetic<_Up>::__value), bool>::__type
    isgreaterequal(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return __builtin_isgreaterequal(__type(__x), __type(__y));
    }



  constexpr bool
  isless(float __x, float __y)
  { return __builtin_isless(__x, __y); }

  constexpr bool
  isless(double __x, double __y)
  { return __builtin_isless(__x, __y); }

  constexpr bool
  isless(long double __x, long double __y)
  { return __builtin_isless(__x, __y); }



  template<typename _Tp, typename _Up>
    constexpr typename
    __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
       && __is_arithmetic<_Up>::__value), bool>::__type
    isless(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return __builtin_isless(__type(__x), __type(__y));
    }



  constexpr bool
  islessequal(float __x, float __y)
  { return __builtin_islessequal(__x, __y); }

  constexpr bool
  islessequal(double __x, double __y)
  { return __builtin_islessequal(__x, __y); }

  constexpr bool
  islessequal(long double __x, long double __y)
  { return __builtin_islessequal(__x, __y); }



  template<typename _Tp, typename _Up>
    constexpr typename
    __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
       && __is_arithmetic<_Up>::__value), bool>::__type
    islessequal(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return __builtin_islessequal(__type(__x), __type(__y));
    }



  constexpr bool
  islessgreater(float __x, float __y)
  { return __builtin_islessgreater(__x, __y); }

  constexpr bool
  islessgreater(double __x, double __y)
  { return __builtin_islessgreater(__x, __y); }

  constexpr bool
  islessgreater(long double __x, long double __y)
  { return __builtin_islessgreater(__x, __y); }



  template<typename _Tp, typename _Up>
    constexpr typename
    __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
       && __is_arithmetic<_Up>::__value), bool>::__type
    islessgreater(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return __builtin_islessgreater(__type(__x), __type(__y));
    }



  constexpr bool
  isunordered(float __x, float __y)
  { return __builtin_isunordered(__x, __y); }

  constexpr bool
  isunordered(double __x, double __y)
  { return __builtin_isunordered(__x, __y); }

  constexpr bool
  isunordered(long double __x, long double __y)
  { return __builtin_isunordered(__x, __y); }



  template<typename _Tp, typename _Up>
    constexpr typename
    __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
       && __is_arithmetic<_Up>::__value), bool>::__type
    isunordered(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return __builtin_isunordered(__type(__x), __type(__y));
    }
# 1065 "/usr/include/c++/10.2.0/cmath" 3
  using ::double_t;
  using ::float_t;


  using ::acosh;
  using ::acoshf;
  using ::acoshl;

  using ::asinh;
  using ::asinhf;
  using ::asinhl;

  using ::atanh;
  using ::atanhf;
  using ::atanhl;

  using ::cbrt;
  using ::cbrtf;
  using ::cbrtl;

  using ::copysign;
  using ::copysignf;
  using ::copysignl;

  using ::erf;
  using ::erff;
  using ::erfl;

  using ::erfc;
  using ::erfcf;
  using ::erfcl;

  using ::exp2;
  using ::exp2f;
  using ::exp2l;

  using ::expm1;
  using ::expm1f;
  using ::expm1l;

  using ::fdim;
  using ::fdimf;
  using ::fdiml;

  using ::fma;
  using ::fmaf;
  using ::fmal;

  using ::fmax;
  using ::fmaxf;
  using ::fmaxl;

  using ::fmin;
  using ::fminf;
  using ::fminl;

  using ::hypot;
  using ::hypotf;
  using ::hypotl;

  using ::ilogb;
  using ::ilogbf;
  using ::ilogbl;

  using ::lgamma;
  using ::lgammaf;
  using ::lgammal;


  using ::llrint;
  using ::llrintf;
  using ::llrintl;

  using ::llround;
  using ::llroundf;
  using ::llroundl;


  using ::log1p;
  using ::log1pf;
  using ::log1pl;

  using ::log2;
  using ::log2f;
  using ::log2l;

  using ::logb;
  using ::logbf;
  using ::logbl;

  using ::lrint;
  using ::lrintf;
  using ::lrintl;

  using ::lround;
  using ::lroundf;
  using ::lroundl;

  using ::nan;
  using ::nanf;
  using ::nanl;

  using ::nearbyint;
  using ::nearbyintf;
  using ::nearbyintl;

  using ::nextafter;
  using ::nextafterf;
  using ::nextafterl;

  using ::nexttoward;
  using ::nexttowardf;
  using ::nexttowardl;

  using ::remainder;
  using ::remainderf;
  using ::remainderl;

  using ::remquo;
  using ::remquof;
  using ::remquol;

  using ::rint;
  using ::rintf;
  using ::rintl;

  using ::round;
  using ::roundf;
  using ::roundl;

  using ::scalbln;
  using ::scalblnf;
  using ::scalblnl;

  using ::scalbn;
  using ::scalbnf;
  using ::scalbnl;

  using ::tgamma;
  using ::tgammaf;
  using ::tgammal;

  using ::trunc;
  using ::truncf;
  using ::truncl;



  constexpr float
  acosh(float __x)
  { return __builtin_acoshf(__x); }

  constexpr long double
  acosh(long double __x)
  { return __builtin_acoshl(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    acosh(_Tp __x)
    { return __builtin_acosh(__x); }



  constexpr float
  asinh(float __x)
  { return __builtin_asinhf(__x); }

  constexpr long double
  asinh(long double __x)
  { return __builtin_asinhl(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    asinh(_Tp __x)
    { return __builtin_asinh(__x); }



  constexpr float
  atanh(float __x)
  { return __builtin_atanhf(__x); }

  constexpr long double
  atanh(long double __x)
  { return __builtin_atanhl(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    atanh(_Tp __x)
    { return __builtin_atanh(__x); }



  constexpr float
  cbrt(float __x)
  { return __builtin_cbrtf(__x); }

  constexpr long double
  cbrt(long double __x)
  { return __builtin_cbrtl(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    cbrt(_Tp __x)
    { return __builtin_cbrt(__x); }



  constexpr float
  copysign(float __x, float __y)
  { return __builtin_copysignf(__x, __y); }

  constexpr long double
  copysign(long double __x, long double __y)
  { return __builtin_copysignl(__x, __y); }



  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    copysign(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return copysign(__type(__x), __type(__y));
    }



  constexpr float
  erf(float __x)
  { return __builtin_erff(__x); }

  constexpr long double
  erf(long double __x)
  { return __builtin_erfl(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    erf(_Tp __x)
    { return __builtin_erf(__x); }



  constexpr float
  erfc(float __x)
  { return __builtin_erfcf(__x); }

  constexpr long double
  erfc(long double __x)
  { return __builtin_erfcl(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    erfc(_Tp __x)
    { return __builtin_erfc(__x); }



  constexpr float
  exp2(float __x)
  { return __builtin_exp2f(__x); }

  constexpr long double
  exp2(long double __x)
  { return __builtin_exp2l(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    exp2(_Tp __x)
    { return __builtin_exp2(__x); }



  constexpr float
  expm1(float __x)
  { return __builtin_expm1f(__x); }

  constexpr long double
  expm1(long double __x)
  { return __builtin_expm1l(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    expm1(_Tp __x)
    { return __builtin_expm1(__x); }



  constexpr float
  fdim(float __x, float __y)
  { return __builtin_fdimf(__x, __y); }

  constexpr long double
  fdim(long double __x, long double __y)
  { return __builtin_fdiml(__x, __y); }



  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    fdim(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return fdim(__type(__x), __type(__y));
    }



  constexpr float
  fma(float __x, float __y, float __z)
  { return __builtin_fmaf(__x, __y, __z); }

  constexpr long double
  fma(long double __x, long double __y, long double __z)
  { return __builtin_fmal(__x, __y, __z); }



  template<typename _Tp, typename _Up, typename _Vp>
    constexpr typename __gnu_cxx::__promote_3<_Tp, _Up, _Vp>::__type
    fma(_Tp __x, _Up __y, _Vp __z)
    {
      typedef typename __gnu_cxx::__promote_3<_Tp, _Up, _Vp>::__type __type;
      return fma(__type(__x), __type(__y), __type(__z));
    }



  constexpr float
  fmax(float __x, float __y)
  { return __builtin_fmaxf(__x, __y); }

  constexpr long double
  fmax(long double __x, long double __y)
  { return __builtin_fmaxl(__x, __y); }



  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    fmax(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return fmax(__type(__x), __type(__y));
    }



  constexpr float
  fmin(float __x, float __y)
  { return __builtin_fminf(__x, __y); }

  constexpr long double
  fmin(long double __x, long double __y)
  { return __builtin_fminl(__x, __y); }



  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    fmin(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return fmin(__type(__x), __type(__y));
    }



  constexpr float
  hypot(float __x, float __y)
  { return __builtin_hypotf(__x, __y); }

  constexpr long double
  hypot(long double __x, long double __y)
  { return __builtin_hypotl(__x, __y); }



  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    hypot(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return hypot(__type(__x), __type(__y));
    }



  constexpr int
  ilogb(float __x)
  { return __builtin_ilogbf(__x); }

  constexpr int
  ilogb(long double __x)
  { return __builtin_ilogbl(__x); }



  template<typename _Tp>
    constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    int>::__type
    ilogb(_Tp __x)
    { return __builtin_ilogb(__x); }



  constexpr float
  lgamma(float __x)
  { return __builtin_lgammaf(__x); }

  constexpr long double
  lgamma(long double __x)
  { return __builtin_lgammal(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    lgamma(_Tp __x)
    { return __builtin_lgamma(__x); }



  constexpr long long
  llrint(float __x)
  { return __builtin_llrintf(__x); }

  constexpr long long
  llrint(long double __x)
  { return __builtin_llrintl(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              long long>::__type
    llrint(_Tp __x)
    { return __builtin_llrint(__x); }



  constexpr long long
  llround(float __x)
  { return __builtin_llroundf(__x); }

  constexpr long long
  llround(long double __x)
  { return __builtin_llroundl(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              long long>::__type
    llround(_Tp __x)
    { return __builtin_llround(__x); }



  constexpr float
  log1p(float __x)
  { return __builtin_log1pf(__x); }

  constexpr long double
  log1p(long double __x)
  { return __builtin_log1pl(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    log1p(_Tp __x)
    { return __builtin_log1p(__x); }




  constexpr float
  log2(float __x)
  { return __builtin_log2f(__x); }

  constexpr long double
  log2(long double __x)
  { return __builtin_log2l(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    log2(_Tp __x)
    { return __builtin_log2(__x); }



  constexpr float
  logb(float __x)
  { return __builtin_logbf(__x); }

  constexpr long double
  logb(long double __x)
  { return __builtin_logbl(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    logb(_Tp __x)
    { return __builtin_logb(__x); }



  constexpr long
  lrint(float __x)
  { return __builtin_lrintf(__x); }

  constexpr long
  lrint(long double __x)
  { return __builtin_lrintl(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              long>::__type
    lrint(_Tp __x)
    { return __builtin_lrint(__x); }



  constexpr long
  lround(float __x)
  { return __builtin_lroundf(__x); }

  constexpr long
  lround(long double __x)
  { return __builtin_lroundl(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              long>::__type
    lround(_Tp __x)
    { return __builtin_lround(__x); }



  constexpr float
  nearbyint(float __x)
  { return __builtin_nearbyintf(__x); }

  constexpr long double
  nearbyint(long double __x)
  { return __builtin_nearbyintl(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    nearbyint(_Tp __x)
    { return __builtin_nearbyint(__x); }



  constexpr float
  nextafter(float __x, float __y)
  { return __builtin_nextafterf(__x, __y); }

  constexpr long double
  nextafter(long double __x, long double __y)
  { return __builtin_nextafterl(__x, __y); }



  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    nextafter(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return nextafter(__type(__x), __type(__y));
    }



  constexpr float
  nexttoward(float __x, long double __y)
  { return __builtin_nexttowardf(__x, __y); }

  constexpr long double
  nexttoward(long double __x, long double __y)
  { return __builtin_nexttowardl(__x, __y); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    nexttoward(_Tp __x, long double __y)
    { return __builtin_nexttoward(__x, __y); }



  constexpr float
  remainder(float __x, float __y)
  { return __builtin_remainderf(__x, __y); }

  constexpr long double
  remainder(long double __x, long double __y)
  { return __builtin_remainderl(__x, __y); }



  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    remainder(_Tp __x, _Up __y)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return remainder(__type(__x), __type(__y));
    }



  inline float
  remquo(float __x, float __y, int* __pquo)
  { return __builtin_remquof(__x, __y, __pquo); }

  inline long double
  remquo(long double __x, long double __y, int* __pquo)
  { return __builtin_remquol(__x, __y, __pquo); }



  template<typename _Tp, typename _Up>
    inline typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    remquo(_Tp __x, _Up __y, int* __pquo)
    {
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return remquo(__type(__x), __type(__y), __pquo);
    }



  constexpr float
  rint(float __x)
  { return __builtin_rintf(__x); }

  constexpr long double
  rint(long double __x)
  { return __builtin_rintl(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    rint(_Tp __x)
    { return __builtin_rint(__x); }



  constexpr float
  round(float __x)
  { return __builtin_roundf(__x); }

  constexpr long double
  round(long double __x)
  { return __builtin_roundl(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    round(_Tp __x)
    { return __builtin_round(__x); }



  constexpr float
  scalbln(float __x, long __ex)
  { return __builtin_scalblnf(__x, __ex); }

  constexpr long double
  scalbln(long double __x, long __ex)
  { return __builtin_scalblnl(__x, __ex); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    scalbln(_Tp __x, long __ex)
    { return __builtin_scalbln(__x, __ex); }



  constexpr float
  scalbn(float __x, int __ex)
  { return __builtin_scalbnf(__x, __ex); }

  constexpr long double
  scalbn(long double __x, int __ex)
  { return __builtin_scalbnl(__x, __ex); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    scalbn(_Tp __x, int __ex)
    { return __builtin_scalbn(__x, __ex); }



  constexpr float
  tgamma(float __x)
  { return __builtin_tgammaf(__x); }

  constexpr long double
  tgamma(long double __x)
  { return __builtin_tgammal(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    tgamma(_Tp __x)
    { return __builtin_tgamma(__x); }



  constexpr float
  trunc(float __x)
  { return __builtin_truncf(__x); }

  constexpr long double
  trunc(long double __x)
  { return __builtin_truncl(__x); }



  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    trunc(_Tp __x)
    { return __builtin_trunc(__x); }
# 1923 "/usr/include/c++/10.2.0/cmath" 3

}





}
# 19 "/usr/include/opencascade/Standard_Real.hxx" 2
# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/float.h" 1 3 4
# 20 "/usr/include/opencascade/Standard_Real.hxx" 2
# 1 "/usr/include/opencascade/Standard_values.h" 1
# 23 "/usr/include/opencascade/Standard_values.h"
# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include-fixed/limits.h" 1 3 4
# 34 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include-fixed/limits.h" 3 4
# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include-fixed/syslimits.h" 1 3 4






# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include-fixed/limits.h" 1 3 4
# 195 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include-fixed/limits.h" 3 4
# 1 "/usr/include/limits.h" 1 3 4
# 26 "/usr/include/limits.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/limits.h" 2 3 4
# 195 "/usr/include/limits.h" 3 4
# 1 "/usr/include/bits/posix1_lim.h" 1 3 4
# 27 "/usr/include/bits/posix1_lim.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/bits/posix1_lim.h" 2 3 4
# 161 "/usr/include/bits/posix1_lim.h" 3 4
# 1 "/usr/include/bits/local_lim.h" 1 3 4
# 38 "/usr/include/bits/local_lim.h" 3 4
# 1 "/usr/include/linux/limits.h" 1 3 4
# 39 "/usr/include/bits/local_lim.h" 2 3 4
# 162 "/usr/include/bits/posix1_lim.h" 2 3 4
# 196 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/bits/posix2_lim.h" 1 3 4
# 200 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/bits/xopen_lim.h" 1 3 4
# 64 "/usr/include/bits/xopen_lim.h" 3 4
# 1 "/usr/include/bits/uio_lim.h" 1 3 4
# 65 "/usr/include/bits/xopen_lim.h" 2 3 4
# 204 "/usr/include/limits.h" 2 3 4
# 196 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include-fixed/limits.h" 2 3 4
# 8 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include-fixed/syslimits.h" 2 3 4
# 35 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include-fixed/limits.h" 2 3 4
# 24 "/usr/include/opencascade/Standard_values.h" 2
# 21 "/usr/include/opencascade/Standard_Real.hxx" 2
# 1 "/usr/include/opencascade/Standard_math.hxx" 1
# 16 "/usr/include/opencascade/Standard_math.hxx"
# 1 "/usr/include/opencascade/Standard_Macro.hxx" 1
# 17 "/usr/include/opencascade/Standard_math.hxx" 2
# 22 "/usr/include/opencascade/Standard_Real.hxx" 2
# 1 "/usr/include/opencascade/Standard_TypeDef.hxx" 1
# 18 "/usr/include/opencascade/Standard_TypeDef.hxx"
# 1 "/usr/include/c++/10.2.0/cstddef" 1 3
# 42 "/usr/include/c++/10.2.0/cstddef" 3
       
# 43 "/usr/include/c++/10.2.0/cstddef" 3







# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stddef.h" 1 3 4
# 143 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 415 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 426 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stddef.h" 3 4
} max_align_t;






  typedef decltype(nullptr) nullptr_t;
# 51 "/usr/include/c++/10.2.0/cstddef" 2 3

extern "C++"
{

namespace std
{

  using ::max_align_t;
}
# 179 "/usr/include/c++/10.2.0/cstddef" 3
}
# 19 "/usr/include/opencascade/Standard_TypeDef.hxx" 2
# 1 "/usr/include/c++/10.2.0/ctime" 1 3
# 39 "/usr/include/c++/10.2.0/ctime" 3
       
# 40 "/usr/include/c++/10.2.0/ctime" 3


# 1 "/usr/include/time.h" 1 3 4
# 29 "/usr/include/time.h" 3 4
# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stddef.h" 1 3 4
# 30 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/bits/time.h" 1 3 4
# 73 "/usr/include/bits/time.h" 3 4
# 1 "/usr/include/bits/timex.h" 1 3 4
# 26 "/usr/include/bits/timex.h" 3 4
struct timex
{
  unsigned int modes;
  __syscall_slong_t offset;
  __syscall_slong_t freq;
  __syscall_slong_t maxerror;
  __syscall_slong_t esterror;
  int status;
  __syscall_slong_t constant;
  __syscall_slong_t precision;
  __syscall_slong_t tolerance;
  struct timeval time;
  __syscall_slong_t tick;
  __syscall_slong_t ppsfreq;
  __syscall_slong_t jitter;
  int shift;
  __syscall_slong_t stabil;
  __syscall_slong_t jitcnt;
  __syscall_slong_t calcnt;
  __syscall_slong_t errcnt;
  __syscall_slong_t stbcnt;

  int tai;


  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32;
};
# 74 "/usr/include/bits/time.h" 2 3 4

extern "C" {


extern int clock_adjtime (__clockid_t __clock_id, struct timex *__utx) noexcept (true);

}
# 34 "/usr/include/time.h" 2 3 4





# 1 "/usr/include/bits/types/struct_tm.h" 1 3 4






struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;


  long int tm_gmtoff;
  const char *tm_zone;




};
# 40 "/usr/include/time.h" 2 3 4
# 48 "/usr/include/time.h" 3 4
# 1 "/usr/include/bits/types/struct_itimerspec.h" 1 3 4







struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };
# 49 "/usr/include/time.h" 2 3 4
struct sigevent;
# 68 "/usr/include/time.h" 3 4
extern "C" {



extern clock_t clock (void) noexcept (true);


extern time_t time (time_t *__timer) noexcept (true);


extern double difftime (time_t __time1, time_t __time0)
     noexcept (true) __attribute__ ((__const__));


extern time_t mktime (struct tm *__tp) noexcept (true);





extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) noexcept (true);




extern char *strptime (const char *__restrict __s,
         const char *__restrict __fmt, struct tm *__tp)
     noexcept (true);






extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     locale_t __loc) noexcept (true);



extern char *strptime_l (const char *__restrict __s,
    const char *__restrict __fmt, struct tm *__tp,
    locale_t __loc) noexcept (true);





extern struct tm *gmtime (const time_t *__timer) noexcept (true);



extern struct tm *localtime (const time_t *__timer) noexcept (true);




extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) noexcept (true);



extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) noexcept (true);




extern char *asctime (const struct tm *__tp) noexcept (true);


extern char *ctime (const time_t *__timer) noexcept (true);






extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) noexcept (true);


extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) noexcept (true);




extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;




extern char *tzname[2];



extern void tzset (void) noexcept (true);



extern int daylight;
extern long int timezone;
# 190 "/usr/include/time.h" 3 4
extern time_t timegm (struct tm *__tp) noexcept (true);


extern time_t timelocal (struct tm *__tp) noexcept (true);


extern int dysize (int __year) noexcept (true) __attribute__ ((__const__));
# 205 "/usr/include/time.h" 3 4
extern int nanosleep (const struct timespec *__requested_time,
        struct timespec *__remaining);



extern int clock_getres (clockid_t __clock_id, struct timespec *__res) noexcept (true);


extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) noexcept (true);


extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
     noexcept (true);






extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       const struct timespec *__req,
       struct timespec *__rem);


extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) noexcept (true);




extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) noexcept (true);


extern int timer_delete (timer_t __timerid) noexcept (true);


extern int timer_settime (timer_t __timerid, int __flags,
     const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) noexcept (true);


extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     noexcept (true);


extern int timer_getoverrun (timer_t __timerid) noexcept (true);





extern int timespec_get (struct timespec *__ts, int __base)
     noexcept (true) __attribute__ ((__nonnull__ (1)));
# 274 "/usr/include/time.h" 3 4
extern int getdate_err;
# 283 "/usr/include/time.h" 3 4
extern struct tm *getdate (const char *__string);
# 297 "/usr/include/time.h" 3 4
extern int getdate_r (const char *__restrict __string,
        struct tm *__restrict __resbufp);


}
# 43 "/usr/include/c++/10.2.0/ctime" 2 3
# 58 "/usr/include/c++/10.2.0/ctime" 3
namespace std
{
  using ::clock_t;
  using ::time_t;
  using ::tm;

  using ::clock;
  using ::difftime;
  using ::mktime;
  using ::time;
  using ::asctime;
  using ::ctime;
  using ::gmtime;
  using ::localtime;
  using ::strftime;
}
# 20 "/usr/include/opencascade/Standard_TypeDef.hxx" 2
# 34 "/usr/include/opencascade/Standard_TypeDef.hxx"
# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stdint.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4

# 1 "/usr/include/bits/wchar.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 30 "/usr/include/stdint.h" 2 3 4







# 1 "/usr/include/bits/stdint-uintn.h" 1 3 4
# 24 "/usr/include/bits/stdint-uintn.h" 3 4
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3 4





typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;


typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;





typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 71 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 87 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 101 "/usr/include/stdint.h" 3 4
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 10 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stdint.h" 2 3 4
# 35 "/usr/include/opencascade/Standard_TypeDef.hxx" 2
# 61 "/usr/include/opencascade/Standard_TypeDef.hxx"
# 1 "/usr/include/inttypes.h" 1 3 4
# 266 "/usr/include/inttypes.h" 3 4
extern "C" {




typedef struct
  {
    long int quot;
    long int rem;
  } imaxdiv_t;
# 290 "/usr/include/inttypes.h" 3 4
extern intmax_t imaxabs (intmax_t __n) noexcept (true) __attribute__ ((__const__));


extern imaxdiv_t imaxdiv (intmax_t __numer, intmax_t __denom)
      noexcept (true) __attribute__ ((__const__));


extern intmax_t strtoimax (const char *__restrict __nptr,
      char **__restrict __endptr, int __base) noexcept (true);


extern uintmax_t strtoumax (const char *__restrict __nptr,
       char ** __restrict __endptr, int __base) noexcept (true);


extern intmax_t wcstoimax (const wchar_t *__restrict __nptr,
      wchar_t **__restrict __endptr, int __base)
     noexcept (true);


extern uintmax_t wcstoumax (const wchar_t *__restrict __nptr,
       wchar_t ** __restrict __endptr, int __base)
     noexcept (true);

}
# 62 "/usr/include/opencascade/Standard_TypeDef.hxx" 2








# 69 "/usr/include/opencascade/Standard_TypeDef.hxx"
typedef int Standard_Integer;
typedef double Standard_Real;
typedef bool Standard_Boolean;
typedef float Standard_ShortReal;
typedef char Standard_Character;
typedef unsigned char Standard_Byte;
typedef void* Standard_Address;
typedef size_t Standard_Size;
typedef std::time_t Standard_Time;


typedef char Standard_Utf8Char;
typedef unsigned char Standard_Utf8UChar;






typedef char16_t Standard_ExtCharacter;
typedef char16_t Standard_Utf16Char;
typedef char32_t Standard_Utf32Char;

typedef wchar_t Standard_WideChar;


typedef const Standard_Character* Standard_CString;
typedef const Standard_ExtCharacter* Standard_ExtString;
# 23 "/usr/include/opencascade/Standard_Real.hxx" 2
# 38 "/usr/include/opencascade/Standard_Real.hxx"
 Standard_Integer HashCode (Standard_Real theReal, Standard_Integer theUpperBound);

 Standard_Real ACos (const Standard_Real );
 Standard_Real ACosApprox (const Standard_Real );
 Standard_Real ASin (const Standard_Real );
 Standard_Real ATan2 (const Standard_Real , const Standard_Real );
 Standard_Real NextAfter (const Standard_Real , const Standard_Real );


 Standard_Real Sign(const Standard_Real a, const Standard_Real b);

 Standard_Real ATanh (const Standard_Real );
 Standard_Real ACosh (const Standard_Real );
 Standard_Real Sinh (const Standard_Real );
 Standard_Real Cosh (const Standard_Real );
 Standard_Real Log (const Standard_Real );
 Standard_Real Sqrt (const Standard_Real );




inline Standard_Real RealSmall()
{ return double(2.22507385850720138309023271733240406e-308L); }




inline Standard_Real Abs(const Standard_Real Value)
{ return fabs(Value); }





inline Standard_Boolean IsEqual (const Standard_Real Value1,
      const Standard_Real Value2)
{ return Abs((Value1 - Value2)) < RealSmall(); }
# 87 "/usr/include/opencascade/Standard_Real.hxx"
inline Standard_Integer RealDigits()
{ return 15; }





inline Standard_Real RealEpsilon()
{ return double(2.22044604925031308084726333618164062e-16L); }




inline Standard_Real RealFirst()
{ return -double(1.79769313486231570814527423731704357e+308L); }





inline Standard_Integer RealFirst10Exp()
{ return (-307); }




inline Standard_Real RealLast()
{ return double(1.79769313486231570814527423731704357e+308L); }





inline Standard_Integer RealLast10Exp()
{ return 308; }





inline Standard_Integer RealMantissa()
{ return 53; }




inline Standard_Integer RealRadix()
{ return 2; }




inline Standard_Integer RealSize()
{ return (8 * sizeof(Standard_Real)); }
# 152 "/usr/include/opencascade/Standard_Real.hxx"
inline Standard_Real IntToReal(const Standard_Integer Value)
{ return Value; }




inline Standard_Real ATan(const Standard_Real Value)
{ return atan(Value); }





inline Standard_Real Ceiling (const Standard_Real Value)
{ return ceil(Value); }




inline Standard_Real Cos (const Standard_Real Value)
{ return cos(Value); }
# 184 "/usr/include/opencascade/Standard_Real.hxx"
inline Standard_Real Epsilon (const Standard_Real Value)
{
  Standard_Real aEpsilon;

  if (Value>=0.0){
    aEpsilon = NextAfter(Value, RealLast()) - Value;
  } else {
    aEpsilon = Value - NextAfter(Value, RealFirst());
  }
  return aEpsilon;
}




inline Standard_Real Exp (const Standard_Real Value)
{ return exp(Value); }




inline Standard_Real Floor (const Standard_Real Value)
{ return floor(Value); }




inline Standard_Real IntegerPart (const Standard_Real Value)
{ return ( (Value>0) ? floor(Value) : ceil(Value) ); }





inline Standard_Real Log10 (const Standard_Real Value)
{ return log10(Value); }




inline Standard_Real Max (const Standard_Real Val1,
                              const Standard_Real Val2)
{
  return Val1 >= Val2 ? Val1 : Val2;
}




inline Standard_Real Min (const Standard_Real Val1,
                              const Standard_Real Val2)
{
  return Val1 <= Val2 ? Val1 : Val2;
}




inline Standard_Real Pow (const Standard_Real Value, const Standard_Real P)
{ return pow(Value,P); }




inline Standard_Real RealPart (const Standard_Real Value)
{ return fabs(IntegerPart(Value) - Value); }






inline Standard_Integer RealToInt (const Standard_Real Value)
{



  return Value < 
# 261 "/usr/include/opencascade/Standard_Real.hxx" 3 4
                (-0x7fffffff - 1) 
# 261 "/usr/include/opencascade/Standard_Real.hxx"
                        ? 
# 261 "/usr/include/opencascade/Standard_Real.hxx" 3 4
                          (-0x7fffffff - 1)
    
# 262 "/usr/include/opencascade/Standard_Real.hxx"
   : Value > 0x7fffffff ? 0x7fffffff
    : (Standard_Integer)Value;
}
# 273 "/usr/include/opencascade/Standard_Real.hxx"
inline Standard_ShortReal RealToShortReal (const Standard_Real theVal)
{
  return theVal < -3.40282346638528859811704183484516925e+38F ? -3.40282346638528859811704183484516925e+38F
    : theVal > 3.40282346638528859811704183484516925e+38F ? 3.40282346638528859811704183484516925e+38F
    : (Standard_ShortReal)theVal;
}




inline Standard_Real Round (const Standard_Real Value)
{ return IntegerPart(Value + (Value > 0 ? 0.5 : -0.5)); }




inline Standard_Real Sin (const Standard_Real Value)
{ return sin(Value); }





inline Standard_Real ASinh(const Standard_Real Value)



{ return asinh(Value); }





inline Standard_Real Square(const Standard_Real Value)
{ return Value * Value; }




inline Standard_Real Tan (const Standard_Real Value)
{ return tan(Value); }




inline Standard_Real Tanh (const Standard_Real Value)
{ return tanh(Value); }
# 21 "/usr/include/opencascade/Quantity_Luminance.hxx" 2




__attribute__((deprecated("This type is deprecated - Standard_Real should be used instead")))
typedef Standard_Real Quantity_Luminance;
