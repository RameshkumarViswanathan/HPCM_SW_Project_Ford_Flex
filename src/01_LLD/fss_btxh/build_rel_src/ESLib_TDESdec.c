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
/*!        \file  ESLib_TDESdec.c
 *        \brief  TDES (decryption) implementation.
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

#define ESLIB_TDESDEC_SOURCE

#include "ESLib.h"
#include "ESLib_Helper.h"

/* actCLib includes */
#include "actTDES.h"

#if (VSECPRIM_TDES_ENABLED == STD_ON) /* COV_VSECPRIM_NO_SAFE_CONFIG XF */

/* PRQA S 6060 EOF */ /* MD_VSECPRIM_QM_ONLY_METRIC */
/* PRQA S 2889 EOF */ /* MD_VSECPRIM_QM_ONLY_RETURN_PATHS */
/* PRQA S 3200 EOF */ /* MD_VSECPRIM_QM_ONLY_UNUSED_FUNCTION */
/* PRQA S 0310, 3305 EOF */ /* MD_VSECPRIM_QM_ONLY_POINTER_CAST_TO_LARGER_TYPE */

# define VSECPRIM_START_SEC_CODE
# include "vSecPrim_MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

/****************************************************************************
 ** Global Functions
 ***************************************************************************/

/****************************************************************************
 * esl_initDecryptTDES
 ***************************************************************************/
/*!
 *
 * Internal comment removed.
 *
 *
 *
 */
VSECPRIM_FUNC(eslt_ErrorCode) esl_initDecryptTDES(VSECPRIM_P2VAR_PARA(eslt_WorkSpaceTDES) workSpace,
                                                  VSECPRIM_P2CONST_PARA(eslt_Byte) key, const eslt_Byte key_len,
                                                  const eslt_BlockMode blockMode, const eslt_PaddingMode paddingMode, VSECPRIM_P2CONST_PARA(eslt_Byte) initializationVector)
{
  /* Any NULLs ? */
  if ((workSpace == NULL_PTR) || (key == NULL_PTR))
  {
    return ESL_ERC_PARAMETER_INVALID;
  }

  /* Check workSpace */
  if (workSpace->header.size < ESL_MINSIZEOF_WS_TDES)
  {
    return ESL_ERC_WS_TOO_SMALL;
  }

  /* Check paddingMode */
  if (paddingMode != ESL_PM_PKCS5)
  {
    return ESL_ERC_MODE_INVALID;
  }

  /* Check key_len */
  if ((key_len != ESL_SIZEOF_2TDES_KEY) && (key_len != ESL_SIZEOF_3TDES_KEY))
  {
    return ESL_ERC_TDES_KEY_LENGTH_INVALID;
  }

  /* Init actCLib TDES */
  if (blockMode == ESL_BM_ECB)
  {
    actTDESInitDecrypt((VSECPRIM_P2VAR_PARA(actTDESSTRUCT)) workSpace->wsTDES, key, (actU8)key_len, initializationVector, actDES_ECB, workSpace->header.watchdog);
  }
  else if (blockMode == ESL_BM_CBC)
  {
    actTDESInitDecrypt((VSECPRIM_P2VAR_PARA(actTDESSTRUCT)) workSpace->wsTDES, key, (actU8)key_len, initializationVector, actDES_CBC, workSpace->header.watchdog);
  }
  else
  {
    return ESL_ERC_MODE_INVALID;
  }

  /* Set workSpace state */
  workSpace->header.status = (ESL_WST_ALGO_TDES | ESL_WST_M_RUNNING | ESL_WST_M_CRITICAL);

  return ESL_ERC_NO_ERROR;
}

/****************************************************************************
 * esl_decryptTDES
 ***************************************************************************/
/*!
 *
 * Internal comment removed.
 *
 *
 *
 */
