//----------------------------------------------------------------------------------
// File:        OptimizationApp/IceTypes.h
// SDK Version: v1.2 
// Email:       gameworks@nvidia.com
// Site:        http://developer.nvidia.com/
//----------------------------------------------------------------------------------
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/**
 *    Contains custom types.
 *    \file        IceTypes.h
 *    \author        Pierre Terdiman
 *    \date        April, 4, 2000
 */
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Include Guard
#ifndef __ICETYPES_H__
#define __ICETYPES_H__

#include <NvFoundation.h>


    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // CONSTANTS
    #define PI                    3.1415926535897932384626433832795028841971693993751f    //!<    PI
    #define HALFPI                1.57079632679489661923f                                    //!<    0.5 * PI
    #define TWOPI                6.28318530717958647692f                                    //!<    2.0 * PI
    #define INVPI                0.31830988618379067154f                                    //!<    1.0 / PI

    #define RADTODEG            57.2957795130823208768f                                    //!<    180.0 / PI, convert radians to degrees
    #define DEGTORAD            0.01745329251994329577f                                    //!<    PI / 180.0, convert degrees to radians

    #define EXP                    2.71828182845904523536f                                    //!<    e
    #define ILOG2                3.32192809488736234787f                                    //!<    1.0 / log10(2)

    #define INV3                0.33333333333333333333f                                    //!<    1/3
    #define INV6                0.16666666666666666666f                                    //!<    1/6
    #define INV7                0.14285714285714285714f                                    //!<    1/7
    #define INV9                0.11111111111111111111f                                    //!<    1/9
    #define INV255                0.00392156862745098039f                                    //!<    1/255

    #define null                0                                                        //!<    our own NULL pointer

    // New types
    typedef signed char            sbyte;        //!<    sizeof(sbyte)    must be 1
    typedef uint8_t        ubyte;        //!<    sizeof(ubyte)    must be 1
    typedef signed short        sword;        //!<    sizeof(sword)    must be 2
    typedef uint16_t        uword;        //!<    sizeof(uword)    must be 2
    typedef int32_t            sdword;        //!<    sizeof(sdword)    must be 4
    typedef uint32_t        udword;        //!<    sizeof(udword)    must be 4
    //typedef signed __int64    sqword;        //!<    sizeof(sqword)    must be 8
    //typedef unsigned __int64    uqword;        //!<    sizeof(uqword)    must be 8
    typedef float                float32;    //!<    sizeof(float32)    must be 4
    typedef double                float64;    //!<    sizeof(float64)    must be 4

    typedef udword                DynID;        //!<    Dynamic identifier
    typedef uword                KID;        //!<    Kernel ID
    typedef udword                RTYPE;        //!<    Relationship-type (!) between owners and references
    #define    INVALID_ID            0xffffffff    //!<    Invalid dword ID (counterpart of null pointers)
    #define    INVALID_KID            0xffff        //!<    Invalid Kernel ID
    #define    INVALID_NUMBER        0xDEADBEEF    //!<    Standard junk value

    // Define BOOL if needed
    #ifndef BOOL
    typedef int32_t    BOOL;                        //!<    Another boolean type.
    #endif

    //! Union of a float and a sdword
    typedef union {
        float    f;                            //!<    The float
        sdword    d;                            //!<    The integer
    }scell;

    //! Union of a float and a udword
    typedef union {
        float    f;                            //!<    The float
        udword    d;                            //!<    The integer
    }ucell;

    //! A generic couple structure
    struct Pair
    {
        udword    id1;
        udword    id2;
    };

    // Type ranges
    #define    MAX_SBYTE            0x7f                            //!<    max possible sbyte value
    #define    MIN_SBYTE            0x80                            //!<    min possible sbyte value
    #define    MAX_UBYTE            0xff                            //!<    max possible ubyte value
    #define    MIN_UBYTE            0x00                            //!<    min possible ubyte value
    #define    MAX_SWORD            0x7fff                            //!<    max possible sword value
    #define    MIN_SWORD            0x8000                            //!<    min possible sword value
    #define    MAX_UWORD            0xffff                            //!<    max possible uword value
    #define    MIN_UWORD            0x0000                            //!<    min possible uword value
    #define    MAX_SDWORD            0x7fffffff                        //!<    max possible sdword value
    #define    MIN_SDWORD            0x80000000                        //!<    min possible sdword value
    #define    MAX_UDWORD            0xffffffff                        //!<    max possible udword value
    #define    MIN_UDWORD            0x00000000                        //!<    min possible udword value
    #define    MAX_FLOAT            FLT_MAX                            //!<    max possible float value
    #define    MIN_FLOAT            (-FLT_MAX)                        //!<    min possible loat value
    #define IEEE_1_0            0x3f800000                        //!<    integer representation of 1.0
    #define IEEE_255_0            0x437f0000                        //!<    integer representation of 255.0

    #define ONE_OVER_RAND_MAX    (1.0f / float(RAND_MAX))        //!<    Inverse of the max possible value returned by rand()

    //typedef int32_t                    (__stdcall* PROC)();            //!<    A standard procedure call.
    typedef bool                (*ENUMERATION)(udword value, udword param, udword context);    //!< ICE standard enumeration call
    typedef    void**                VTABLE;                            //!<    A V-Table.

    #undef        MIN
    #undef        MAX
    #define        MIN(a, b)       ((a) < (b) ? (a) : (b))            //!<    Returns the min value between a and b
    #define        MAX(a, b)       ((a) > (b) ? (a) : (b))            //!<    Returns the max value between a and b
    #define        MAXMAX(a,b,c)   ((a) > (b) ? MAX (a,c) : MAX (b,c))

    #define        SQR(x)            ((x)*(x))                        //!<    Returns x square
    #define        CUBE(x)            ((x)*(x)*(x))                    //!<    Returns x cube

    #define        AND        &                                        //!<    ...
    #define        OR        |                                        //!<    ...
    #define        XOR        ^                                        //!<    ...

    #define        QUADRAT(x)        ((x)*(x))

#ifdef _WIN32
#   define srand48(x) srand((uint32_t) (x))
#    define srandom(x) srand((uint32_t) (x))
#    define random()   ((double) rand())
#   define drand48()  ((double) (((double) rand()) / ((double) RAND_MAX)))
#endif

#endif // __ICETYPES_H__
