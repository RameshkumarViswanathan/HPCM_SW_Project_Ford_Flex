/***********************************************************************************************************************
 *  FILE DESCRIPTION
 *  ------------------------------------------------------------------------------------------------------------------*/
/** \file
 *  \brief        OEM specific assertion defines (Ford)
 *
 *  --------------------------------------------------------------------------------------------------------------------
 *  COPYRIGHT
 *  --------------------------------------------------------------------------------------------------------------------
 *  \par Copyright
 *  \verbatim
 *  Copyright (c) 2023 by Vector Informatik GmbH.                                                  All rights reserved.
 *
 *                This software is copyright protected and proprietary to Vector Informatik GmbH.
 *                Vector Informatik GmbH grants to you only those rights as set out in the license conditions.
 *                All other rights remain with Vector Informatik GmbH.
 *  \endverbatim
 */
/**********************************************************************************************************************/

/***********************************************************************************************************************
 *  REVISION HISTORY
 *  --------------------------------------------------------------------------------------------------------------------
 *  Version    Date        Author  Change Id        Description
 *  --------------------------------------------------------------------------------------------------------------------
 *  01.00.00   2009-09-03  visci   -                Creation
 *  02.04.00   2014-10-16  visci   -                Added kFblOemAssertInvalidSecLvlIdx
 *                                                  Synchronized version with fbl_diag
 *  02.05.00   2015-02-16  visci   ESCAN00081013    No changes
 *  02.06.00   2015-05-19  vaddod  ESCAN00083057    No changes
 *  02.07.00   2015-10-22  visci   ESCAN00085448    No changes
 *                                 ESCAN00085459    No changes
 *                                 ESCAN00085637    No changes
 *  02.07.01   2015-11-12  visjop  ESCAN00086446    No changes
 *             2015-11-30  visci   ESCAN00086872    No changes
 *  02.08.00   2016-01-12  visci   ESCAN00087405    No changes
 *                                 ESCAN00087747    No changes
 *                                 ESCAN00087748    No changes
 *                                 ESCAN00087750    No changes
 *                                 ESCAN00087753    No changes
 *  02.09.00   2016-03-02  visdkl  ESCAN00088680    No changes
 *                                 ESCAN00088680    No changes
 *  02.09.01   2016-04-07  vistns  ESCAN00089238    No changes
 *  02.09.02   2016-04-27  visci   ESCAN00089381    No changes
 *  02.10.00   2016-05-02  vishrf  ESCAN00087939    No changes
 *                                 ESCAN00087940    No changes
 *                                 ESCAN00089306    No changes
 *                                 ESCAN00089677    Support transitional response handling configuration
 *                                 ESCAN00089842    No changes
 *  03.00.00   2016-07-01  visci   ESCAN00088607    No changes
 *                                 ESCAN00090374    No changes
 *  03.00.01   2017-03-13  visci   ESCAN00094120    No changes
 *  03.01.00   2017-06-05  vadcel  ESCAN00095425    No changes
 *  03.01.01   2017-09-05  visdkl  ESCAN00096537    No changes
 *  03.01.02   2017-10-30  vadjbi  ESCAN00096944    No changes
 *                                 ESCAN00097248    No changes
 *  03.02.00   2017-12-07  vadcel  ESCAN00097677    No changes
 *  03.02.01   2018-03-23  visdkl  ESCAN00098896    No changes
 *  03.03.00   2018-04-10  visdkl  ESCAN00099059    No changes
 *  03.03.01   2018-06-14  visdkl  ESCAN00099687    No changes
 *             2018-07-04  visdkl  ESCAN00099466    No changes
 *  03.03.02   2018-08-21  visci   ESCAN00100454    No changes
 *                                 ESCAN00100459    No changes (see fbl_valstruct_oem.h)
 *  03.04.00   2018-11-26  visdkl  ESCAN00100766    No changes
 *                         visrr   ESCAN00101451    No changes
 *  03.05.00   2019-02-04  viskjs  ESCAN00101971    No changes
 *  03.06.00   2019-03-23  viskjs  ESCAN00102053    No changes
 *                                 ESCAN00102061    No changes
 *                                 ESCAN00102506    No changes
 *  03.06.01   2019-05-07  viskjs  ESCAN00102940    No changes
 *  04.00.00   2019-05-27  visrie  ESCAN00103269    Added support for SecureBoot and new Bootmanager
 *  04.00.01   2019-06-19  visrie  ESCAN00103460    No changes
 *  04.01.00   2019-06-25  visdlm  ESCAN00103535    No changes
 *  04.01.01   2019-09-09  visrcn  ESCAN00103863    No changes
 *  04.01.02   2019-09-18  visrcn  ESCAN00104292    No changes
 *  04.01.03   2019-10-07  visrcn  ESCAN00104507    No changes
 *  04.01.04   2020-01-14  visjdn  ESCAN00105039    No changes
 *  04.01.05   2020-01-22  visrcn  ESCAN00105356    No changes
 *  04.01.06   2020-02-04  visrcn  ESCAN00104331    No changes
 *                                 ESCAN00105007    No changes
 *  04.01.07   2020-03-20  visrie  ESCAN00104555    No changes
 *  04.01.08   2020-04-01  visjdn  ESCAN00105201    No changes
 *  04.01.09   2020-05-05  vistmo  ESCAN00105551    No changes
 *  04.01.10   2020-06-29  visjdn  ESCAN00106253    No changes
 *  04.01.11   2020-07-07  visjdn  ESCAN00106303    No changes
 *  04.01.12   2020-09-10  vistbe  ESCAN00107348    No changes
 *  04.02.00   2020-10-01  visrie  FBL-1611         No changes
 *  04.03.00   2020-11-16  vistmo  FBL-1288         No changes
 *  04.04.00   2020-12-10  vistmo  FBL-2141         No changes
 *                         visrcn  ESCAN00107410    No changes
 *  04.05.00   2021-01-11  visjdn  FBL-2439         No changes
 *  04.05.01   2021-02-24  vishor  ESCAN00108271    No changes
 *                                 FBL-3035         No changes
 *  04.05.02   2021-04-19  vishor  ESCAN00108500    No changes
 *  04.05.03   2021-05-10  vistbe  ESCAN00109048    No changes
 *  04.06.00   2021-06-28  vistbe  FBL-3522         No changes
 *                                 ESCAN00108908    No changes
 *  04.06.01   2021-10-22  vistbe  ESCAN00110414    No changes
 *                                 ESCAN00110495    No changes
 *  04.06.02   2022-01-31  visjdn  ESCAN00110767    No changes
 *  04.06.03   2022-03-29  visrie  ESCAN00111600    No changes
 *  04.07.00   2022-07-04  vismix  FBL-5233         No changes
 *                                 ESCAN00109981    No changes
 *                                 ESCAN00106367    No changes
 *                                 ESCAN00111443    No changes
 *  04.08.00   2022-07-06  vismix  FBL-4527         No changes
 *  04.08.01   2022-07-27  visjns  ESCAN00112049    No changes
 *                                 ESCAN00112263    No changes
 *  04.09.00   2022-08-15  vistmo  ESCAN00112435    No changes
 *                                 ESCAN00112575    No changes
 *  04.09.01   2022-10-17  vismix  ESCAN00112879    No changes
 *  04.09.02   2023-01-13  vismix  ESCAN00112890    No changes
 *                                 ESCAN00113612    No changes
 *  04.10.00   2023-02-09  vistmo  ESCAN00112972    No changes
 *                                 ESCAN00113835    No changes
 *                                 ESCAN00113843    No changes
 *                                 ESCAN00113764    No changes
 *                                 FBL-6438         No changes
 *  04.10.01   2023-03-13  visjns  ESCAN00113919    No changes
 *  04.10.02   2023-05-11  vismix  ESCAN00113831    No changes
 **********************************************************************************************************************/

/***********************************************************************************************************************
 *  DEFINITION OF ASSERTION CODES (OEM)
 **********************************************************************************************************************/

/* Note: OEM assertions are only allowed in the range from 0x80-0xFF. Others are reserved. */

/* 0x80-0x9F: General FBL assertions */
#define kFblOemAssertInvalidError                     0x82u

/* 0xA0-0xBF: Internal assertions */
#define kFblOemAssertSessionIndexNotFound             0xA0u
#define kFblOemAssertIllegalParameter                 0xA1u
#define kFblOemAssertIllegalExecutionPath             0xA2u
#define kFblOemAssertInvalidSecLvlIdx                 0xA3u

/* 0xC0-0xDF: Generated data assertions */
#define kFblOemAssertPreHandlerIdxInvalid             0xC0u

/* 0xE0-0xFF: User parameter assertions */
#define kFblOemAssertParameterOutOfRange              0xE0u
#define kFblOemAssertIllegalReturnValue               0xE1u

/***********************************************************************************************************************
 *  END OF FILE: FBL_ASSERT_OEM.H
 **********************************************************************************************************************/