VSECPRIM_FUNC(eslt_ErrorCode) esl_decryptTDES(VSECPRIM_P2VAR_PARA(eslt_WorkSpaceTDES) workSpace,
                                              const eslt_Length inputSize, VSECPRIM_P2CONST_PARA(eslt_Byte) input, VSECPRIM_P2VAR_PARA(eslt_Length) outputSize, VSECPRIM_P2VAR_PARA(eslt_Byte) output)
{
  actRETURNCODE result;
  actLengthType dec_len;

  /* Any NULLs ? */
  if ((workSpace == NULL_PTR) || (input == NULL_PTR) || (output == NULL_PTR))
  {
    return ESL_ERC_PARAMETER_INVALID;
  }

  /* Check workSpace */
  if ((workSpace->header.status & ESL_WST_M_ALGO) != ESL_WST_ALGO_TDES)
  {
    return ESL_ERC_WS_STATE_INVALID;
  }
  if ((workSpace->header.status & ESL_WST_M_RUNNING) == 0u)
  {
    return ESL_ERC_WS_STATE_INVALID;
  }
  if ((inputSize % ESL_SIZEOF_DES_BLOCK) == 0u)
  {
    if (workSpace->header.size < ESL_MINSIZEOF_WS_TDES)
    {
      return ESL_ERC_WS_TOO_SMALL;
    }
  }
  else
  {
    if (workSpace->header.size < ESL_MAXSIZEOF_WS_TDES)
    {
      return ESL_ERC_WS_TOO_SMALL;
    }
  }

  dec_len = *outputSize;

  /* Update actCLib TDES */
  result = actTDESDecrypt((VSECPRIM_P2VAR_PARA(actTDESSTRUCT)) workSpace->wsTDES, input, (actLengthType)inputSize, output, &dec_len, FALSE, workSpace->header.watchdog);
  if (result == actEXCEPTION_LENGTH)
  {
    return ESL_ERC_OUTPUT_SIZE_TOO_SHORT;
  }
  else
  {
    *outputSize = (eslt_Length)dec_len;
  }

  return ESL_ERC_NO_ERROR;
}

/****************************************************************************
 * esl_finalizeDecryptTDES
 ***************************************************************************/
/*!
 *
 * Internal comment removed.
 *
 *
 *
 */
VSECPRIM_FUNC(eslt_ErrorCode) esl_finalizeDecryptTDES(VSECPRIM_P2VAR_PARA(eslt_WorkSpaceTDES) workSpace, VSECPRIM_P2VAR_PARA(eslt_Length) outputSize, VSECPRIM_P2VAR_PARA(eslt_Byte) output)
{
  /* Any NULLs ? */
  if ((workSpace == NULL_PTR) || (output == NULL_PTR))
  {
    return ESL_ERC_PARAMETER_INVALID;
  }

  /* Check workSpace */
  if ((workSpace->header.status & ESL_WST_M_ALGO) != ESL_WST_ALGO_TDES)
  {
    return ESL_ERC_WS_STATE_INVALID;
  }
  if ((workSpace->header.status & ESL_WST_M_RUNNING) == 0u)
  {
    return ESL_ERC_WS_STATE_INVALID;
  }
  if (workSpace->header.size < ESL_MAXSIZEOF_WS_TDES)
  {
    return ESL_ERC_WS_TOO_SMALL;
  }

  /* Update actCLib TDES */
  {
    actRETURNCODE result;
    actLengthType dec_len = *outputSize;

    result = actTDESDecrypt((VSECPRIM_P2VAR_PARA(actTDESSTRUCT)) workSpace->wsTDES, (VSECPRIM_P2CONST_PARA(actU8)) NULL_PTR, 0u, output, &dec_len, TRUE, workSpace->header.watchdog);
    if (result == actEXCEPTION_LENGTH)
    {
      return ESL_ERC_OUTPUT_SIZE_TOO_SHORT;
    }
    else if (result == actEXCEPTION_INPUT_LENGTH)
    {
      return ESL_ERC_INPUT_INVALID; /* The total input length is not zero mod blocksize */
    }
    else if (result == actEXCEPTION_PADDING)
    {
      return ESL_ERC_DES_PADDING_INVALID;
    }
    else
    {
      *outputSize = (eslt_Length)dec_len;
    }
  }

  /* Reset and clear workspace */
  esl_ResetAndClearWorkspace(&workSpace->header, workSpace->wsTDES); /* PRQA S 0315 */ /* MD_VSECPRIM_P2VOID_CAST */

  return ESL_ERC_NO_ERROR;
}

