 /**********************************************************************************************************************
 *  COPYRIGHT
 *  -------------------------------------------------------------------------------------------------------------------
 *  \verbatim
 *  Copyright (c) 1999 - 2016 cv cryptovision GmbH.                                                All rights reserved.
 *
 *  For modifications by Vector Informatik GmbH:
 *  Copyright (c) 2023 by Vector Informatik GmbH.                                                  All rights reserved.
 *
 *                This software is protected under intellectual property laws and proprietary to cv cryptovision GmbH
 *                and/or Vector Informatik GmbH.
 *                No right or license is granted save as expressly set out in the applicable license conditions.
 *  \endverbatim
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -----------------------------------------------------------------------------------------------------------------*/
/*!        \file  ESLib_AES192enc.c
 *        \brief  AES-192 (encryption) implementation.
 *
 *      \details Currently the actClib version is used.
 *               This file is part of the embedded systems library cvActLib/ES
 *********************************************************************************************************************/

 /**********************************************************************************************************************
 *  REVISION HISTORY
 *  -------------------------------------------------------------------------------------------------------------------
 *  Refer to the module's header file.
 *
 *  FILE VERSION
 *  -------------------------------------------------------------------------------------------------------------------
 *  Refer to module's header file.
 *********************************************************************************************************************/

#define ESLIB_AES192ENC_SOURCE

#include "ESLib_AES_common.h"

#if(VSECPRIM_AES192_ENABLED == STD_ON) /* COV_VSECPRIM_NO_SAFE_CONFIG XF */

# define VSECPRIM_START_SEC_CODE
# include "vSecPrim_MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

/****************************************************************************
 ** Global Functions
 ***************************************************************************/

/****************************************************************************
 * esl_initEncryptAES192
 ***************************************************************************/
/*!
 *
 * Internal comment removed.
 *
 *
 *
 */
VSECPRIM_FUNC(eslt_ErrorCode) esl_initEncryptAES192(VSECPRIM_P2VAR_PARA(eslt_WorkSpaceAES192) workSpace, VSECPRIM_P2CONST_PARA(eslt_Byte) key,
                                                    const eslt_BlockMode blockMode, const eslt_PaddingMode paddingMode, VSECPRIM_P2CONST_PARA(eslt_Byte) initializationVector)
{
  actU8 targetMode = actPADDING_PM_OFF;
  eslt_ErrorCode retVal = esl_AES_CommonInit(&targetMode, workSpace, ESL_MINSIZEOF_WS_AES192, key, blockMode, paddingMode); /* PRQA S 0315 */ /* MD_VSECPRIM_P2VOID_CAST */

  if (retVal == ESL_ERC_NO_ERROR)
  {
    /* Init actCLib AES192 */
    if (actOK == actAESInitEncrypt(&workSpace->wsAES, key, ESL_SIZEOF_AES192_KEY, initializationVector, targetMode, workSpace->header.watchdog))
    {
      /* Set workSpace state */
      esl_SetWorkspaceStatus(&workSpace->header, ESL_WST_ALGO_AES192);
    }
    else
    {
      retVal = ESL_ERC_PARAMETER_INVALID;
    }
  }

  return retVal;
}

/****************************************************************************
 * esl_encryptAES192
 ***************************************************************************/
/*!
 *
 * Internal comment removed.
 *
 *
 *
 */
VSECPRIM_FUNC(eslt_ErrorCode) esl_encryptAES192(VSECPRIM_P2VAR_PARA(eslt_WorkSpaceAES192) workSpace,
                                                const eslt_Length inputSize, VSECPRIM_P2CONST_PARA(eslt_Byte) input, VSECPRIM_P2VAR_PARA(eslt_Length) outputSize, VSECPRIM_P2VAR_PARA(eslt_Byte) output)
{
  eslt_ErrorCode retVal = esl_AES_CommonProcChecks(workSpace, ESL_WST_ALGO_AES192, ESL_MAXSIZEOF_WS_AES192, input, output); /* PRQA S 0315 */ /* MD_VSECPRIM_P2VOID_CAST */
  /*  Perform parameter checks */
  if (retVal != ESL_ERC_NO_ERROR)
  {
    /* retVal was already set */
  }
  else if (outputSize == NULL_PTR)
  {
    retVal = ESL_ERC_PARAMETER_INVALID;
  }
  else
  /* Update actCLib AES192 */
  {
    actRETURNCODE result;
    actLengthType enc_len = *outputSize;

    result = actAESEncrypt(&workSpace->wsAES, input, (actLengthType)inputSize, output, &enc_len, FALSE, workSpace->header.watchdog);

    if (result == actEXCEPTION_LENGTH)
    {
      retVal = ESL_ERC_OUTPUT_SIZE_TOO_SHORT;
    }
    else
    {
      *outputSize = (eslt_Length)(enc_len);
    }
  }

  return retVal;
}

/****************************************************************************
 * esl_finalizeEncryptAES192
 ***************************************************************************/
/*!
 *
 * Internal comment removed.
 *
 *
 *
 */
VSECPRIM_FUNC(eslt_ErrorCode) esl_finalizeEncryptAES192(VSECPRIM_P2VAR_PARA(eslt_WorkSpaceAES192) workSpace, VSECPRIM_P2VAR_PARA(eslt_Length) outputSize, VSECPRIM_P2VAR_PARA(eslt_Byte) output)
{
  eslt_ErrorCode retVal;
  if ((workSpace == NULL_PTR) || (outputSize == NULL_PTR) || (output == NULL_PTR))
  {
    retVal = ESL_ERC_PARAMETER_INVALID;
  }
  else if ((retVal = esl_CheckWorkSpaceHeaderAndState(&workSpace->header, ESL_MAXSIZEOF_WS_AES192, ESL_WST_ALGO_AES192)) != ESL_ERC_NO_ERROR) /* PRQA S 3326 */ /* MD_VSECPRIM_13.1 */
  {
    /* retVal was already set */
  }
  else
  /* Update actCLib AES192 */
  {
    actRETURNCODE result;
    actLengthType enc_len = *outputSize;

    result = actAESEncrypt(&workSpace->wsAES, (VSECPRIM_P2CONST_PARA(actU8)) NULL_PTR, 0, output, &enc_len, TRUE, workSpace->header.watchdog);

    if (result == actEXCEPTION_LENGTH)
    {
      retVal = ESL_ERC_OUTPUT_SIZE_TOO_SHORT;
    }
    else
    {
      *outputSize = (eslt_Length)(enc_len);
    }

    esl_ResetAndClearWorkspace(&workSpace->header, &workSpace->wsAES); /* PRQA S 0315 */ /* MD_VSECPRIM_P2VOID_CAST */
  }

  /* Reset and clear workspace */

  return retVal;
}

/****************************************************************************
 * esl_initEncryptAES192Block
 ***************************************************************************/
/*!
 *
 * Internal comment removed.
 *
 *
 *
 */
VSECPRIM_FUNC(eslt_ErrorCode) esl_initEncryptAES192Block(VSECPRIM_P2VAR_PARA(eslt_WorkSpaceAES192Block) workSpace, VSECPRIM_P2CONST_PARA(eslt_Byte) key)
{
   eslt_ErrorCode retVal = esl_AES_CommonInitChecks(workSpace, ESL_MAXSIZEOF_WS_AES192BLOCK, key); /* PRQA S 0315 */ /* MD_VSECPRIM_P2VOID_CAST */
  /* #-- Perform parameter checks */
  if (retVal == ESL_ERC_NO_ERROR)
  {
    /* Init actCLib AES192 */
    if (actOK == actAESInitEncryptBlock(&workSpace->wsAES, key, ESL_SIZEOF_AES192_KEY, workSpace->header.watchdog))
    {
      /* Set workSpace state */
      esl_SetWorkspaceStatus(&workSpace->header, ESL_WST_ALGO_AES192);
    }
    else
    {
      retVal = ESL_ERC_PARAMETER_INVALID;
    }
  }

  return retVal;
}

/****************************************************************************
 * esl_encryptAES192Block
 ***************************************************************************/
/*!
 *
 * Internal comment removed.
 *
 *
 *
 */
VSECPRIM_FUNC(eslt_ErrorCode) esl_encryptAES192Block(VSECPRIM_P2VAR_PARA(eslt_WorkSpaceAES192Block) workSpace, VSECPRIM_P2CONST_PARA(eslt_Byte) inputBlock, VSECPRIM_P2VAR_PARA(eslt_Byte) outputBlock) /* PRQA S 3673 */ /* MD_VSECPRIM_16.7 */
{
  eslt_ErrorCode retVal = esl_AES_CommonProcChecks(workSpace, ESL_WST_ALGO_AES192, ESL_MAXSIZEOF_WS_AES192BLOCK, inputBlock, outputBlock); /* PRQA S 0315 */ /* MD_VSECPRIM_P2VOID_CAST */

  if (retVal == ESL_ERC_NO_ERROR)
  {
    /* Update actCLib AES192 */
    actAESEncryptBlock(&workSpace->wsAES, inputBlock, outputBlock, workSpace->header.watchdog);
  }

  return retVal;
}

# define VSECPRIM_STOP_SEC_CODE
# include "vSecPrim_MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

#endif /* (VSECPRIM_AES192_ENABLED == STD_ON) */
/**********************************************************************************************************************
 *  END OF FILE: ESLib_AES192enc.c
 *********************************************************************************************************************/