/****************************************************************************
 * esl_initDecryptTDESBlock
 ***************************************************************************/
/*!
 *
 * Internal comment removed.
 *
 *
 *
 */
VSECPRIM_FUNC(eslt_ErrorCode) esl_initDecryptTDESBlock(VSECPRIM_P2VAR_PARA(eslt_WorkSpaceTDESBlock) workSpace, VSECPRIM_P2CONST_PARA(eslt_Byte) key, const eslt_Byte key_len)
{
  /* Any NULLs ? */
  if ((workSpace == NULL_PTR) || (key == NULL_PTR))
  {
    return ESL_ERC_PARAMETER_INVALID;
  }

  /* Check workSpace */
  if (workSpace->header.size < ESL_MAXSIZEOF_WS_TDESBLOCK)
  {
    return ESL_ERC_WS_TOO_SMALL;
  }

  /* Check key_len */
  if ((key_len != ESL_SIZEOF_2TDES_KEY) && (key_len != ESL_SIZEOF_3TDES_KEY))
  {
    return ESL_ERC_TDES_KEY_LENGTH_INVALID;
  }

  /* Init actCLib TDES */
  actTDESInitDecryptBlock((VSECPRIM_P2VAR_PARA(actTDESSTRUCT)) workSpace->wsTDESBlock, key, (actU8)key_len, workSpace->header.watchdog);

  /* Set workSpace state */
  workSpace->header.status = (ESL_WST_ALGO_TDES | ESL_WST_M_RUNNING | ESL_WST_M_CRITICAL);

  return ESL_ERC_NO_ERROR;
}

/****************************************************************************
 * esl_decryptTDESBlock
 ***************************************************************************/
/*!
 *
 * Internal comment removed.
 *
 *
 *
 */
VSECPRIM_FUNC(eslt_ErrorCode) esl_decryptTDESBlock(VSECPRIM_P2VAR_PARA(eslt_WorkSpaceTDESBlock) workSpace, VSECPRIM_P2CONST_PARA(eslt_Byte) inputBlock, VSECPRIM_P2VAR_PARA(eslt_Byte) outputBlock)
{
  /* Any NULLs ? */
  if ((workSpace == NULL_PTR) || (inputBlock == NULL_PTR) || (outputBlock == NULL_PTR))
  {
    return ESL_ERC_PARAMETER_INVALID;
  }

  /* Check workSpace */
  if ((workSpace->header.status & ESL_WST_M_ALGO) != ESL_WST_ALGO_TDES)
  {
    return ESL_ERC_WS_STATE_INVALID;
  }
  if ((workSpace->header.status & ESL_WST_M_RUNNING) == 0u)
  {
    return ESL_ERC_WS_STATE_INVALID;
  }
  if (workSpace->header.size < ESL_MAXSIZEOF_WS_TDESBLOCK)
  {
    return ESL_ERC_WS_TOO_SMALL;
  }

  /* Update actCLib TDES */
  actTDESCryptBlock((VSECPRIM_P2VAR_PARA(actTDESSTRUCT)) workSpace->wsTDESBlock, inputBlock, outputBlock, workSpace->header.watchdog);

  return ESL_ERC_NO_ERROR;
}

# define VSECPRIM_STOP_SEC_CODE
# include "vSecPrim_MemMap.h" /* PRQA S 5087 */ /* MD_MSR_MemMap */

#endif /* (VSECPRIM_TDES_ENABLED == STD_ON) */
/**********************************************************************************************************************
 *  END OF FILE: ESLib_TDESdec.c
 *********************************************************************************************************************/